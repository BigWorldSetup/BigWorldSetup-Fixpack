//Spirit of Fate

EXTEND_TOP FATESP 6
+ ~!InMyArea("P#KIVAN")
Global("P#KivanSummoned","GLOBAL",0)~ + @164 DO ~SetGlobal("P#KivanSummoned","GLOBAL",2)~ + 10
+ ~!InMyArea("P#DEHER")
Global("P#DeherianaSummoned","GLOBAL",0)~ + @165 DO ~SetGlobal("P#DeherianaSummoned","GLOBAL",2)~ + P#FSDehDead
END

APPEND FATESP

IF ~~ P#FSDehDead
SAY @166
IF ~~ THEN GOTO 6
END
END
