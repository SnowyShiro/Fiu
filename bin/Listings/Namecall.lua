--[====[Generated by CreateTests.lua]====]
return function()
	return [[Function 0 (test):
    1: local t = {test = function(i) print(i) end}
GETIMPORT R1 1 [print]
MOVE R2 R0
CALL R1 1 0
RETURN R0 0

Function 1 (??):
REMARK allocation: table template 1
    1: local t = {test = function(i) print(i) end}
DUPTABLE R0 1
DUPCLOSURE R1 K2 ['test']
SETTABLEKS R1 R0 K0 ['test']
    2: t:test()
NAMECALL R1 R0 K0 ['test']
CALL R1 1 0
    3: 
RETURN R0 0

]]
end