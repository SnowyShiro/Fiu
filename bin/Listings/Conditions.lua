--[====[Generated by CreateTests.lua]====]
return function()
	return [[Function 0 (??):
    1: local a = 5
LOADN R0 5
    2: if a then 
JUMPIFNOT R0 L0
    3: 	print("IF", a)
GETIMPORT R1 1 [print]
LOADK R2 K2 ['IF']
MOVE R3 R0
CALL R1 2 0
    5: if not a then 
L0: JUMPIF R0 L1
    6: 	print("NOTIF", a)
GETIMPORT R1 1 [print]
LOADK R2 K3 ['NOTIF']
MOVE R3 R0
CALL R1 2 0
REMARK builtin math.floor/1
    8: if a == math.floor(1) then 
L1: LOADN R2 1
FASTCALL1 12 R2 L2
GETIMPORT R1 6 [math.floor]
CALL R1 1 1
L2: JUMPIFNOTEQ R0 R1 L3
    9: 	a += 1 
ADDK R0 R0 K7 [1]
   10: 	print("EQ", a) 
GETIMPORT R1 1 [print]
LOADK R2 K8 ['EQ']
MOVE R3 R0
CALL R1 2 0
JUMP L3
REMARK builtin math.floor/1
   13: if a ~= math.floor(1) then 
L3: LOADN R2 1
FASTCALL1 12 R2 L4
GETIMPORT R1 6 [math.floor]
CALL R1 1 1
L4: JUMPIFEQ R0 R1 L5
   14: 	a += 1 
ADDK R0 R0 K7 [1]
   15: 	print("NEQ", a) 
GETIMPORT R1 1 [print]
LOADK R2 K9 ['NEQ']
MOVE R3 R0
CALL R1 2 0
REMARK builtin math.floor/1
   17: if a >= math.floor(1) then
L5: LOADN R2 1
FASTCALL1 12 R2 L6
GETIMPORT R1 6 [math.floor]
CALL R1 1 1
L6: JUMPIFNOTLE R1 R0 L7
   18:  	a += 1 
ADDK R0 R0 K7 [1]
   19:  	print("GTE", a) 
GETIMPORT R1 1 [print]
LOADK R2 K10 ['GTE']
MOVE R3 R0
CALL R1 2 0
REMARK builtin math.floor/1
   21: if a > math.floor(1) then 
L7: LOADN R2 1
FASTCALL1 12 R2 L8
GETIMPORT R1 6 [math.floor]
CALL R1 1 1
L8: JUMPIFNOTLT R1 R0 L9
   22: 	a += 1 
ADDK R0 R0 K7 [1]
   23: 	print("GT", a) 
GETIMPORT R1 1 [print]
LOADK R2 K11 ['GT']
MOVE R3 R0
CALL R1 2 0
REMARK builtin math.floor/1
   25: if a < math.floor(1) then 
L9: LOADN R2 1
FASTCALL1 12 R2 L10
GETIMPORT R1 6 [math.floor]
CALL R1 1 1
L10: JUMPIFNOTLT R0 R1 L11
   26: 	a += 1 
ADDK R0 R0 K7 [1]
   27: 	print("LT", a) 
GETIMPORT R1 1 [print]
LOADK R2 K12 ['LT']
MOVE R3 R0
CALL R1 2 0
REMARK builtin math.floor/1
   29: if a <= math.floor(1) then 
L11: LOADN R2 1
FASTCALL1 12 R2 L12
GETIMPORT R1 6 [math.floor]
CALL R1 1 1
L12: JUMPIFNOTLE R0 R1 L13
   30: 	a += 1 
ADDK R0 R0 K7 [1]
   31: 	print("LTE", a) 
GETIMPORT R1 1 [print]
LOADK R2 K13 ['LTE']
MOVE R3 R0
CALL R1 2 0
   33: 
L13: RETURN R0 0

]]
end