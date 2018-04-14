// FATE SPIRIT

EXTEND_TOP FATESP 6
+ ~!Dead("rh#Isra2") !InMyArea("rh#Isra2") CheckStatGT(Player1,12,CHR) Alignment(Player1,MASK_GOOD) Global("rh#IsraSummoned","GLOBAL",0)~ + @0 /* Bring me my lover, Isra. */ 
	DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
	Wait(2)
	CreateCreature("rh#is25",[1999.1228],1)
	SetGlobal("rh#IsraRomanceActive","GLOBAL",2)
	SetGlobal("rh#IsraSummoned","GLOBAL",1)~ GOTO 8
+ ~!Dead("rh#Isra2") !InMyArea("rh#Isra2") !Alignment(Player1,MASK_EVIL) Global("rh#IsraSummoned","GLOBAL",0)~ + @1 /* Bring me Isra, the Sunite cavalier. */ 
 	DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
	Wait(2)
	CreateCreature("rh#is25",[1999.1228],1)
	SetGlobal("rh#IsraSummoned","GLOBAL",1)~ GOTO 8
END
