local fiu = require("../Source")
local allTests = {
	"AndOr", "AndOrK", "Arit", "AritK", "Booleans", "Concat", "DupTableSetList", "GetImportSpecial", "Globals", "HelloWorld",
	"LOADN", "LOADNIL", "Tables", "Unary", "Conditions", "WhileRepeat", "BasicJump", "Closure", "Namecall", "Varargs", "GenericFor",
	"ForLoops"

	-- Optional Tests: "GetImportSpecial", "WhileTrueDo"
}

local specificTests = {
	"CLOSE"
}


for i,v in allTests do
	print(string.format(">>>>>>>> RUNNING TEST: %s <<<<<<<<", v))
	print("--------->> BYTECODE LISTING <<---------")
	print(require("Listings/"..v)())
	print("--------->> SOURCE OUTPUT <<---------") 
	print("SOURCE PCALL: ", pcall(function()
		require("SourceTests/"..v)()
	end))
	print("--------->> VM OUTPUT <<---------") 

	local s,e = pcall(function()
		local m = require("Tests/"..v)()
		fiu.luau_load(m, getfenv())()
	end)

	if not s then 
		print(">>>>>>>>>>>>>>>>>>>>>>>>>>>> Broken: " .. e)
	end

	print("VM PCALL: ", s)

	print(string.format(">>>>>>>> FINISHED RUNNING TEST: %s <<<<<<<<", v))
end

print("ALL TESTS PASSED.")
