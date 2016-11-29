EXTEND_BOTTOM FATESP 6 #4
+ ~!Dead("O#Tiax") !InMyArea("O#Tiax") Global("O#TiaxSummoned","GLOBAL",0)~ + @8
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("O#Tiax25",[1999.1228],0) 
SetGlobal("O#TiaxSummoned","GLOBAL",1)~ GOTO 8
END
