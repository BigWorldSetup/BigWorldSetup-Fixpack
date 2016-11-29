EXTEND_TOP FATESP 6 #3
+ ~!Dead("O#Coran") !InMyArea("O#Coran") Global("O#CoranSummoned","GLOBAL",0)~ + @107
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("O#Cor25",[1999.1228],0) 
SetGlobal("O#CoranSummoned","GLOBAL",1)~ GOTO 8
END
