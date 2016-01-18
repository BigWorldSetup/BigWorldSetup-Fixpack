EXTEND_TOP FATESP 6

+ ~!Dead("ADAngel") !InMyArea("ADAngel") Global("ADAngelSummoned","GLOBAL",0)~ + @0
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("ADAng25",[1999.1228],0) 
SetGlobal("ADAngelSummoned","GLOBAL",1)~ GOTO 8

+ ~!Dead("ADAngel") !InMyArea("ADAngel") Global("ADAngelSummoned","GLOBAL",0) Gender(Player1,FEMALE) CheckStatGT(Player1,11,CHR)~ + @1
DO ~SetGlobal("ADAngelRomanceActive","GLOBAL",2)
CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("ADAng25",[1999.1228],0) 
SetGlobal("ADAngelSummoned","GLOBAL",1)~ GOTO 8

END
