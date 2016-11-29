//Fate spirit: no summoning for evil PC
//Assumes PC rescued Ajantis, and also took him along.

EXTEND_TOP FATESP 6
  IF ~!Dead("C#Ajantis")
!InMyArea("C#Ajantis")
Global("C#AjantisSummoned","GLOBAL",0)
!Alignment(Player1,MASK_EVIL)~ THEN 
   REPLY @749  
    DO ~CreateVisualEffect("SPPORTAL",[1999.1218])
Wait(2)
CreateCreature("c#ajatob",[1999.1218],0)
SetGlobal("C#AjantisSummoned","GLOBAL",1)~ GOTO 8
IF ~!Dead("C#Ajantis")
!InMyArea("C#Ajantis")
Global("C#AjantisSummoned","GLOBAL",0)
Alignment(Player1,MASK_EVIL)~ THEN 
   REPLY @749  
    DO ~SetGlobal("C#AjantisSummoned","GLOBAL",3)~ + no_ajantissummon_evil
END

APPEND FATESP
IF ~~ THEN no_ajantissummon_evil
SAY @750
IF ~~ THEN + 6
END

END
