EXTEND_TOP FATESP 6 #4
  IF ~!Dead("CMAlora")
!InMyArea("CMAlora")
Global("AloraSummoned","GLOBAL",0)~ THEN
   REPLY @0
    DO ~CreateVisualEffect("SPPORTAL",[1626.1498])
Wait(2)
CreateCreature("ALORA25",[1626.1498],0)
SetGlobal("AloraSummoned","GLOBAL",1)~ GOTO 8
END
