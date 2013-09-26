BEGIN WLBRAN

IF ~NumTimesTalkedToGT(0)
    Name("Imoen2",LastTalkedToBy)
    OpenState("Cell04",FALSE)~ THEN BEGIN GetBranImoen
 SAY @1
 IF ~~ THEN EXTERN IMOEN2J ImoenPickLock
END

IF ~NumTimesTalkedToGT(0)
    Name("Minsc",LastTalkedToBy)
    OpenState("Cell04",FALSE)~ THEN BEGIN GetBranMinsc
 SAY @3
 IF ~~ THEN EXTERN MINSCJ MinscBashLock
END

IF ~NumTimesTalkedToGT(0)
    Name("Jaheira",LastTalkedToBy)
    OpenState("Cell04",FALSE)~ THEN BEGIN GetBranJaheira
 SAY @5
 IF ~~ THEN EXTERN JAHEIRAJ JaheiraCallHelp
END

IF ~NumTimesTalkedTo(0)
    OpenState("Cell04",FALSE)~ THEN BEGIN GetBranPC
 SAY @7
 IF ~Class(LastTalkedToBy,THIEF_ALL)~ THEN REPLY @8 EXIT
 IF ~CheckStatGT(LastTalkedToBy,15,STR)~ THEN REPLY @9 EXIT
 IF ~InParty("Imoen2")~ THEN REPLY @10 GOTO BranWaiting
 IF ~InParty("Minsc")~ THEN REPLY @11 GOTO BranWaiting
 IF ~~ THEN REPLY @12 GOTO BranWaiting
END

IF ~OpenState("Cell04",FALSE)~ THEN BEGIN BranWaiting
 SAY @13
 IF ~~ THEN EXIT
END

IF ~Global("BranwenJoined","GLOBAL",0)
    OpenState("Cell04",TRUE)~ THEN BEGIN GotBran
 SAY @14 = @15
 IF ~~ THEN REPLY @16 DO ~SetGlobal("BranwenJoined","GLOBAL",1)
                          JoinParty()~ EXIT
END

APPEND IMOEN2J
IF ~~ THEN BEGIN ImoenPickLock
 SAY @2
 IF ~~ THEN DO ~ClearActions("Imoen2")
                ActionOverride("Imoen2",PickLock("Cell04"))
                Unlock("Cell04")
                ActionOverride("Imoen2",OpenDoor("Cell04"))~ EXIT
END
END /* APPEND */

APPEND MINSCJ
IF ~~ THEN BEGIN MinscBashLock
 SAY @4
 IF ~~ THEN DO ~ClearActions("Minsc")
                ActionOverride("Minsc",BashDoor("Cell04"))
                Unlock("Cell04")
                ActionOverride("Minsc",OpenDoor("Cell04"))~ EXIT
END
END /* APPEND */

APPEND JAHEIRAJ
IF ~~ THEN BEGIN JaheiraCallHelp
 SAY @6
 IF ~~ THEN EXTERN WLBRAN BranWaiting
END
END /* APPEND */

BEGIN WLBRANP

IF ~Global("BranwenJoined","GLOBAL",1)~ THEN BEGIN BranwenLeave
 SAY @17
 IF ~~ THEN REPLY @18 DO ~JoinParty()~ EXIT
 IF ~~ THEN REPLY @19 DO ~EscapeArea()~ EXIT
END

BEGIN WLBRANJ

IF ~Global("PostCutSpeak","AR0700",2)
    InParty("Minsc")
    !Dead("Minsc")
    !StateCheck("Minsc",STATE_SLEEPING)~ THEN BEGIN BranPostCutMinsc
 SAY @23
 IF ~~ THEN DO ~SetGlobal("PostCutSpeak","AR0700",3)~ EXIT
END

IF ~Global("PostCutSpeak","AR0700",2)~ THEN BEGIN BranPostCutOther
 SAY @24
 IF ~~ THEN DO ~SetGlobal("PostCutSpeak","AR0700",3)~ EXIT
END

IF ~Global("PostCutSpeak","AR0700",1)~ THEN BEGIN BranPostCutAlone
 SAY @25
 IF ~~ THEN DO ~SetGlobal("PostCutSpeak","AR0700",3)~ EXIT
END

INTERJECT ILYICH 0 BranwenIlyich
 == WLBRANJ
  IF ~InParty("WLBRAN")
      !Dead("WLBRAN")
      !StateCheck("WLBRAN",STATE_HELPLESS)~ THEN @20
END ILYICH 3

CHAIN
 IF WEIGHT #-1 ~Name("WLBRAN",LastTalkedToBy)
                !IsValidForPartyDialog(Protagonist)
                !IsValidForPartyDialog("Imoen2")~ THEN AATAQAH BranwenAataqah #38795 = #38797 = #11460
 == WLBRANJ #11467
 == AATAQAH #11476
 == WLBRANJ #11499
 == AATAQAH #11506
 == WLBRANJ #11507
 == AATAQAH #38800 = #11516
 == WLBRANJ #11519
 == AATAQAH #11518 = #19322 = #19323 = #11521 = #11523
 == WLBRANJ @21
 == AATAQAH #11502 = @22 DO  ~AddExperienceParty(4000)
                              ReallyForceSpell([PC],GENIE_LIMITED_WISH_HEAL_ALL)
                              PlaySound("EFF_M23C")
                              CreateVisualEffect("SPROTECT",[1899.2627])
                              SmallWait(10)
                              CreateVisualEffect("SPDISPMA",[1899.2627])
                              CreateCreature("IOGREMAG",[1899.2627],0)
                              SetGlobal("AataqahFight","AR0602",1)
                              CreateVisualEffectObject("SPCLOUD2",Myself)
                              CreateVisualEffectObject("SPFLESHS",Myself)
                              PlaySound("EFF_M38")
                              SmallWait(10)
                              DestroySelf()~
EXIT