////////
//
// Fate spirit stuff
//
////////

REPLACE_TRIGGER_TEXT fatesp ~!Dead("J#Kelsey")
!InMyArea("J#Kelsey")
Global("J#KelseySummoned","GLOBAL",0)~ ~False()~

EXTEND_TOP FATESP 6 #9
  IF ~!Dead("J#Kelsey")
!InMyArea("J#Kelsey")
Global("J#KelseySummoned","GLOBAL",0)
Gender(Player1,FEMALE)
!Race(Player1,HALFORC)
!Race(Player1,GNOME)
!Race(Player1,DWARF)
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN
   REPLY @6000 // ~Bring me my lover, Kelsey.~
    DO ~SetGlobal("J#KelseyRomanceActive","GLOBAL",2)
CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
CreateCreature("J#Klsy25",[1999.1228],0)
SetGlobal("J#KelseySummoned","GLOBAL",1)~ GOTO 8
END

EXTEND_BOTTOM FATESP 6 #9
  IF ~!Dead("J#Kelsey")
!InMyArea("J#Kelsey")
Global("J#KelseySummoned","GLOBAL",0)~ THEN
   REPLY @6001 // ~Bring me Kelsey, the human sorceror.~
    DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
CreateCreature("J#Klsy25",[1999.1228],0)
SetGlobal("J#KelseySummoned","GLOBAL",1)~ GOTO 8
END

////////
//
// End of Fate Spirit stuff
//
////////