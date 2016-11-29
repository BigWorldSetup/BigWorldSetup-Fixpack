EXTEND_BOTTOM FATESP 6 #4
IF ~ !Dead("SkieDV") !InMyArea("SkieDV") Global("SkieSummonedTB","GLOBAL",0) ~ THEN REPLY @132 /*  Sprowadź tutaj Skie, tą wiecznie marudzącą złodziejkę.  */ DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("1xSkie3",[1999.1228],0) 
SetGlobal("SkieSummonedTB","GLOBAL",1) ~ GOTO 8
END
