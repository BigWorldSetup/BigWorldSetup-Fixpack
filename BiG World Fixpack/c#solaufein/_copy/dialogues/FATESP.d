//Fate spirit:
//Assumes PC rescued Solaufein from the drider cocoons

EXTEND_TOP FATESP 6
  IF ~!Dead("C#Solaufein")
!InMyArea("C#Solaufein")
Global("C#SolaufeinSummoned","GLOBAL",0)~ THEN 
   REPLY @1328  
    DO ~CreateVisualEffect("SPPORTAL",[1999.1218])
Wait(2)
CreateCreature("c#soltob",[1999.1218],0)
SetGlobal("C#SolaufeinSummoned","GLOBAL",1)~ GOTO 8
END
