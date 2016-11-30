EXTEND_BOTTOM FATESP 6 #4
IF ~ !Dead("L#Fou") !InMyArea("L#Fou") Global("L#FouSummonedToB","GLOBAL",0)~ 
THEN REPLY @0 /* Bring me Foundling, the human Shadow Adept. */ DO ~CreateVisualEffect("SPPORTAL",[1909.1228])
Wait(2) 
CreateCreature("L#Fou25",[1909.1228],0) 
SetGlobal("L#FouSummonedToB","GLOBAL",1)~ GOTO 8
END
