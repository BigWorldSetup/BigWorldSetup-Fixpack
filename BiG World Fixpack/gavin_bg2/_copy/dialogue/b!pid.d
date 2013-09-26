
// b!pid 
APPEND ~B!GavJ~ 

IF ~Global("B!GavTalk","GLOBAL",19)~ THEN BEGIN pissy
SAY ~Leave me alone.~ [bgav171] 
IF ~~ THEN EXIT 
END 

IF ~Global("B!GavPissed","GLOBAL",1)~ THEN BEGIN pissy2
SAY ~Do not speak to me.~ [bgav172] 
IF ~~ THEN EXIT 
END 

IF ~IsGabber("c-aran")~ THEN BEGIN aran_easteregg 
SAY ~Hey! Watch where you're putting that finger, lad!~ [bg_blank] 
IF ~~ THEN EXIT 
END 
END 

CHAIN
IF ~IsGabber("Aerie")~ THEN ~B!GavJ~ aer_talk 
~Yes, Aerie? Is there anything you need?~ [BGAV_22]
== AERIEJ ~I think <CHARNAME> wanted to talk to you.~ 
EXTERN ~B!GavJ~ pid1 

CHAIN
IF ~IsGabber("Anomen")~ THEN ~B!GavJ~ ano_talk 
~You wanted something?~ [BGAV_22]
== ANOMENJ ~<CHARNAME> might, perhaps.~ 
EXTERN ~B!GavJ~ pid1 

CHAIN
IF ~IsGabber("Cernd")~ THEN ~B!GavJ~ cer_talk 
~Was there something you needed?~ [BGAV_22]
== CERNDJ ~Not I, though perhaps <CHARNAME> wanted to talk to you.~ 
EXTERN ~B!GavJ~ pid1 

CHAIN
IF ~IsGabber("Edwin")~ THEN ~B!GavJ~ edw_talk 
~What do YOU want?~ [BGAV_22]
== EDWINJ ~Nothing at all, my good man, though our leader might. (As if the nigh-omnipotent Edwin Odesseiron needed the assistance of that baboon. Unthinkable!)~ 
EXTERN ~B!GavJ~ pid1 

CHAIN
IF ~IsGabber("HaerDalis")~ THEN ~B!GavJ~ hae_talk 
~What can I do for you?~ [BGAV_22]
== HAERDAJ ~Nothing, my long-snouted hound, though perhaps <CHARNAME> desires a word.~ 
EXTERN ~B!GavJ~ pid1 

CHAIN
IF ~IsGabber("Imoen2")~ THEN ~B!GavJ~ imo_talk 
~Yes, Imoen?~ [BGAV_22]
== IMOEN2J ~I think <CHARNAME> wants to talk to you.~ 
EXTERN ~B!GavJ~ pid1 

CHAIN
IF ~IsGabber("Jaheira")~ THEN ~B!GavJ~ jah_talk 
~Yes?~ [BGAV_22]
== JAHEIRAJ ~I have nothing to say to you, though <CHARNAME> might.~ 
EXTERN ~B!GavJ~ pid1 

CHAIN
IF ~IsGabber("Jan")~ THEN ~B!GavJ~ jan_talk 
~You wanted something?~ [BGAV_22]
== JANJ ~Now that you mention it, some turnip tea would really hit the spot, but I don't suppose you've got any. In the meantime, I think <CHARNAME> wants to talk to you.~ 
EXTERN ~B!GavJ~ pid1 

CHAIN
IF ~IsGabber("Keldorn")~ THEN ~B!GavJ~ kel_talk 
~What can I do for you, Keldorn?~ [BGAV_22]
== KELDORJ ~I think <CHARNAME> wants a word with you.~ 
EXTERN ~B!GavJ~ pid1 

CHAIN
IF ~IsGabber("Korgan")~ THEN ~B!GavJ~ kor_talk 
~You wanted something?~ [BGAV_22]
== KORGANJ ~Not I. <CHARNAME>, mebbe.~ 
EXTERN ~B!GavJ~ pid1 

CHAIN
IF ~IsGabber("Mazzy")~ THEN ~B!GavJ~ maz_talk 
~Yes, Mazzy?~ [BGAV_22]
== MAZZYJ ~<CHARNAME> looks like <PRO_HESHE> wants a word with you.~ 
EXTERN ~B!GavJ~ pid1 

CHAIN
IF ~IsGabber("Minsc")~ THEN ~B!GavJ~ min_talk 
~Hello, Minsc. Was there something you wanted?~ [BGAV_22]
== MINSCJ ~Boo wonders if you have any more of those nice little berries he enjoys, but I think he's had enough. Oh, and I think <CHARNAME> wants to talk to you.~ 
EXTERN ~B!GavJ~ pid1 

CHAIN
IF ~IsGabber("Nalia")~ THEN ~B!GavJ~ nal_talk 
~Yes, Nalia? Is there anything you need?~ [BGAV_22]
== NALIAJ ~I think <CHARNAME> wanted to talk to you.~ 
EXTERN ~B!GavJ~ pid1 

CHAIN
IF ~IsGabber("Valygar")~ THEN ~B!GavJ~ val_talk 
~You wanted something?~ [BGAV_22]
== VALYGARJ ~<CHARNAME> might.~ 
EXTERN ~B!GavJ~ pid1 

CHAIN
IF ~IsGabber("Viconia")~ THEN ~B!GavJ~ vic_talk 
~What is it, Viconia?~ [BGAV_22]
== VICONIJ ~<CHARNAME> wanted to talk to you.~ 
EXTERN ~B!GavJ~ pid1 

CHAIN
IF ~IsGabber("Yoshimo")~ THEN ~B!GavJ~ yos_talk 
~You wanted something, Yoshimo?~ [BGAV_22]
== YOSHJ ~Unless I am mistaken, <CHARNAME> desires a word with you.~ 
EXTERN ~B!GavJ~ pid1 

CHAIN 
IF ~IsGabber(Player2) 
      !Name("Aerie",Player2)
      !Name("Anomen",Player2)
      !Name("Cernd",Player2)
      !Name("Edwin",Player2)
      !Name("HaerDalis",Player2)
      !Name("Imoen",Player2)
      !Name("Jaheira",Player2)
      !Name("Jan",Player2)
      !Name("Keldorn",Player2)
      !Name("Korgan",Player2)
      !Name("Mazzy",Player2)
      !Name("Minsc",Player2)
      !Name("Nalia",Player2)
      !Name("Valygar",Player2)
      !Name("Viconia",Player2)
      !Name("Yoshimo",Player2)~ THEN ~B!GavJ~ p2 
~You wanted something?~ 
== MULTIJ ~Not I. Maybe <CHARNAME>?~ 
EXTERN ~B!GavJ~ pid1 

CHAIN 
IF ~IsGabber(Player3) 
      !Name("Aerie",Player3)
      !Name("Anomen",Player3)
      !Name("Cernd",Player3)
      !Name("Edwin",Player3)
      !Name("HaerDalis",Player3)
      !Name("Imoen",Player3)
      !Name("Jaheira",Player3)
      !Name("Jan",Player3)
      !Name("Keldorn",Player3)
      !Name("Korgan",Player3)
      !Name("Mazzy",Player3)
      !Name("Minsc",Player3)
      !Name("Nalia",Player3)
      !Name("Valygar",Player3)
      !Name("Viconia",Player3)
      !Name("Yoshimo",Player3)~ THEN ~B!GavJ~ p3 
~You wanted something?~ 
== MULTIJ ~Not I. Maybe <CHARNAME>?~ 
EXTERN ~B!GavJ~ pid1 

CHAIN 
IF ~IsGabber(Player4) 
      !Name("Aerie",Player4)
      !Name("Anomen",Player4)
      !Name("Cernd",Player4)
      !Name("Edwin",Player4)
      !Name("HaerDalis",Player4)
      !Name("Imoen",Player4)
      !Name("Jaheira",Player4)
      !Name("Jan",Player4)
      !Name("Keldorn",Player4)
      !Name("Korgan",Player4)
      !Name("Mazzy",Player4)
      !Name("Minsc",Player4)
      !Name("Nalia",Player4)
      !Name("Valygar",Player4)
      !Name("Viconia",Player4)
      !Name("Yoshimo",Player4)~ THEN ~B!GavJ~ p4 
~You wanted something?~ 
== MULTIJ ~Not I. Maybe <CHARNAME>?~ 
EXTERN ~B!GavJ~ pid1 

CHAIN 
IF ~IsGabber(Player5) 
      !Name("Aerie",Player5)
      !Name("Anomen",Player5)
      !Name("Cernd",Player5)
      !Name("Edwin",Player5)
      !Name("HaerDalis",Player5)
      !Name("Imoen",Player5)
      !Name("Jaheira",Player5)
      !Name("Jan",Player5)
      !Name("Keldorn",Player5)
      !Name("Korgan",Player5)
      !Name("Mazzy",Player5)
      !Name("Minsc",Player5)
      !Name("Nalia",Player5)
      !Name("Valygar",Player5)
      !Name("Viconia",Player5)
      !Name("Yoshimo",Player5)~ THEN ~B!GavJ~ p5
~You wanted something?~ 
== MULTIJ ~Not I. Maybe <CHARNAME>?~ 
EXTERN ~B!GavJ~ pid1 

CHAIN 
IF ~IsGabber(Player6) 
      !Name("Aerie",Player6)
      !Name("Anomen",Player6)
      !Name("Cernd",Player6)
      !Name("Edwin",Player6)
      !Name("HaerDalis",Player6)
      !Name("Imoen",Player6)
      !Name("Jaheira",Player6)
      !Name("Jan",Player6)
      !Name("Keldorn",Player6)
      !Name("Korgan",Player6)
      !Name("Mazzy",Player6)
      !Name("Minsc",Player6)
      !Name("Nalia",Player6)
      !Name("Valygar",Player6)
      !Name("Viconia",Player6)
      !Name("Yoshimo",Player6)~ THEN ~B!GavJ~ p6
~You wanted something?~ 
== MULTIJ ~Not I. Maybe <CHARNAME>?~ 
EXTERN ~B!GavJ~ pid1 

APPEND ~B!GavJ~ 

IF ~!Global("B!GavPissed","GLOBAL",1)~ THEN pid1 
SAY ~Yes?~  [BGAV_22] 
+ ~Global("B!GavRA","GLOBAL",3)~ + ~Gavin, I'm sorry about our misunderstanding.~ + Restart0 
+ ~!Global("B!GavRA","GLOBAL",3) !Global("B!GavRA","GLOBAL",0)~ + ~Can we talk about something personal?~ + Talk0 
+ ~!Global("B!GavRA","GLOBAL",0) 
      !Global("B!GavRA","GLOBAL",3)~ + ~(You flirt with Gavin.)~ + flirt 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~If I were to flirt with you in public, would you be offended?~ + flirt_ra1l 
+ ~Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~If I were to flirt with you in public, would you be offended?~ + flirt_ra1m 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~If I were to flirt with you in public, would you be offended?~ + flirt_ra2 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~If I were to flirt with you in public, would you be offended?~ + flirt_ra4 
++ ~I'd like to know something.~ + gen_talk0 
++ ~I wanted to talk to you about healing.~ + gen_heal 
++ ~I'd like to talk with you about a matter of communication.~ + gen_interject 
++ ~Your voice sounds strange.~ + StringFix 
+ ~OR(2) Global("B!GavRA","GLOBAL",1) Global("B!GavRA","GLOBAL",2) 
    !Global("Chapter","GLOBAL",4) 
    !Global("Chapter","GLOBAL",5) 
    !GlobalLT("B!GavMT","GLOBAL",6) 
    !AreaCheck("AR0087") 
    !AreaCheck("AR0410") 
    !AreaCheck("AR0411") 
    !AreaCheck("AR0412") 
    !AreaCheck("AR0413") 
    !AreaCheck("AR0414") 
    !AreaCheck("AR0418") 
    !AreaCheck("AR0419") 
    !AreaCheck("AR0420") 
    !AreaCheck("AR0516") 
    !AreaCheck("AR0517") 
    !AreaCheck("AR0518") 
    !AreaCheck("AR0519") 
    !AreaCheck("AR0520") 
    !AreaCheck("AR0521") 
    !AreaCheck("AR0600") 
    !AreaCheck("AR0604") 
    !AreaCheck("AR0605") 
    !AreaCheck("AR0606") 
    !AreaCheck("AR1008") 
    !AreaCheck("AR2500") 
    !AreaCheck("AR2601") 
    !AreaCheck("AR4000")~ + ~I think you should leave the group.~ DO ~SetGlobal("B!GavRomBreak","GLOBAL",1) 
      SetGlobal("B!GavRA","GLOBAL",3) 
      IncrementGlobal("B!GavLove","GLOBAL",-1)~ + Leave 
+ ~OR(2) Global("B!GavRA","GLOBAL",0) Global("B!GavRA","GLOBAL",3) 
    !Global("Chapter","GLOBAL",4) 
    !Global("Chapter","GLOBAL",5) 
    !GlobalLT("B!GavMT","GLOBAL",6) 
    !AreaCheck("AR0087") 
    !AreaCheck("AR0410") 
    !AreaCheck("AR0411") 
    !AreaCheck("AR0412") 
    !AreaCheck("AR0413") 
    !AreaCheck("AR0414") 
    !AreaCheck("AR0418") 
    !AreaCheck("AR0419") 
    !AreaCheck("AR0420") 
    !AreaCheck("AR0516") 
    !AreaCheck("AR0517") 
    !AreaCheck("AR0518") 
    !AreaCheck("AR0519") 
    !AreaCheck("AR0520") 
    !AreaCheck("AR0521") 
    !AreaCheck("AR0600") 
    !AreaCheck("AR0604") 
    !AreaCheck("AR0605") 
    !AreaCheck("AR0606") 
    !AreaCheck("AR1008") 
    !AreaCheck("AR2500") 
    !AreaCheck("AR2601") 
    !AreaCheck("AR4000")~ + ~I think you should leave the group.~ + Leave 
+ ~Global("B!GavRA","GLOBAL",4) 
    !Global("Chapter","GLOBAL",4) 
    !Global("Chapter","GLOBAL",5) 
    !GlobalLT("B!GavMT","GLOBAL",6) 
    !AreaCheck("AR0087") 
    !AreaCheck("AR0410") 
    !AreaCheck("AR0411") 
    !AreaCheck("AR0412") 
    !AreaCheck("AR0413") 
    !AreaCheck("AR0414") 
    !AreaCheck("AR0418") 
    !AreaCheck("AR0419") 
    !AreaCheck("AR0420") 
    !AreaCheck("AR0516") 
    !AreaCheck("AR0517") 
    !AreaCheck("AR0518") 
    !AreaCheck("AR0519") 
    !AreaCheck("AR0520") 
    !AreaCheck("AR0521") 
    !AreaCheck("AR0600") 
    !AreaCheck("AR0604") 
    !AreaCheck("AR0605") 
    !AreaCheck("AR0606") 
    !AreaCheck("AR1008") 
    !AreaCheck("AR2500") 
    !AreaCheck("AR2601") 
    !AreaCheck("AR4000")~ + ~I think you should leave the group.~ DO ~SetGlobal("B!GavRomBreak","GLOBAL",2) 
      SetGlobal("B!GavRA","GLOBAL",3) 
      IncrementGlobal("B!GavLove","GLOBAL",-1)~ + Leave 
++ ~There was something I wanted to say to you, but I don't remember what it was.~ + ForgotQuestion 
END 

IF ~~ ForgotQuestion
SAY ~I'm sure you'll remember later.~ 
IF ~~ THEN EXIT 
END 

IF ~~ pid2 
SAY ~Was there anything else you wanted to talk about?~ 
+ ~Global("B!GavRA","GLOBAL",3)~ + ~Gavin, I'm sorry about our misunderstanding.~ + Restart0 
+ ~!Global("B!GavRA","GLOBAL",3) !Global("B!GavRA","GLOBAL",0)~ + ~Can we talk about something personal?~ + Talk0 
+ ~!Global("B!GavRA","GLOBAL",0) 
      !Global("B!GavRA","GLOBAL",3)~ + ~(You flirt with Gavin.)~ + flirt 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~If I were to flirt with you in public, would you be offended?~ + flirt_ra1l 
+ ~Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~If I were to flirt with you in public, would you be offended?~ + flirt_ra1m 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~If I were to flirt with you in public, would you be offended?~ + flirt_ra2 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~If I were to flirt with you in public, would you be offended?~ + flirt_ra4 
++ ~I'd like to know something.~ + gen_talk0 
++ ~I wanted to talk to you about healing.~ + gen_heal 
++ ~I'd like to talk with you about a matter of communication.~ + gen_interject 
++ ~Your voice sounds strange.~ + StringFix 
+ ~OR(2) Global("B!GavRA","GLOBAL",1) Global("B!GavRA","GLOBAL",2) 
    !Global("Chapter","GLOBAL",4) 
    !Global("Chapter","GLOBAL",5) 
    !GlobalLT("B!GavMT","GLOBAL",6) 
    !AreaCheck("AR0087") 
    !AreaCheck("AR0410") 
    !AreaCheck("AR0411") 
    !AreaCheck("AR0412") 
    !AreaCheck("AR0413") 
    !AreaCheck("AR0414") 
    !AreaCheck("AR0418") 
    !AreaCheck("AR0419") 
    !AreaCheck("AR0420") 
    !AreaCheck("AR0516") 
    !AreaCheck("AR0517") 
    !AreaCheck("AR0518") 
    !AreaCheck("AR0519") 
    !AreaCheck("AR0520") 
    !AreaCheck("AR0521") 
    !AreaCheck("AR0600") 
    !AreaCheck("AR0604") 
    !AreaCheck("AR0605") 
    !AreaCheck("AR0606") 
    !AreaCheck("AR1008") 
    !AreaCheck("AR2500") 
    !AreaCheck("AR2601") 
    !AreaCheck("AR4000")~ + ~I think you should leave the group.~ DO ~SetGlobal("B!GavRomBreak","GLOBAL",1) 
      SetGlobal("B!GavRA","GLOBAL",3) 
      IncrementGlobal("B!GavLove","GLOBAL",-1)~ + Leave 
+ ~OR(2) Global("B!GavRA","GLOBAL",0) Global("B!GavRA","GLOBAL",3) 
    !Global("Chapter","GLOBAL",4) 
    !Global("Chapter","GLOBAL",5) 
    !GlobalLT("B!GavMT","GLOBAL",6) 
    !AreaCheck("AR0087") 
    !AreaCheck("AR0410") 
    !AreaCheck("AR0411") 
    !AreaCheck("AR0412") 
    !AreaCheck("AR0413") 
    !AreaCheck("AR0414") 
    !AreaCheck("AR0418") 
    !AreaCheck("AR0419") 
    !AreaCheck("AR0420") 
    !AreaCheck("AR0516") 
    !AreaCheck("AR0517") 
    !AreaCheck("AR0518") 
    !AreaCheck("AR0519") 
    !AreaCheck("AR0520") 
    !AreaCheck("AR0521") 
    !AreaCheck("AR0600") 
    !AreaCheck("AR0604") 
    !AreaCheck("AR0605") 
    !AreaCheck("AR0606") 
    !AreaCheck("AR1008") 
    !AreaCheck("AR2500") 
    !AreaCheck("AR2601") 
    !AreaCheck("AR4000")~ + ~I think you should leave the group.~ + Leave 
+ ~Global("B!GavRA","GLOBAL",4) 
    !Global("Chapter","GLOBAL",4) 
    !Global("Chapter","GLOBAL",5) 
    !GlobalLT("B!GavMT","GLOBAL",6) 
    !AreaCheck("AR0087") 
    !AreaCheck("AR0410") 
    !AreaCheck("AR0411") 
    !AreaCheck("AR0412") 
    !AreaCheck("AR0413") 
    !AreaCheck("AR0414") 
    !AreaCheck("AR0418") 
    !AreaCheck("AR0419") 
    !AreaCheck("AR0420") 
    !AreaCheck("AR0516") 
    !AreaCheck("AR0517") 
    !AreaCheck("AR0518") 
    !AreaCheck("AR0519") 
    !AreaCheck("AR0520") 
    !AreaCheck("AR0521") 
    !AreaCheck("AR0600") 
    !AreaCheck("AR0604") 
    !AreaCheck("AR0605") 
    !AreaCheck("AR0606") 
    !AreaCheck("AR1008") 
    !AreaCheck("AR2500") 
    !AreaCheck("AR2601") 
    !AreaCheck("AR4000")~ + ~I think you should leave the group.~ DO ~SetGlobal("B!GavRomBreak","GLOBAL",2) 
      SetGlobal("B!GavRA","GLOBAL",3) 
      IncrementGlobal("B!GavLove","GLOBAL",-1)~ + Leave 
++ ~There's nothing else I wanted to say right now.~ EXIT  
END 

IF ~~ flirt_ra1l 
SAY ~You'd want to... flirt with me? Why?~ 
= ~Ahem. That probably wasn't the most intelligent thing I've ever said. What I meant was that I would probably welcome the attention, but I... um... well, I blush easily. Let's just leave it at that.~ 
IF ~~ THEN + pid2 
END 

IF ~~ flirt_ra1m 
SAY ~I'd be flattered... but I get embarrassed easily. I mean, it isn't really something I can hide, as red as I get.~ 
IF ~~ THEN + pid2 
END 

IF ~~ flirt_ra2 
SAY ~You know I love it, dear heart.~ 
IF ~~ THEN + pid2 
END 

IF ~~ flirt_ra4 
SAY ~If you like... and if you're prepared to deal with the consequences.~ 
IF ~~ THEN + pid2 
END 

IF ~~ gen_interject 
SAY ~Oh?~ 
+ ~Global("B!GavHush","GLOBAL",0)~ + ~Would you mind being quiet for a while? I need to concentrate.~ + Hush 
+ ~Global("B!GavHush","GLOBAL",1)~ + ~I haven't heard much from you lately. I know I said to be quiet, but things are calmer now.~ + NoHush 
+ ~Global("B!GavLessInterject","GLOBAL",0)~ + ~Gavin, I respect your opinion and I value your company, but I'd appreciate it if you'd let me do the talking when we meet new people.~ + LessInterject 
+ ~Global("B!GavLessInterject","GLOBAL",0)~ + ~You really do talk too much. When I want you to state your opinion to every beggar, sailor, or flower-seller we come across, I'll say so.~ + ShutUp 
+ ~Global("B!GavLessInterject","GLOBAL",1) !Global("B!GavHush","GLOBAL",1)~ + ~You know, it's all right if you speak your mind, every once in a while.~ + SpeakUp 
++ ~Don't change anything.~ + pid2 
END 

IF ~~ gen_heal 
SAY ~Who needs it?~ 
+ ~Global("B!GavHealInstalled","LOCALS",1) 
      Global("B!GavNoHeal","GLOBAL",0)~ + ~Gavin, I appreciate that you want to patch me up when I'm hurt, but I'd rather have you wait to heal me until I ask for it.~ DO ~SetGlobal("B!GavNoHeal","GLOBAL",1)~ + HealPrefs 
+ ~Global("B!GavHealInstalled","LOCALS",1) 
      Global("B!GavNoHeal","GLOBAL",1)~ + ~I'm getting pretty banged up. You can go back to healing me whenever you think I need it.~ DO ~SetGlobal("B!GavNoHeal","GLOBAL",0)~ + HealPrefs  
+ ~HPPercentLT(Player1,75) HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ + ~I need healing.~ + Heal1a 
+ ~HPPercentLT(Player1,75) HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS) !HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ + ~I need healing.~ + Heal1b 
+ ~HPPercentLT(Player1,75) HaveSpell(CLERIC_CURE_LIGHT_WOUNDS) !HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS) !HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ + ~I need healing.~ + Heal1c 
+ ~HPPercentLT(Player2,75) HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ + ~<PLAYER2> needs healing.~ + Heal2a 
+ ~HPPercentLT(Player2,75) HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS) !HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ + ~<PLAYER2> needs healing.~ + Heal2b 
+ ~HPPercentLT(Player2,75) HaveSpell(CLERIC_CURE_LIGHT_WOUNDS) !HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS) !HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ + ~<PLAYER2> needs healing.~ + Heal2c 
+ ~HPPercentLT(Player3,75) HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ + ~<PLAYER3> needs healing.~ + Heal3a 
+ ~HPPercentLT(Player3,75) HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS) !HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ + ~<PLAYER3> needs healing.~ + Heal3b 
+ ~HPPercentLT(Player3,75) HaveSpell(CLERIC_CURE_LIGHT_WOUNDS) !HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS) !HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ + ~<PLAYER3> needs healing.~ + Heal3c 
+ ~HPPercentLT(Player4,75) HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ + ~<PLAYER4> needs healing.~ + Heal4a 
+ ~HPPercentLT(Player4,75) HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS) !HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ + ~<PLAYER4> needs healing.~ + Heal4b 
+ ~HPPercentLT(Player4,75) HaveSpell(CLERIC_CURE_LIGHT_WOUNDS) !HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS) !HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ + ~<PLAYER4> needs healing.~ + Heal4c 
+ ~HPPercentLT(Player5,75) HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ + ~<PLAYER5> needs healing.~ + Heal5a 
+ ~HPPercentLT(Player5,75) HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS) !HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ + ~<PLAYER5> needs healing.~ + Heal5b 
+ ~HPPercentLT(Player5,75) HaveSpell(CLERIC_CURE_LIGHT_WOUNDS) !HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS) !HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ + ~<PLAYER5> needs healing.~ + Heal5c 
+ ~HPPercentLT(Player6,75) HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ + ~<PLAYER6> needs healing.~ + Heal6a 
+ ~HPPercentLT(Player6,75) HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS) !HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ + ~<PLAYER6> needs healing.~ + Heal6b 
+ ~HPPercentLT(Player6,75) HaveSpell(CLERIC_CURE_LIGHT_WOUNDS) !HaveSpell(CLERIC_CURE_SERIOUS_WOUNDS) !HaveSpell(CLERIC_CURE_CRITICAL_WOUNDS)~ + ~<PLAYER6> needs healing.~ + Heal6c 
++ ~No one needs healing. Never mind.~ + pid2 
END 

IF ~~ gen_talk0 
SAY ~Of course. What would you like to talk about?~ 
+ ~Alignment(Player1,LAWFUL_EVIL) GlobalGT("B!GavChange","GLOBAL",2)~ + ~I've been thinking about my life, and I think I've become a better person. I'm ready to make whatever changes I need to make to have this continue.~ + le_redeem
+ ~Alignment(Player1,NEUTRAL_EVIL) GlobalGT("B!GavChange","GLOBAL",2)~ + ~I've been thinking about my life, and I think I've become a better person. I'm ready to make whatever changes I need to make to have this continue.~ + ne_redeem
+ ~Alignment(Player1,CHAOTIC_EVIL) GlobalGT("B!GavChange","GLOBAL",2)~ + ~I've been thinking about my life, and I think I've become a better person. I'm ready to make whatever changes I need to make to have this continue.~ + ce_redeem
+ ~ReputationGT(Player1,17) GlobalLT("B!GavOffend","GLOBAL",3)~ + ~What do you think of my leadership?~ + leader1 
+ ~ReputationGT(Player1,17) !GlobalLT("B!GavOffend","GLOBAL",3)~ + ~What do you think of my leadership?~ + leader2 
+ ~ReputationGT(Player1,12) ReputationLT(Player1,18) GlobalLT("B!GavOffend","GLOBAL",3)~ + ~What do you think of my leadership?~ + leader3 
+ ~ReputationGT(Player1,12) ReputationLT(Player1,18) !GlobalLT("B!GavOffend","GLOBAL",3)~ + ~What do you think of my leadership?~ + leader4 
+ ~ReputationGT(Player1,8) ReputationLT(Player1,13) GlobalLT("B!GavOffend","GLOBAL",3)~ + ~What do you think of my leadership?~ + leader5 
+ ~ReputationGT(Player1,8) ReputationLT(Player1,13) !GlobalLT("B!GavOffend","GLOBAL",3)~ + ~What do you think of my leadership?~ + leader6 
+ ~ReputationGT(Player1,5) ReputationLT(Player1,9) GlobalLT("B!GavOffend","GLOBAL",3)~ + ~What do you think of my leadership?~ + leader7 
+ ~ReputationGT(Player1,5) ReputationLT(Player1,9) !GlobalLT("B!GavOffend","GLOBAL",3)~ + ~What do you think of my leadership?~ + leader8 
+ ~ReputationLT(Player1,6) GlobalLT("B!GavOffend","GLOBAL",3)~ + ~What do you think of my leadership?~ + leader9 
+ ~ReputationLT(Player1,6) !GlobalLT("B!GavOffend","GLOBAL",3)~ + ~What do you think of my leadership?~ + leader10 
+ ~GlobalGT("B!GavTalk","GLOBAL",2) GlobalGT("B!GavLove","GLOBAL",10) GlobalLT("B!GavOffend","GLOBAL",3)~ + ~What do you think of me?~ + like1 
+ ~GlobalGT("B!GavTalk","GLOBAL",2) GlobalGT("B!GavLove","GLOBAL",10) !GlobalLT("B!GavOffend","GLOBAL",3)~ + ~What do you think of me?~ + like2 
+ ~GlobalGT("B!GavTalk","GLOBAL",2) GlobalGT("B!GavLove","GLOBAL",5) GlobalLT("B!GavLove","GLOBAL",11) GlobalLT("B!GavOffend","GLOBAL",3)~ + ~What do you think of me?~ + like3 
+ ~GlobalGT("B!GavTalk","GLOBAL",2) GlobalGT("B!GavLove","GLOBAL",5) GlobalLT("B!GavLove","GLOBAL",11) !GlobalLT("B!GavOffend","GLOBAL",3)~ + ~What do you think of me?~ + like4 
+ ~GlobalGT("B!GavTalk","GLOBAL",2) GlobalGT("B!GavLove","GLOBAL",-1) GlobalLT("B!GavLove","GLOBAL",6) GlobalLT("B!GavOffend","GLOBAL",3)~ + ~What do you think of me?~ + like5 
+ ~GlobalGT("B!GavTalk","GLOBAL",2) GlobalGT("B!GavLove","GLOBAL",-1) GlobalLT("B!GavLove","GLOBAL",6) !GlobalLT("B!GavOffend","GLOBAL",3)~ + ~What do you think of me?~ + like6 
+ ~GlobalGT("B!GavTalk","GLOBAL",2) GlobalLT("B!GavLove","GLOBAL",0) GlobalLT("B!GavOffend","GLOBAL",3)~ + ~What do you think of me?~ + like7 
+ ~GlobalGT("B!GavTalk","GLOBAL",2) GlobalLT("B!GavLove","GLOBAL",0) !GlobalLT("B!GavOffend","GLOBAL",3)~ + ~What do you think of me?~ + like8 
+ ~Global("B!GavArt","GLOBAL",1)~ + ~Would you draw something for me?~ + draw1 
+ ~GlobalTimerExpired("B!GavArtT","GLOBAL") 
      Global("B!GavArt","GLOBAL",2)~ + ~Is your drawing done yet?~ + draw2 
+ ~!GlobalTimerExpired("B!GavArtT","GLOBAL") 
      Global("B!GavArt","GLOBAL",2)~ + ~Is your drawing done yet?~ + draw3 
+ ~Global("B!GavNoBG1","GLOBAL",1)~ + ~Tell me about your family.~ + FamilyNew 
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~Tell me about your family.~ + FamilyOld 
+ ~RandomNum(4,1)~ + ~What did you do while you were living in Beregost?~ + beregost1 
+ ~RandomNum(4,2)~ + ~What did you do while you were living in Beregost?~ + beregost2 
+ ~RandomNum(4,3)~ + ~What did you do while you were living in Beregost?~ + beregost3 
+ ~RandomNum(4,4)~ + ~What did you do while you were living in Beregost?~ + beregost4 
++ ~What made you decide to become a cleric?~ + WhyCleric 
++ ~Do you have any hobbies?~ + draw4 
+ ~NumInPartyGT(2)~ + ~I'd like to ask you about one of our companions.~ + PartyPreferences 
++ ~Things have certainly turned out different than I thought they would.~ + ltuae 
++ ~Do you think we'll survive this?~ + ltuae11 
+ ~Global("B!GavRA","GLOBAL",0)~ + ~It's rather personal... about a certain person we both know.~ + romadv0 
+ ~!Global("B!GavRA","GLOBAL",0)~ + ~It's rather personal... about a certain person we both know.~ + romadv1 
+ ~Global("B!GavTravelTale","LOCALS",0)~ + ~Do you have any stories to pass the time while we travel?~ DO ~SetGlobal("B!GavTravelTale","LOCALS",1)~ + ttale1 
+ ~GlobalGT("B!GavTravelTale","LOCALS",0)~ + ~Could you tell me the story about how the Mulhorandi came to Toril again?~ + ttale1.2  
+ ~Global("B!GavTravelTale","LOCALS",1)~ + ~Do you have any stories to pass the time while we travel?~ DO ~SetGlobal("B!GavTravelTale","LOCALS",2)~ + ttale2 
+ ~GlobalGT("B!GavTravelTale","LOCALS",1)~ + ~Could you tell me about the other gods who came to Toril again?~ + ttale2  
+ ~Global("B!GavTravelTale","LOCALS",2)~ + ~Do you have any stories to pass the time while we travel?~ DO ~SetGlobal("B!GavTravelTale","LOCALS",3)~ + ttale3 
+ ~GlobalGT("B!GavTravelTale","LOCALS",2)~ + ~Could you tell me about Ceili's Veil again?~ + ttale3  
+ ~Global("B!GavTravelTale","LOCALS",3)~ + ~Do you have any stories to pass the time while we travel?~ DO ~SetGlobal("B!GavTravelTale","LOCALS",4)~ + ttale4 
+ ~Global("B!GavTravelTale","LOCALS",4)~ + ~Do you have any stories to pass the time while we travel?~ + ttale5 
+ ~Global("B!GavHammer","LOCALS",0)~ + ~I thought all Dawnbringers used maces, but you seem to prefer hammers. Is there any reason for that?~ DO ~SetGlobal("B!GavHammer","LOCALS",1)~  + hammer 
+ ~Global("BGavDAWNRITUAL","GLOBAL",1)~ + ~When I was describing the Dawn Ritual in the Shadow Temple, you remarked that the rite was familiar and strange. Would you mind elaborating on that?~ DO ~SetGlobal("BGavDAWNRITUAL","GLOBAL",2)~ + dawn_ritual 
+ ~Global("BGavSHADEL4","GLOBAL",1)~ + ~What did the Shade Lord mean when he said that you would make a good shadow?~ + gav_shadow 
+ ~Global("B!GavMT","GLOBAL",6)~ + ~I wanted to talk to you about Lanie.~ + Lanie 
+ ~Global("B!GavMT","GLOBAL",6)~ + ~I wanted to talk to you about Miranda.~ + Miranda 
++ ~Never mind, it was nothing.~ + pid2 
END 

/* Redeem evil PC */ 
IF ~~ le_redeem 
SAY ~I can't tell you how happy I am to hear that!~ 
IF ~~ THEN DO ~SetGlobal("B!GavLERedeem","GLOBAL",1) IncrementGlobal("B!GavLove","GLOBAL",2)~ + pid2 
END 

IF ~~ ne_redeem 
SAY ~I can't tell you how happy I am to hear that!~ 
IF ~~ THEN DO ~SetGlobal("B!GavNERedeem","GLOBAL",1) IncrementGlobal("B!GavLove","GLOBAL",2)~ + pid2 
END 

IF ~~ ce_redeem 
SAY ~I can't tell you how happy I am to hear that!~ 
IF ~~ THEN DO ~SetGlobal("B!GavCERedeem","GLOBAL",1) IncrementGlobal("B!GavLove","GLOBAL",2)~ + pid2 
END 

/* Life, the Universe, and Everything */ 

IF ~~ ltuae 
SAY ~In what way?~ 
+ ~Class(Player1,BARD_ALL)~ + ~I was going to be the most famous bard that ever lived. People would have come from miles around to see one of my performances.~ + ltuae1 
+ ~Class(Player1,CLERIC_ALL)~ + ~I thought I'd pursue my calling in peace. One day, I might even have become a high priest.~ + ltuae2 
+ ~Class(Player1,DRUID_ALL)~ + ~I imagined that once my training was done, I'd disappear into the wilds, and serve Nature as she should be served.~ + ltuae3 
+ ~Class(Player1,FIGHTER_ALL)~ + ~I was supposed to join the garrison, once I'd learned all I needed to learn from books. I might have been an officer by now.~ + ltuae4 
+ ~Class(Player1,MAGE_ALL)~ + ~I grew up in Candlekeep, with the most extensive library in Faerun at my command. Who knows what I could have achieved, had I been allowed to stay?~ + ltuae5 
+ ~Class(Player1,PALADIN_ALL)~ + ~I thought I'd pursue my calling in peace. One day, I might even have become a knight of the order.~ + ltuae2 
+ ~Class(Player1,RANGER_ALL)~ + ~I imagined that once my training was done, I'd disappear into the wilds, and serve Nature as she should be served.~ + ltuae3 
+ ~Class(Player1,THIEF_ALL)~ + ~I thought I'd practice my art, amass vast wealth, and retire as one of the most accomplished rogues of my day.~ + ltuae6 
++ ~Here we are, years and miles from where we started, and our problems keep getting bigger, not smaller.~ + ltuae7 
++ ~I've lost the people closest to me, and for what? Was their sacrifice even worth it?~ + ltuae8 
++ ~The way I was heading, I would have been settled down with a family by now.~ + ltuae9  
++ ~Here I am, saddled with a priest who's determined to see the bright side of everything.~ + ltuae10  
++ ~I was just making an observation.~ + pid2 
END  

IF ~~ ltuae1 
SAY ~Or maybe reality would have found you starving on the streets. Not all bards succeed.~ 
IF ~~ THEN + ltuae12 
END 

IF ~~ ltuae2 
SAY ~Or maybe you would have settled into some obscure strata of the temple heirarchy, like I did. It isn't easy to rise up through the ranks.~ 
IF ~~ THEN + ltuae12 
END 

IF ~~ ltuae3 
SAY ~Or perhaps you would have been mauled by a maddened bear.~ 
IF ~~ THEN + ltuae12 
END 

IF ~~ ltuae4 
SAY ~Or maybe you'd be dead. Sarevok was leading the Sword Coast to war. Had you not intervened, he would have succeeded.~ 
IF ~~ THEN + ltuae12 
END 

IF ~~ ltuae5 
SAY ~Or you could have miscast a cantrip and vanished in a puff of wishful thinking.~ 
IF ~~ THEN + ltuae12 
END 

IF ~~ ltuae6 
SAY ~Or you could have wound up dead in a gutter somewhere.~ 
IF ~~ THEN + ltuae12 
END 

IF ~~ ltuae7 
SAY ~Life has given you some challenges, it's true, but you've been able to meet every one of them, and you've come out stronger in the end. Some might consider the difficulties we face as obstacles, but perhaps they're cleverly disguised opportuinties to grow.~ 
IF ~~ THEN + pid2 
END 

IF ~~ ltuae8 
SAY ~As long as you remember the friends you had along the way, and carry their teachings in your heart, they will never really die. And if you had not lost so much, would you ever have discovered how much you could do on your own, without friends or mentors to rely on? The price you paid has been high, but it's up to you to make sure that their sacrifice means something.~ 
IF ~~ THEN + pid2 
END 

IF ~~ ltuae9 
SAY ~It isn't too late for that, though you have a few tasks you must accomplish first. All things happen in their own time, <CHARNAME>, and rewards are given at the completion of a task, not at the beginning.~ 
IF ~~ THEN + pid2 
END 

IF ~~ ltuae10 
SAY ~Some people are just lucky, I guess.~ 
IF ~~ THEN + pid2 
END 

IF ~~ ltuae11 
SAY ~You will. I don't know what fate has in store for you, but whatever it is, I don't think an early death and a shallow grave are part of it.~ 
IF ~~ THEN + pid2 
END 

IF ~~ ltuae12 
SAY ~I'm not trying to discourage you, <CHARNAME>, but things tend to happen for a reason, even if we aren't aware of it at the time. It will all work out for the best, you'll see.~ 
IF ~~ THEN + pid2 
END 

/* Romantic Advice */ 

IF ~~ romadv0 
SAY ~I might not be the best person to ask. I don't have a lot of experience in that field... or any, for that matter.~ 
+ ~Gender(Player1,MALE)~ + ~You have eyes. You have to admit that she's attractive.~ + romadv0.1 
+ ~Gender(Player1,FEMALE)~ + ~You have eyes. You have to admit that he's attractive.~ + romadv0.2 
+ ~Gender(Player1,FEMALE)~ + ~You have eyes. You have to admit that she's attractive.~ + romadv0.1 
+ ~Gender(Player1,MALE)~ + ~You have eyes. You have to admit that he's attractive.~ + romadv0.2 
++ ~She's a sweet girl, don't you think?~ + romadv0.3 
++ ~Don't you think he's sweet?~ + romadv0.3 
++ ~I'm at my wits' end. It seems like all we do is fight.~ + romadv0.4 
++ ~I know she's interested, but she's sure taking her time about it.~ + romadv0.5 
++ ~I know he's interested, but he's sure taking his time about it.~ + romadv0.5 
++ ~She's interested, but I'm not. It's getting to be a problem.~ + romadv0.6 
++ ~He's interested, but I'm not. It's getting to be a problem.~ + romadv0.7 
++ ~Never mind. Forget I asked.~ + pid2 
END 

IF ~~ romadv0.1 
SAY ~I have eyes. I also have enough common sense to know better than to answer that question. If I say that she's attractive, you'll think I'm after her myself, but if I say that she isn't, you'll accuse me of being blind or stupid. Better to keep my mouth shut and let you get on with it.~ 
IF ~~ + pid2 
END 

IF ~~ romadv0.2 
SAY ~I'm not the best person to ask, since I've never been attracted to other men.~ 
IF ~~ + pid2 
END 

IF ~~ romadv0.3 
SAY ~Your own opinion carries more weight than mine.~ 
IF ~~ + pid2 
END 

IF ~~ romadv0.4 
SAY ~I wouldn't give up hope quite yet. Bickering can be one way to show affection, especially if the other person isn't quite willing to admit that there's an attraction there.~ 
IF ~~ + pid2 
END 

IF ~~ romadv0.5 
SAY ~You can't rush that kind of thing. It will happen when it happens.~ 
IF ~~ + pid2 
END 

IF ~~ romadv0.6 
SAY ~If you're really not interested, you'd better break it off as soon as you can. Do it gently if you can, but if you can't, it's better to disappoint her now than it is to break her heart later.~ 
IF ~~ + pid2 
END 

IF ~~ romadv0.7 
SAY ~If you're really not interested, you'd better break it off as soon as you can. Do it gently if you can, but if you can't, it's better to disappoint him now than it is to break his heart later.~ 
IF ~~ + pid2 
END 

IF ~~ romadv1 
SAY ~I might not be the best person to ask.~ 
++ ~Never mind, then.~ + pid2 
++ ~I'd still like your opinion, though.~ + romadv1.1 
END 

IF ~~ romadv1.1 
SAY ~Very well. Who holds your interest?~ 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~You.~ + romadv1.2 
+ ~Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~You.~ + romadv1.3 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~~ + romadv1.4 
+ ~Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",1)~ + ~You.~ + romadv1.5 
+ ~Global("B!GavRA","GLOBAL",3) 
      Global("B!GavRomBreak","GLOBAL",2)~ + ~You.~ + romadv1.6 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~You.~ + romadv1.7 
+ ~InParty("c-Aran") 
      InMyArea("c-Aran") 
      !StateCheck("c-Aran",CD_STATE_NOTVALID)~ + ~Aran.~ + romadv1.8 
+ ~InParty("P#Kivan") 
      InMyArea("P#Kivan") 
      !StateCheck("P#Kivan",CD_STATE_NOTVALID)~ + ~Kivan.~ + romadv1.9 
+ ~InParty("Anomen") 
      InMyArea("Anomen") 
      !StateCheck("Anomen",CD_STATE_NOTVALID)~ + ~Anomen.~ + romadv1.10 
+ ~InParty("Edwin") 
      InMyArea("Edwin") 
      !StateCheck("Edwin",CD_STATE_NOTVALID)~ + ~Edwin.~ + romadv1.11 
+ ~InParty("J#Kelsey") 
      InMyArea("J#Kelsey") 
      !StateCheck("J#Kelsey",CD_STATE_NOTVALID)~ + ~Kelsey.~ + romadv1.12 
+ ~InParty("Valygar") 
      InMyArea("Valygar") 
      !StateCheck("Valygar",CD_STATE_NOTVALID)~ + ~Valygar.~ + romadv1.13 
+ ~InParty("Sola") 
      InMyArea("Sola") 
      !StateCheck("Sola",CD_STATE_NOTVALID)~ + ~Solaufein.~ + romadv1.14 
+ ~InParty("SK#Neht") 
      InMyArea("SK#Neht") 
      !StateCheck("SK#Neht",CD_STATE_NOTVALID)~ + ~Neh'taniel.~ + romadv1.17 
+ ~Gender(Player2,MALE) 
      InParty(Player2) 
      InMyArea(Player2) 
      !StateCheck(Player2,CD_STATE_NOTVALID) 
      !Name("B!Gavin2",Player2) 
      !Name("c-Aran",Player2) 
      !Name("Anomen",Player2) 
      !Name("Edwin",Player2) 
      !Name("P#Kivan",Player2) 
      !Name("J#Kelsey",Player2) 
      !Name("Valygar",Player2) 
      !Name("Sola",Player2) 
      !Name("SK#Neht",Player2)~ + ~<PLAYER2>.~ + romadv1.15 
+ ~Gender(Player2,FEMALE) 
      InParty(Player2) 
      InMyArea(Player2) 
      !StateCheck(Player2,CD_STATE_NOTVALID)~ + ~<PLAYER2>.~ + romadv1.16 
+ ~Gender(Player3,MALE) 
      InParty(Player3) 
      InMyArea(Player3) 
      !StateCheck(Player3,CD_STATE_NOTVALID) 
      !Name("B!Gavin2",Player3) 
      !Name("c-Aran",Player3) 
      !Name("Anomen",Player3) 
      !Name("Edwin",Player3) 
      !Name("P#Kivan",Player3) 
      !Name("J#Kelsey",Player3) 
      !Name("Valygar",Player3) 
      !Name("Sola",Player3) 
      !Name("SK#Neht",Player3)~ + ~<PLAYER3>.~ + romadv1.15 
+ ~Gender(Player3,FEMALE) 
      InParty(Player3) 
      InMyArea(Player3) 
      !StateCheck(Player3,CD_STATE_NOTVALID)~ + ~<PLAYER3>.~ + romadv1.16 
+ ~Gender(Player4,MALE) 
      InParty(Player4) 
      InMyArea(Player4) 
      !StateCheck(Player4,CD_STATE_NOTVALID) 
      !Name("B!Gavin2",Player4) 
      !Name("c-Aran",Player4) 
      !Name("Anomen",Player4) 
      !Name("Edwin",Player4) 
      !Name("P#Kivan",Player4) 
      !Name("J#Kelsey",Player4) 
      !Name("Valygar",Player4) 
      !Name("Sola",Player4) 
      !Name("SK#Neht",Player4)~ + ~<PLAYER4>.~ + romadv1.15 
+ ~Gender(Player4,FEMALE) 
      InParty(Player4) 
      InMyArea(Player4) 
      !StateCheck(Player4,CD_STATE_NOTVALID)~ + ~<PLAYER4>.~ + romadv1.16 
+ ~Gender(Player5,MALE) 
      InParty(Player5) 
      InMyArea(Player5) 
      !StateCheck(Player5,CD_STATE_NOTVALID) 
      !Name("B!Gavin2",Player5) 
      !Name("c-Aran",Player5) 
      !Name("Anomen",Player5) 
      !Name("Edwin",Player5) 
      !Name("P#Kivan",Player5) 
      !Name("J#Kelsey",Player5) 
      !Name("Valygar",Player5) 
      !Name("Sola",Player5) 
      !Name("SK#Neht",Player5)~ + ~<PLAYER5>.~ + romadv1.15 
+ ~Gender(Player5,FEMALE) 
      InParty(Player5) 
      InMyArea(Player5) 
      !StateCheck(Player5,CD_STATE_NOTVALID)~ + ~<PLAYER5>.~ + romadv1.16 
+ ~Gender(Player6,MALE) 
      InParty(Player6) 
      InMyArea(Player6) 
      !StateCheck(Player6,CD_STATE_NOTVALID) 
      !Name("B!Gavin2",Player6) 
      !Name("c-Aran",Player6) 
      !Name("Anomen",Player6) 
      !Name("Edwin",Player6) 
      !Name("P#Kivan",Player6) 
      !Name("J#Kelsey",Player6) 
      !Name("Valygar",Player6) 
      !Name("Sola",Player6) 
      !Name("SK#Neht",Player6)~ + ~<PLAYER6>.~ + romadv1.15 
+ ~Gender(Player6,FEMALE) 
      InParty(Player6) 
      InMyArea(Player6) 
      !StateCheck(Player6,CD_STATE_NOTVALID)~ + ~<PLAYER6>.~ + romadv1.16 
++ ~No, there's no one. Never mind.~ + pid2 
END  

IF ~~ romadv1.2 
SAY ~(gulp) Me? <CHARNAME>, I don't know what to say. Can't we just give it a while and see how things turn out?~ 
++ ~You should see your face!~ + romadv1.2a 
++ ~I'll wait. I just wanted you to know that I'm interested, too.~ + romadv1.2b 
++ ~This isn't something I wanted to tell you, but I should. I'm not interested, Gavin.~ + romadv1.2c 
END 

IF ~~ romadv1.2a 
SAY ~I'm blushing, aren't I? I'd probably better go stand in a corner for a while.~ 
IF ~~ THEN EXIT 
END 

IF ~~ romadv1.2b 
SAY ~Thanks... I'd better go stand by myself for a while. The blushing usually goes away on its own sooner or later.~ 
IF ~~ THEN EXIT 
END 

IF ~~ romadv1.2c 
SAY ~Thanks for letting me know.~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",-1)~ EXIT 
END 

IF ~~ romadv1.3 
SAY ~It's probably pointless for me to deny my own interest at this point... not that I want to, mind you.~ 
IF ~~ THEN + pid2
END 

IF ~~ romadv1.4 
SAY ~Well, I'm glad you ARE interested in me! Our marriage would just be awkward, otherwise.~ 
IF ~~ THEN + pid2 
END 

IF ~~ romadv1.5 
SAY ~You still think of me? That's... good to know. I still think of you, as well.~ 
IF ~~ THEN + pid2 
END 

IF ~~ romadv1.6 
SAY ~That door is closed, <CHARNAME>.~ 
IF ~~ THEN + pid2 
END 

IF ~~ romadv1.7 
SAY ~I'm your plaything, <CHARNAME>. Nothing more.~ 
IF ~~ THEN + pid2 
END 

IF ~~ romadv1.8 
SAY ~The sell-sword? He's alright... if you're interested in men who can't string a sentence together without mentioning a deity's organs at some point.~ 
IF ~~ THEN + romadv1.15  
END 

IF ~~ romadv1.9 
SAY ~He's a good man... but isn't he still mourning his wife?~ 
IF ~~ THEN + romadv1.15  
END 

IF ~~ romadv1.10 
SAY ~He's a pretty one, I'll give you that. Who cares about his bluster, or the fact that you have to flatter him night and day?~ 
IF ~~ THEN + romadv1.15  
END 

IF ~~ romadv1.11 
SAY ~He'll match your wits, that much is certain. <CHARNAME>, I don't know much about Edwin himself, but I do know that Red Wizards survive by getting the better of their rivals. They aren't nice. If you're determined to have him, I won't stand in your way, but I will urge caution. I don't want to see you get hurt.~ 
IF ~~ THEN + romadv1.15  
END 

IF ~~ romadv1.12 
SAY ~He thinks a lot of himself, doesn't he?~ 
IF ~~ THEN + romadv1.15  
END 

IF ~~ romadv1.13 
SAY ~You like mystery, eh? Well, he's got a lot of that.~ 
IF ~~ THEN + romadv1.15  
END 

IF ~~ romadv1.14 
SAY ~I don't know much about him, but I do know that he got the better of Phaere at least once. Tht makes him dangerous.~ 
IF ~~ THEN + romadv1.15  
END 

IF ~~ romadv1.15 
SAY ~What makes him so special?~ 
++ ~He has a charming face.~ + romadv1.18 
++ ~He has the most beautiful eyes.~ + romadv1.19 
++ ~Don't you think he's sweet?~ + romadv1.20 
++ ~He has a fine physique, wouldn't you say?~ + romadv1.21 
++ ~He's got a great personality.~ + romadv1.22 
++ ~I like everything about him!~ + romadv1.23 
++ ~Forget it. I can see that you can't be objective about this.~ + romadv1.24 
END 

IF ~~ romadv1.16 
SAY ~Do you prefer women?~ 
++ ~Exclusively.~ + romadv1.25 
++ ~Not all the time.~ + romadv1.26 
++ ~No, it was just a passing thought.~ + romadv1.27 
END 

IF ~~ romadv1.17 
SAY ~He's a wraith, <CHARNAME>. That limits your options a bit.~ 
IF ~~ THEN + pid2 
END 

IF ~~ romadv1.18 
SAY ~Hmf. Who cares what's on the inside, as long as it's got a pretty wrapper, right?~ 
IF ~~ THEN EXIT  
END 

IF ~~ romadv1.19 
SAY ~I never looked.~ 
IF ~~ THEN EXIT  
END 

IF ~~ romadv1.20 
SAY ~He's never been 'sweet' to me, but maybe that's because he isn't trying to get me in bed with him. That's something to keep in mind, if you're wondering about his sincerity.~ 
IF ~~ THEN EXIT  
END 

IF ~~ romadv1.21 
SAY ~(standing up a little straighter and puffing out his chest) I can't say I'd even notice that.~ 
IF ~~ THEN EXIT  
END 

IF ~~ romadv1.22 
SAY ~If that's the kind of man you like.~ 
IF ~~ THEN EXIT  
END 

IF ~~ romadv1.23 
SAY ~Why did you even ask me, then?~ 
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ EXIT  
END 

IF ~~ romadv1.24 
SAY ~I did warn you about that.~ 
IF ~~ THEN + pid2   
END 

IF ~~ romadv1.25 
SAY ~Glad I asked.~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",-1)~ + pid2  
END 

IF ~~ romadv1.26 
SAY ~Good to know.~ 
IF ~~ THEN + pid2 
END 

IF ~~ romadv1.27 
SAY ~Ah.~ 
IF ~~ THEN + pid2 
END 

/* Tell me a story */ 

IF ~~ ttale1 
SAY ~I could tell you the story of how the Mulhorandi came to Abeir-Toril.~ 
++ ~The Mulhorandi?~ + ttale1.1 
++ ~Go on.~ + ttale1.2 
++ ~Thanks anyway, but history doesn't interest me all that much.~ + pid2 
END 

IF ~~ ttale1.1 
SAY ~They are an ancient nation far to the east, south of Thay.~ 
++ ~Let's have your story, then.~ + ttale1.2 
++ ~Some other time, perhaps.~ + pid2 
END 

IF ~~ ttale1.2 
SAY ~Well, you must have heard of the Imaskari Empire, no?~ 
++ ~No, I haven't, actually.~ + ttale1.3 
++ ~Who hasn't? Go on.~ + ttale1.4 
END 

IF ~~ ttale1.3 
SAY ~Well, the Imaskari Empire once spanned most of Faerun. In their time, they were great indeed, and they possessed a knowledge of magic and mechanical devices that will never be seen again. They were succeeded by the Netherese, so that should give you some idea of their grandeur.~ 
IF ~~ THEN + ttale1.4 
END 

IF ~~ ttale1.4 
SAY ~Their empire was magnificent... and wealthy. Ever building, ever expanding, they eventually ran low on the slaves they needed to keep their extensive empire functioning. The fact that a plague recently decimated their labor force did not help.~ 
= ~Their solution was to bring in thousands upon thousands of slaves from another world.~ 
++ ~Now you're having me on. Another world?~ + ttale1.5 
++ ~Which world?~ + ttale1.6 
++ ~This is a long story, isn't it?~ + ttale1.7 
END 

IF ~~ ttale1.5 
SAY ~It's true. A race that invented extradimensional space would find little challenge in traversing the Astral Plane.~ 
IF ~~ THEN + ttale1.8 
END 

IF ~~ ttale1.6 
SAY ~The legends are silent about that, unfortunately.~ 
IF ~~ THEN + ttale1.8 
END 

IF ~~ ttale1.7 
SAY ~You were the one that wanted to pass the time while we travel. Do you want to hear it or not?~ 
++ ~Go ahead.~ + ttale1.8 
++ ~No, I'll pass.~ + pid2 
END 

IF ~~ ttale1.8 
SAY ~Anyway, they needed slaves and they found them: a race with sun-bronzed skin and ink-black hair and eyes. This alien race became the Mulhorandi.~ 
++ ~You could have just said that they came from the Astral Plane.~ + ttale1.9 
++ ~Wait, the Mulhorandi were slaves, but now they aren't. How were they freed?~ + ttale1.10 
++ ~So the Imaskari brought the Mulhorandi here to become slaves. Now I know.~ + pid2  
END 

IF ~~ ttale1.9 
SAY ~Yes, but then I would not have had the opportunity to exhaust my vocabulary in thinking up other ways to say 'great.'~ 
IF ~~ THEN + ttale1.11 
END 

IF ~~ ttale1.10 
SAY ~All things that live can be killed, <CHARNAME>, and the Imaskari were no different.~ 
IF ~~ THEN + ttale1.11 
END 

IF ~~ ttale1.11 
SAY ~When the Mulhorandi came to Toril, they brought their gods with them. These gods lived among the Mulhorandi and bred with them. It is no coincidence that aasimar are so common in Mulhorand.~ 
= ~Their divine blood gave them power, and they used it to overthrow their oppressors. Imaskar fell.~ 
++ ~But slavery is legal in Mulhorand. You'd think they wouldn't be so eager to enslave others, given their own history.~ + ttale1.12 
++ ~So what happened to the Imaskari?~ + ttale1.13 
++ ~Thanks for telling me that story.~ + pid2 
END 

IF ~~ ttale1.12 
SAY ~History has shown time and again that the first thing people will do when freed from one tyrant is to set up a new one. As a race, we humans are slow learners.~ 
IF ~~ THEN + pid2 
END 

IF ~~ ttale1.13 
SAY ~Her cities were engulfed by flame and her people scattered. Some went on to become the Netherese, but the culture was lost forever.~ 
++ ~You sound saddened by that.~ + ttale1.14 
++ ~The Netherese too were destroyed.~ + ttale1.15 
++ ~This has turned out to be quite a long story.~ + pid2 
END 

IF ~~ ttale1.14 
SAY ~I'd hate to think any culture would be wiped from the face of Abeir-Toril, but the Imaskari Empire did have one other thing going for it. All races existed in peace there. Elves, dwarves, humans, all worked toward a common goal.~ 
IF ~~ THEN + ttale1.16 
END 

IF ~~ ttale1.15 
SAY ~Aye, for the Great Cycle applies to empires as readily as people. The refugees of the Imaskari Empire built the Netherese Empire, and the survivors of the Fall of Netheril went on to build Halruua. Perhaps one day, Halruua will rise to greatness, and then something else will take its place.~ 
++ ~All things end. It is a fact of life.~ + ttale1.16 
++ ~Are you saying that all we do will end in ruin?~ + ttale1.17 
++ ~Interesting story. Thank you.~ + ttale1.18 
++ ~You do ramble on, you know.~ + ttale1.19 
++ ~Is that the end of the story?~ + ttale1.20  
END 

IF ~~ ttale1.16 
SAY ~So it is.~ 
IF ~~ THEN + pid2 
END 

IF ~~ ttale1.17 
SAY ~No, I'm just telling a tale. You can take what you want from it.~ 
IF ~~ THEN + pid2 
END 

IF ~~ ttale1.18 
SAY ~You're welcome.~ 
IF ~~ THEN + pid2 
END 

IF ~~ ttale1.19 
SAY ~So I've been told.~ 
IF ~~ THEN + pid2 
END 

IF ~~ ttale1.20 
SAY ~Stories never really end.~ 
IF ~~ THEN + pid2 
END 

IF ~~ ttale2 
SAY ~Do you remember how I told you that the Mulhorandi people were brought to Abeir-Toril from another world along with their gods? Well, Osiris, Thoth, and friends were not the only gods rumored to have come from other Prime Material Planes.~ 
= ~Tyr, Mielikki, and Loviatar are also said to have come from the same Prime as the Mulhorandi pantheon, though the reason for their existence here is not clear.~ 
++ ~History always seems to be silent when it comes to the good stuff.~ + ttale2.1 
++ ~So their worshipers have been praying to false gods all this time?~ + ttale2.2 
++ ~You said something about other Prime Material Planes. What do you mean?~ + ttale2.3 
++ ~Well, that's enough about the gods, thanks.~ + pid2 
END 

IF ~~ ttale2.1 
SAY ~Perhaps there was no one there to record it. The Mulhorandi migration can be traced to a single place and time, but the tale of how Tyr, Mielikki and Loviatar came to Abeir-Toril is lost in antiquity.~ 
IF ~~ THEN + ttale2.4 
END 

IF ~~ ttale2.2 
SAY ~No, the gods are real, all right, as real as any native god.~ 
IF ~~ THEN + ttale2.4 
END 

IF ~~ ttale2.3 
SAY ~Other worlds... places like Abeir-Toril that exist beyond the Astral Plane. It's hard to explain and I get a headache if I think about it too much.~ 
IF ~~ THEN + ttale2.4 
END 

IF ~~ ttale2.4 
SAY ~So, the gods are here and they're real, even if we'll never know how they got here or why they were brought.~ 
++ ~Why they were brought? They were brought here for a reason?~ + ttale2.5 
++ ~Who decided that we needed more gods, anyway?~ + ttale2.5 
++ ~Do you think that some of the other gods might have started out somewhere else, too?~ + ttale2.6 
++ ~What about the gods outside Faerun? They say that Kara-Tur has 8000 gods in its Celestial Bureaucracy.~ + ttale2.7 
END 

IF ~~ ttale2.5 
SAY ~Ao himself decided there were voids to be filled in the divine governance of the Realms, and it was Ao that brought the gods from elsewhere. Who would dare speculate as to his motives?~ 
IF ~~ THEN + pid2 
END 

IF ~~ ttale2.6 
SAY ~It's possible. It would take a better theologian than I to say with any certainty.~ 
IF ~~ THEN + pid2 
END 

IF ~~ ttale2.7 
SAY ~I know next to nothing about religion in Kara-Tur, I'm afraid.~ 
IF ~~ THEN + pid2 
END 

IF ~~ ttale3 
SAY ~There's a spring called Ceili's Veil near Ulgoth's Beard that erupts from the top of the cliff, then flows over a waterfall into the sea. There's a story about that waterfall, if you want to hear it.~ 
++ ~Sure.~ + ttale3.1 
++ ~Not right now.~ + pid2 
END 

IF ~~ ttale3.1 
SAY ~Long ago, when Ulgoth's Beard was even smaller and more obscure than it is now, there lived a village maiden named Ceili. Her beauty was great, so when Duke Leoric of Baldur's Gate rode past, he fell instantly in love with her. He stopped his horse and commanded her to speak with him. She fled, but he pursued her. Day after day, he returned to court her, and day after day, she refused him, until one day, her heart softened, and she stayed to listen to the sweet words he lavished upon her. In time, she grew to care for him, as well. They stood there upon the cliff and pledged their love to each other with the sea as their witness.~ 
= ~Leoric begged her to return with him to Baldur's Gate, and return with him she did, but when she arrived, she discovered that Leoric had failed to mention the wife and children he already had. Heartbroken, she left him and returned to Ulgoth's Beard.~ 
= ~Alone, she climbed the cliff where they pledged their love. It is said that she dissolved in grief, and that her tears became the spring that flows forever into the sea.~ 
++ ~Well, that certainly is a depressing tale.~ + ttale3.2 
++ ~Let that be a lesson to beautiful maidens everywhere! Before bestowing your heart, always ask whether the man is married.~ + ttale3.3 
++ ~I don't understand why she behaved that way. Leoric wouldn't be the first nobleman to take a mistress.~ + ttale3.4 
++ ~So, what happened to him?~ + ttale3.5 
++ ~Interesting story.~ + pid2 
END 

IF ~~ ttale3.2 
SAY ~Not all stories have happy endings.~ 
IF ~~ THEN + pid2 
END 

IF ~~ ttale3.3 
SAY ~That's probably sound advice.~ 
IF ~~ THEN + pid2 
END 

IF ~~ ttale3.4 
SAY ~Not all people want to live like that, though.~ 
IF ~~ THEN + pid2 
END 

IF ~~ ttale3.5 
SAY ~He died of a pestillence the very next year, or so I'm told. Perhaps the gods punished him for being false to Ceili... or to his wife.~ 
IF ~~ THEN + pid2 
END 

IF ~~ ttale4 
SAY ~I know a story about a young <PRO_MANWOMAN> from Candlekeep who saved the Sword Coast from the evil machinations of Sarevok.~ 
++ ~I think I've heard that one before.~ + ttale4.1 
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~You should know that one. You were there.~ + ttale4.2 
+ ~Global("B!GavNoBG1","GLOBAL",1)~ + ~You should know that one. You already know who it's about.~ + ttale4.2 
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~It's a lie, I tell you.~ + ttale4.3 
+ ~Global("B!GavNoBG1","GLOBAL",1)~ + ~It's a lie, I tell you.~ + ttale4.4 
END 

IF ~~ ttale4.1 
SAY ~Yes, I suppose you have.~ 
IF ~~ THEN + pid2 
END 

IF ~~ ttale4.2 
SAY ~Very true.~ 
IF ~~ THEN + pid2 
END 

IF ~~ ttale4.3 
SAY ~Nice try.~ 
IF ~~ THEN + pid2 
END 

IF ~~ ttale4.4 
SAY ~If you say so.~ 
IF ~~ THEN + pid2 
END 

IF ~~ ttale5 
SAY ~You've already heard all my stories.~ 
IF ~~ THEN + pid2 
END 


/* Party likes and dislikes */ 

IF ~~ PartyPreferences 
SAY ~Which one?~ 
+ ~InParty("Aerie") 
      InMyArea("Aerie") 
      !StateCheck("Aerie",CD_STATE_NOTVALID)~ + ~What do you think of Aerie?~ + pp_Aerie
+ ~InParty("Anomen") 
      InMyArea("Anomen") 
      !StateCheck("Anomen",CD_STATE_NOTVALID)~ + ~What do you think of Anomen?~ + pp_Anomen
+ ~InParty("Cernd") 
      InMyArea("Cernd") 
      !StateCheck("Cernd",CD_STATE_NOTVALID)~ + ~What do you think of Cernd?~ + pp_Cernd
+ ~InParty("Edwin") 
      InMyArea("Edwin") 
      !StateCheck("Edwin",CD_STATE_NOTVALID)~ + ~What do you think of Edwin?~ + pp_Edwin
+ ~InParty("HaerDalis") 
      InMyArea("HaerDalis") 
      !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ + ~What do you think of Haer'Dalis?~ + pp_HaerDalis
+ ~InParty("Imoen2") 
      InMyArea("Imoen2") 
      !StateCheck("Imoen2",CD_STATE_NOTVALID)~ + ~What do you think of Imoen?~ + pp_Imoen2
+ ~InParty("Jaheira") 
      InMyArea("Jaheira") 
      !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + ~What do you think of Jaheira?~ + pp_Jaheira
+ ~InParty("Jan") 
      InMyArea("Jan") 
      !StateCheck("Jan",CD_STATE_NOTVALID)~ + ~What do you think of Jan?~ + pp_Jan
+ ~InParty("Keldorn") 
      InMyArea("Keldorn") 
      !StateCheck("Keldorn",CD_STATE_NOTVALID)~ + ~What do you think of Keldorn?~ + pp_Keldorn
+ ~InParty("Korgan") 
      InMyArea("Korgan") 
      !StateCheck("Korgan",CD_STATE_NOTVALID)~ + ~What do you think of Korgan?~ + pp_Korgan
+ ~InParty("Mazzy") 
      InMyArea("Mazzy") 
      !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + ~What do you think of Mazzy?~ + pp_Mazzy
+ ~InParty("Minsc") 
      InMyArea("Minsc") 
      !StateCheck("Minsc",CD_STATE_NOTVALID)~ + ~What do you think of Minsc?~ + pp_Minsc
+ ~InParty("Nalia") 
      InMyArea("Nalia") 
      !StateCheck("Nalia",CD_STATE_NOTVALID)~ + ~What do you think of Nalia?~ + pp_Nalia
+ ~InParty("Valygar") 
      InMyArea("Valygar") 
      !StateCheck("Valygar",CD_STATE_NOTVALID)~ + ~What do you think of Valygar?~ + pp_Valygar
+ ~InParty("Viconia") 
      InMyArea("Viconia") 
      !StateCheck("Viconia",CD_STATE_NOTVALID)~ + ~What do you think of Viconia?~ + pp_Viconia
+ ~InParty("Yoshimo") 
      InMyArea("Yoshimo") 
      !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ + ~What do you think of Yoshimo?~ + pp_Yoshimo 
END 
      
IF ~~ pp_Aerie 
SAY ~She's a kind person, but I think she makes too much of past injuries.~ 
IF ~~ THEN + pid2 
END 
      
IF ~~ pp_Anomen 
SAY ~He's young. That excuses a lot. He's also cocky as hells, so I can't really say that I like him.~ 
IF ~~ THEN + pid2 
END 
      
IF ~~ pp_Cernd 
SAY ~I'm ashamed to admit it, but there are times he annoys the hells out of me. It's as if he read a book somewhere that said 'Druids should make obscure nature references in every sentence.'~ 
IF ~~ THEN + pid2 
END 
      
IF ~~ pp_Edwin 
SAY ~He thinks too much of himself.~ 
IF ~~ THEN + pid2 
END 
      
IF ~~ pp_HaerDalis 
SAY ~He likes his drama, doesn't he?~ 
IF ~~ THEN + pid2 
END 
      
IF ~~ pp_Imoen2 
SAY ~I like her.~ 
IF ~~ THEN + pid2 
END 
      
IF ~~ pp_Jaheira 
SAY ~She's got to have her fingers in every pot, that's for sure.~ 
IF ~~ THEN + pid2 
END 
      
IF ~~ pp_Jan 
SAY ~His stories are ridiculous, but at least he's funny. Most of the time.~ 
IF ~~ THEN + pid2 
END 
      
IF ~~ pp_Keldorn 
SAY ~He's an honorable man, and always worth listening to.~ 
IF ~~ THEN + pid2 
END 
   
IF ~~ pp_Korgan 
SAY ~He's loud, crass, and disgusting, but I'd hate to find myself on the wrong end of his axe.~ 
IF ~~ THEN + pid2 
END 
      
IF ~~ pp_Mazzy 
SAY ~I wish there was a way to make her understand that she doesn't have to prove anything to us, but she's a good person.~ 
IF ~~ THEN + pid2 
END 
      
IF ~~ pp_Minsc 
SAY ~His heart is in the right place.~ 
IF ~~ THEN + pid2 
END 
      
IF ~~ pp_Nalia 
SAY ~She's a dreamer.~ 
IF ~~ THEN + pid2 
END 
      
IF ~~ pp_Valygar 
SAY ~He's suspicious, and that's a bit off-putting, but it's certainly understandable, considering what he's been through.~ 
IF ~~ THEN + pid2 
END 
      
IF ~~ pp_Viconia 
SAY ~All drow aren't Drizzt Do'Urden. That's all I'm saying.~ 
IF ~~ THEN + pid2 
END 
      
IF ~~ pp_Yoshimo 
SAY ~He's likable enough.~ 
IF ~~ THEN + pid2 
END 

/* What do you think of me? */ 

IF ~~ like1 
SAY ~I'm glad I met you.~ 
IF ~~ THEN + pid2 
END 

IF ~~ like2 
SAY ~We have our differences, but on the whole, I like you.~ 
IF ~~ THEN + pid2 
END 

IF ~~ like3 
SAY ~You're a good person.~ 
IF ~~ THEN + pid2 
END 

IF ~~ like4 
SAY ~We have our differences, but you're alright.~ 
IF ~~ THEN + pid2 
END 

IF ~~ like5 
SAY ~I'm still getting to know you, but so far, so good.~ 
IF ~~ THEN + pid2 
END 

IF ~~ like6 
SAY ~It's too soon to tell.~ 
IF ~~ THEN + pid2 
END 

IF ~~ like7 
SAY ~We have our differences, that's for sure.~ 
IF ~~ THEN + pid2 
END 

IF ~~ like8 
SAY ~I don't know why I'm still here.~ 
IF ~~ THEN + pid2 
END 

/* What do you think of my leadership */ 

IF ~~ leader1 
SAY ~I'm proud to be a part of your group.~ 
IF ~~ THEN + pid2 
END 

IF ~~ leader2 
SAY ~I should be more than satisfied with your leadership, but I find it difficult to accept some of your decisions.~ 
IF ~~ THEN + pid2 
END 

IF ~~ leader3 
SAY ~You're a fine leader.~ 
IF ~~ THEN + pid2 
END 

IF ~~ leader4 
SAY ~I can't complain, though I don't always agree with everything you do.~ 
IF ~~ THEN + pid2 
END 

IF ~~ leader5 
SAY ~You do alright.~ 
IF ~~ THEN + pid2 
END 

IF ~~ leader6 
SAY ~I always get the hard questions.~ 
IF ~~ THEN + pid2 
END 

IF ~~ leader7 
SAY ~You have many opportunities to improve.~ 
IF ~~ THEN + pid2 
END 

IF ~~ leader8 
SAY ~You need help... and a better conscience.~ 
IF ~~ THEN + pid2 
END 

IF ~~ leader9 
SAY ~I don't think much of it, to be completely honest with you.~ 
IF ~~ THEN + pid2 
END 

IF ~~ leader10 
SAY ~I don't even know why I'm here.~ 
IF ~~ THEN + pid2 
END 

/* General chat stuff */ 

IF ~~ gav_shadow 
SAY ~He meant that the remains of those that were righteous in life become powerful and terrifying undead.~ 
++ ~Is it true?~ + gav_shadow1 
++ ~That's a disturbing thought.~ + gav_shadow2 
++ ~Wouldn't you have any control over that?~ + gav_shadow3 
++ ~Ah, I see.~ + gav_shadow4 
END 

IF ~~ gav_shadow1 
SAY ~I don't know. It might be.~ 
IF ~~ THEN + gav_shadow4 
END 

IF ~~ gav_shadow2 
SAY ~Indeed.~ 
IF ~~ THEN + gav_shadow4 
END 

IF ~~ gav_shadow3 
SAY ~Probably not.~ 
IF ~~ THEN + gav_shadow4 
END 

IF ~~ gav_shadow4 
SAY ~This isn't something I'm comfortable talking about.~ 
IF ~~ THEN + pid2 
END 

IF ~~ dawn_ritual 
SAY ~In some ways, it was familiar. In the first part of the ritual that you recited, the worshiper says a prayer to greet the rising sun. That part is the same, though the prayer should be timed to end as the first rays of the new day break over the horizon. In the next step, a worshiper of Amaunator would have raised the book to be blessed by the first light. I would have raised my holy symbol. The third act would have been the same, rejoicing at the victory of light over darkness.~ 
++ ~Maybe the faiths are more similar than you thought.~  + dr_1 
++ ~So why did you say that the ritual felt alien?~ + dr_2 
++ ~I see.~ + pid2 
END 

IF ~~ dr_1 
SAY ~Perhaps, though it still feels... odd.~ 
IF ~~ THEN + dr_2 
END 

IF ~~ dr_2 
SAY ~The somatics are the same, but the meanings are different. I greet the rising sun as I would greet the bringer of life and hope, and the physical manifestation of my god. It isn't just 'Hmm, daylight. Time to say a prayer.'~ 
= ~Then, when I raise my holy symbol, it's almost as if the sunlight charges it. It's probably my imagination, but it feels warmer afterward.~ 
= ~And then, at the end, it's as much of a symbolic victory over the darkness of hate and despair as it is the literal brightening of shadows.~ 
= ~To me, the Amaunatori Dawn Ritual seemed hollow, somehow, though the forms were familiar.~ 
++ ~I'm sure the rituals of your faith would seem just as hollow to an outsider.~ + dr_3 
++ ~You think about all that before the sun is even properly over the horizon?~ + dr_4 
++ ~It's just words, Gavin. You're making too much of it.~ + dr_5 
++ ~It's a dead religion. You didn't expect anything to actually happen when I did those things, did you?~ + dr_3 
END 

IF ~~ dr_3 
SAY ~Hmm. You're probably right.~ 
IF ~~ THEN + pid2 
END 

IF ~~ dr_4 
SAY ~It takes years of training.~ 
IF ~~ THEN + pid2 
END 

IF ~~ dr_5 
SAY ~I wouldn't expect you to understand.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hammer 
SAY ~Dawnbringers usually use maces, but we aren't obligated to do so. I prefer hammers because, while a mace is always a weapon, a hammer is just a tool. It's a reminder that it's my decisions, not my abilities, that make me who I am.~ 
IF ~~ THEN + pid2 
END 

IF ~~ draw1 
SAY ~Certainly. I'll have it for you tomorrow.~ 
IF ~~ THEN DO ~SetGlobal("B!GavArt","GLOBAL",2) 
      SetGlobalTimer("B!GavArtT","GLOBAL",ONE_DAY)~ + pid2 
END 

IF ~~ draw2 
SAY ~Aye, here it is.~ 
IF ~~ THEN DO ~GiveItemCreate("b!sketch",Player1,0,0,0) 
      SetGlobal("B!GavArt","GLOBAL",1)~ + pid2 
END 

IF ~~ draw3 
SAY ~Not quite.~ 
IF ~~ THEN + pid2 
END 

IF ~~ draw4 
SAY ~I like to draw.~ 
+ ~!Global("B!GavNoBG1","GLOBAL",1)~ + ~That's right, I remember that you used to keep a sketchbook with you.~ + pid2 
+ ~Global("B!GavArt","GLOBAL",0)~ + ~You know, you could probably earn some coin doing that. Even if your drawings only sold for a few gold apiece, it would help.~ + draw5 
++ ~Interesting.~ + pid2 
++ ~That explains why you're always getting lost. You're always looking at the scenery.~ + draw6 
END 

IF ~~ draw5 
SAY ~I'd be happy to help out any way I can. Just let me know when you want me to draw something.~ 
IF ~~ THEN DO ~SetGlobal("B!GavArt","GLOBAL",1)~ + pid2 
END 

IF ~~ draw6 
SAY ~I never had a good sense of direction.~ 
IF ~~ THEN + pid2 
END 

IF ~~ beregost1 
SAY ~Apart from my duties at the temple? Well, my family was there... Lanie, that is... so I mostly just did everyday things, like fix things around the house or run errands.~ 
IF ~~ THEN + pid2 
END 

IF ~~ beregost2 
SAY ~My temple duties ended in the later part of the afternoon, so I'd usually go to the cottage and play with Lanie for a while.~ 
IF ~~ THEN + pid2 
END 

IF ~~ beregost3 
SAY ~In the evenings, I'd sometimes go to the Red Sheaf for a mug of ale and a bit of gossip.~ 
IF ~~ THEN + pid2 
END 

IF ~~ beregost4 
SAY ~Dawnbringers are usually called upon to bless new ventures, like business partnerships or the building of a new home, or to witness marriages and births, so I was usually there on behalf of the Temple, but I got to know the inhabitants pretty well.~ 
IF ~~ THEN + pid2 
END 

IF ~~ WhyCleric 
SAY ~I was always devoted to the Morninglord, ever since I was a small child, so when I found out that I could heal people with magic, it seemed like the logical thing to do.~ 
++ ~How old were you when that happened?~ + WC_HowOld 
++ ~Did you ever consider doing anything else?~ + WC_job 
++ ~Have you ever regretted that decision?~ + WC_regret 
++ ~What were your duties at the temple?~ + WC_duties
END 

IF ~~ WC_HowOld 
SAY ~I had twelve summers, at the time. After a seven year novitiate, I became a Dawnbringer.~ 
IF ~~ THEN + pid2 
END 

IF ~~ WC_job 
SAY ~No, not really. I was so young when I developed my talents that it never occurred to me to try to be anything else. Was there something you had in mind?~ 
++ ~You like music. Have you ever thought about becoming a bard?~ + WC_bard 
++ ~You like being outdoors. You could have been a druid.~ + WC_druid 
++ ~You've got a bit of muscle on you, and apart from the whole spiders thing, you do well enough in combat. You would have made a good warrior.~ + WC_fighter 
++ ~You like magic. Have you ever thought of trying your hand at it?~ + WC_mage 
++ ~You're passionate about your causes, and you always try to do what's right. You could have been a paladin.~ + WC_paladin 
++ ~You like nature and your fighting skills aren't bad. You might have made a good ranger.~ + WC_ranger 
++ ~You're good with your hands, and you're certainly nimble, even if you do trip over your own feet from time to time. Something roguish might have suited you.~ + WC_thief
++ ~There are times we could use a blacksmith.~ + WC_blacksmith 
+ ~Global("B!GavArt","GLOBAL",0)~ + ~You like to draw, and your work is pretty good. The extra coin would be welcome, if you ever decided to sell any of it.~ + WC_artist 
END 

IF ~~ WC_bard 
SAY ~Have you ever heard me sing? Bad idea.~ 
IF ~~ THEN + pid2 
END 

IF ~~ WC_druid 
SAY ~I'm alright brewing potions, but I'm really bad keeping plants alive. It seems like all I have to do is look at them and they wither and die. And I'm not really all that good with animals, either, so it's probably for the best that I became a cleric instead.~ 
IF ~~ THEN + pid2 
END 

IF ~~ WC_fighter 
SAY ~Er... have you noticed how clumsy I get when I'm under stress? Besides, I was never really interested in perfecting my fighting skills.~ 
IF ~~ THEN + pid2 
END 

IF ~~ WC_mage 
SAY ~I'm not really bright enough for that.~ 
IF ~~ THEN + pid2 
END 

IF ~~ WC_paladin 
SAY ~I thought about that one once, but not everyone who wants to become a paladin has what it takes to succeed. I'll never have that kind of discipline.~ 
IF ~~ THEN + pid2 
END 

IF ~~ WC_ranger 
SAY ~Heh. I like being around other people too much. I'd never be able to take the solitude.~ 
IF ~~ THEN + pid2 
END 

IF ~~ WC_thief 
SAY ~Not a chance. I know that not all thieves are evil backstabbers, but I just couldn't bring myself to do some of the things thieves do.~ 
IF ~~ THEN + pid2 
END 

IF ~~ WC_blacksmith 
SAY ~I can pound dents out of armor as well as the next man, and if you've got some gear that needs mending, I'm your man, but if you think I'm going to walk around Faerun with a forge on my back and a sack of coal under each arm, you're crazy.~ 
IF ~~ THEN + pid2 
END 

IF ~~ WC_artist 
SAY ~Do you really think anyone would buy it?~ 
++ ~Sure, why not?~ + WC_artist1 
++ ~Good point.~ + pid2  
END 

IF ~~ WC_artist1 
SAY ~Well, it's charcoal sketches mostly, but if you find a buyer and let me know when you want a sketch to sell, I'll make one up for you.~ 
IF ~~ THEN DO ~SetGlobal("B!GavArt","GLOBAL",1)~ + pid2 
END 

IF ~~ WC_regret 
SAY ~Never.~ 
IF ~~ THEN + pid2 
END 

IF ~~ WC_duties 
SAY ~Dawnbringers are usually called upon to bless every new venture, so it mostly pertained to that. People would call on us when they were going into a new trade or building a house. Or they would call us if someone was was getting married or giving birth to a child. And then we had healing duties to attend, or delivering messages to other local temples. We also tended the temple fields, brewed potions for the sick, and generally did whatever needed doing.~ 
IF ~~ THEN + pid2 
END 


/* Party management stuff */ 

IF ~~ HealPrefs 
SAY ~I can do that.~ 
IF ~~ THEN + pid2 
END 

IF ~~ LessInterject 
SAY ~If that's what you'd prefer, I can oblige.~ 
IF ~~ THEN DO ~SetGlobal("B!GavLessInterject","GLOBAL",1)~ + pid2 
END 

IF ~~ ShutUp 
SAY ~How... blunt.~ 
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-1) 
      IncrementGlobal("B!GavOffend","GLOBAL",1) 
      SetGlobal("B!GavLessInterject","GLOBAL",1)~ + pid2 
END 

IF ~~ SpeakUp 
SAY ~Thanks. I'll keep that in mind.~ 
IF ~~ THEN DO ~SetGlobal("B!GavLessInterject","GLOBAL",0)~ + pid2 
END 

/* Relationship management */ 

IF ~~ Restart0 
SAY ~I'm sorry, too.~ 
+ ~OR(2) Global("B!GavRomBreak","GLOBAL",2) 
      GlobalGT("B!GavOffend","GLOBAL",6)~ + ~Is there any chance we can try again?~ + Restart1 
+ ~Global("B!GavRomBreak","GLOBAL",1) 
      !GlobalGT("B!GavOffend","GLOBAL",6)
      !Global("B!GavSerious","GLOBAL",3) 
      !Global("AnomenRomanceActive","GLOBAL",2) 
      !Global("EdwinRomanceActive","GLOBAL",2) 
      !GlobalGT("B!GavTalk","GLOBAL",22)~ + ~Is there any chance we can try again?~ + Restart3 
+ ~Global("B!GavRomBreak","GLOBAL",1) 
      !GlobalGT("B!GavOffend","GLOBAL",6)
      !Global("B!GavSerious","GLOBAL",3) 
      !Global("AnomenRomanceActive","GLOBAL",2) 
      !Global("EdwinRomanceActive","GLOBAL",2) 
      GlobalGT("B!GavTalk","GLOBAL",22) 
      !Alignment(Player1,MASK_EVIL)~ + ~Is there any chance we can try again?~ + Restart3 
+ ~Global("B!GavRomBreak","GLOBAL",1) 
      !GlobalGT("B!GavOffend","GLOBAL",6)
      !Global("B!GavSerious","GLOBAL",3) 
      !Global("AnomenRomanceActive","GLOBAL",2) 
      !Global("EdwinRomanceActive","GLOBAL",2) 
      GlobalGT("B!GavTalk","GLOBAL",22) 
      Alignment(Player1,MASK_EVIL)~ + ~Is there any chance we can try again?~ + Restart3a 
+ ~Global("B!GavRomBreak","GLOBAL",1) 
      !GlobalGT("B!GavOffend","GLOBAL",6)
      OR(2) 
            Global("AnomenRomanceActive","GLOBAL",2) 
            Global("EdwinRomanceActive","GLOBAL",2)~ + ~Is there any chance we can try again?~ + Restart2a 
+ ~Global("B!GavRomBreak","GLOBAL",1) 
      !GlobalGT("B!GavOffend","GLOBAL",6)
      Global("B!GavSerious","GLOBAL",3) 
      !Global("AnomenRomanceActive","GLOBAL",2) 
      !Global("EdwinRomanceActive","GLOBAL",2)~ + ~Is there any chance we can try again?~ + Restart2 
++ ~I just wanted you to know.~ + Restart4 
END 

IF ~~ Restart1 
SAY ~No. I'm sorry, but it's too late for that.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Restart2 
SAY ~You know, I believe we could. Would you want things to go back to the way they were before our... misunderstanding?~ 
++ ~I'd like that.~ DO ~SetGlobal("B!GavRA","GLOBAL",2)~ + Restart5 
++ ~Maybe someday. I wouldn't say it was impossible, but I need time. I need to be sure.~ DO ~SetGlobal("B!GavLove","GLOBAL",12) 
      SetGlobal("B!GavSerious","GLOBAL",0) 
      SetGlobal("B!GavRA","GLOBAL",1)~ + Restart6 
++ ~I don't know. I'm starting to think it was the very idea of commitment that drove me away the first time.~ + Restart7 
++ ~No, I don't think I can do this, after all. It hurts to let you go, but I'm just not ready yet.~ + Restart6 
END 

IF ~~ Restart2a 
SAY ~I'm sorry, but I can't. Not while another holds such a place in your heart.~ 
+ ~Global("AnomenRomanceActive","GLOBAL",2) 
      Global("B!GavSerious","GLOBAL",3)~ + ~Then I'll end it with Anomen. Could we do it then?~ DO ~SetGlobal("B!GavCheater","GLOBAL",1)~ + Restart2
+ ~Global("EdwinRomanceActive","GLOBAL",2) 
      Global("B!GavSerious","GLOBAL",3)~ + ~Then I'll end it with Edwin. Could we do it then?~ DO ~SetGlobal("B!GavCheater","GLOBAL",1)~ + Restart2
+ ~Global("AnomenRomanceActive","GLOBAL",2) 
      !Global("B!GavSerious","GLOBAL",3)~ + ~Then I'll end it with Anomen. Could we do it then?~ DO ~SetGlobal("B!GavCheater","GLOBAL",1)~ + Restart3
+ ~Global("EdwinRomanceActive","GLOBAL",2) 
      !Global("B!GavSerious","GLOBAL",3)~ + ~Then I'll end it with Edwin. Could we do it then?~ DO ~SetGlobal("B!GavCheater","GLOBAL",1)~ + Restart3
END 

IF ~~ Restart3 
SAY ~You know, I believe we could.~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",1)~ + pid2 
END 

IF ~~ Restart3a 
SAY ~That depends. Can you acknowledge the change in your beliefs?~ 
+ ~GlobalGT("B!GavChange","GLOBAL",2)~ + ~Yes, I can.~ + Restart3a1 
++ ~No, I can't.~ + Restart3a2 
END 

IF ~~ Restart3a1 
SAY ~Then I believe we could.~ 
IF ~Alignment(Player1,LAWFUL_EVIL)~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",2) 
      SetGlobal("B!GavLERedeem","GLOBAL",1)~ EXIT 
IF ~Alignment(Player1,NEUTRAL_EVIL)~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",2) 
      SetGlobal("B!GavNERedeem","GLOBAL",1)~ EXIT 
IF ~Alignment(Player1,CHAOTIC_EVIL)~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",2) 
      SetGlobal("B!GavCERedeem","GLOBAL",1)~ EXIT 
END 

IF ~~ Restart3a2 
SAY ~Then I'm sorry, but it's just not possible.~ 
IF ~~ THEN EXIT 
END 

IF ~~ Restart4 
SAY ~Thank you for telling me.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Restart5 
SAY ~So would I.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Restart6 
SAY ~I understand.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Restart7 
SAY ~Are you sure that's what you want? You know how important commitment is to me.~ 
++ ~I'm not afraid of commitment, exactly, but I think I might need more time.~ + Restart8 
++ ~I don't know. I never expected it to be this hard.~ + Restart8 
++ ~I don't want to hold you back, but I have to do what's right for me.~ + Restart8 
++ ~Commitment might be important to you, but I hate the idea of it. I need to be free.~ + Restart8 
++ ~It isn't always about you, Gavin. If it's going to work, it has to be right for both of us.~ + Restart8 
++ ~It's hard, Gavin. I don't like being apart from you, but commitment terrifies me.~ + Restart8 
++ ~I think I need to think about it some more.~ + Restart9  
++ ~Maybe all I need is time. I think if we don't rush, and let things develop at their own pace, I might be ready to commit to you someday.~ DO ~SetGlobal("B!GavLove","GLOBAL",12) 
      SetGlobal("B!GavSerious","GLOBAL",0) 
      SetGlobal("B!GavRA","GLOBAL",1)~ + Restart6 
++ ~I don't know what I want. I just don't know.~ + Restart9 
END 

IF ~~ Restart8 
SAY ~I don't want you to be unhappy. You have to do what's right for you. I'll survive, no matter what you choose.~ 
++ ~I enjoy your company, and I like the... intimacy... we share, but I just don't want the commitment. I want the freedom to pursue other options.~ + Restart10 
+ ~Global("B!GavinEngaged","GLOBAL",1)~ + ~I just need to get used to the idea of being with someone. When you courted me before, I was swept off my feet, but our separation made me think. I need more time to decide what I'm going to do.~ + Restart11 
++ ~I feel rushed, like you're trying to push me into a commitment before we're ready.~ + Restart11 
+ ~Global("B!GavSex","GLOBAL",1)~ + ~I like sleeping with you, but I don't want to be tied down.~ + Restart10 
++ ~I'm a flirt, Gavin. I enjoy it too much to give it up, even for you.~ + Restart10 
++ ~I don't know what I want. I just don't know.~ + Restart9 
END 

IF ~~ Restart9 
SAY ~Why don't you sleep on it for a while. We can talk about it again when you've had time to focus your thoughts and decide what you want from a relationship.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Restart10 
SAY ~Let me make sure I understand you, because if we start down this road, there is no turning back.~ 
= ~You want to go back to talking and flirting like we used to do, or sharing my bed, if the mood takes you, but you want to be able to lie with any other man you choose?~ 
++ ~That is exactly what I want.~ + Restart12 
++ ~I don't know if I'd put it so bluntly, but yes.~ + Restart12 
++ ~No, Gavin, I don't want to bed other men. I just don't want a commitment. Like it was before we became engaged.~ + Restart13 
++ ~I think I'd rather just be friends.~ + Restart14 
END 

IF ~~ Restart11 
SAY ~Gods, the last thing I wanted to do was rush you about something that important. How can we make this right?~ 
++ ~I'd like to leave things as they are and think about it for a while.~ + Restart6 
++ ~I want things to be like they were before we became engaged.~ + Restart13 
+ ~Global("B!GavSex","GLOBAL",1)~ + ~I'll be honest. I did enjoy lying with you, so I'd like to be able to do that again, I just don't want the commitment that goes along with it.~ + Restart10 
++ ~I just don't know.~ + Restart9 
END 

IF ~~ Restart12 
SAY ~Are you absolutely certain? Because if this is what you choose, there is no going back, and if you put me aside even then, it really will be over between us.~ 
++ ~Can you explain that a little more fully?~ + Restart15 
++ ~I am certain. I want a casual relationship with you and the freedom to do what I want with anyone else.~ + Restart15 
++ ~On second thought, maybe I should think about it a little longer.~ + Restart9 
END 

IF ~~ Restart13 
SAY ~I can do that.~ 
IF ~~ THEN DO ~SetGlobal("B!GavLove","GLOBAL",12) 
      SetGlobal("B!GavSerious","GLOBAL",0) 
      SetGlobal("B!GavRA","GLOBAL",1)~ + pid2 
END 

IF ~~ Restart14 
SAY ~At least we have that.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Restart15 
SAY ~It would mean that if I agree to be your plaything, with no promise of a future, there are going to be some changes.~ 
= ~If you send me from your side for any reason, it's over. Even if you ask me to come back, we will never be any more than friends.~ 
= ~And if you choose to come to my bed, I'll do whatever I have to do to make sure there are no consequences. I will not father a child I can't raise.~ 
++ ~So, there's no downside! I like it!~ + Restart16 
++ ~I can accept those terms.~ + Restart16 
++ ~Maybe we could just go back to the way it was before we became engaged.~ + Restart13 
++ ~Maybe I should think about this some more.~ + Restart6 
END 

IF ~~ Restart16 
SAY ~If that's the way you want it.~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",4)~ + pid2 
END 

/* Personal matters */ 

IF ~~ Talk0 
SAY ~What's on your mind?~ 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~Do you see this going anywhere?~ + Talk1 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Do you see this going anywhere?~ + Talk2 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Do you see this going anywhere?~ + Talk3 
//+ ~Global("B!GavRA","GLOBAL",1)~ + ~I think I'm in love.~ + InLove1 
//+ ~Global("B!GavRA","GLOBAL",2)~ + ~I think I'm in love.~ + InLove2 
//+ ~Global("B!GavRA","GLOBAL",4)~ + ~I think I'm in love.~ + InLove4 
+ ~Global("B!GavSerious","GLOBAL",3) 
      !Global("B!GavRA","GLOBAL",2) 
      !Global("B!GavRA","GLOBAL",4)~ + ~I've been thinking about your proposal to me, Gavin, and I've changed my mind. I would like to marry you, if you'll still have me.~ + accept_proposal 
+ ~Global("B!GavSex","GLOBAL",0) 
      OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4)~ + ~I've thought it through, and I think I'm ready. Will you come to my bed tonight?~ + FirstSex 
+ ~Global("B!GavSex","GLOBAL",1) 
      OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4)~ + ~Will you come to my bed tonight?~ + WantsSex 
+ ~RandomNum(4,1) 
      Global("B!GavSex","GLOBAL",1) 
      OR(2) 
        Global("B!GavRA","GLOBAL",2) 
        Global("B!GavRA","GLOBAL",4) 
      OR(11)
        AreaCheck("AR0021") 
        AreaCheck("AR0313") 
        AreaCheck("AR0406") 
        AreaCheck("AR0509") 
        AreaCheck("AR0513") 
        AreaCheck("AR0522") 
        AreaCheck("AR0704") 
        AreaCheck("AR0709") 
        AreaCheck("AR1105") 
        AreaCheck("AR1602") 
        AreaCheck("AR2010")~ + ~Let's have a bath sent to our room.~ + bath1 
+ ~RandomNum(4,2) 
      Global("B!GavSex","GLOBAL",1) 
      OR(2) 
        Global("B!GavRA","GLOBAL",2) 
        Global("B!GavRA","GLOBAL",4) 
      OR(11)
        AreaCheck("AR0021") 
        AreaCheck("AR0313") 
        AreaCheck("AR0406") 
        AreaCheck("AR0509") 
        AreaCheck("AR0513") 
        AreaCheck("AR0522") 
        AreaCheck("AR0704") 
        AreaCheck("AR0709") 
        AreaCheck("AR1105") 
        AreaCheck("AR1602") 
        AreaCheck("AR2010")~ + ~Let's have a bath sent to our room.~ + bath2 
+ ~RandomNum(4,3) 
      Global("B!GavSex","GLOBAL",1) 
      OR(2) 
        Global("B!GavRA","GLOBAL",2) 
        Global("B!GavRA","GLOBAL",4) 
      OR(11)
        AreaCheck("AR0021") 
        AreaCheck("AR0313") 
        AreaCheck("AR0406") 
        AreaCheck("AR0509") 
        AreaCheck("AR0513") 
        AreaCheck("AR0522") 
        AreaCheck("AR0704") 
        AreaCheck("AR0709") 
        AreaCheck("AR1105") 
        AreaCheck("AR1602") 
        AreaCheck("AR2010")~ + ~Let's have a bath sent to our room.~ + bath3 
+ ~RandomNum(4,4) 
      Global("B!GavSex","GLOBAL",1) 
      OR(2) 
        Global("B!GavRA","GLOBAL",2) 
        Global("B!GavRA","GLOBAL",4) 
      OR(11)
        AreaCheck("AR0021") 
        AreaCheck("AR0313") 
        AreaCheck("AR0406") 
        AreaCheck("AR0509") 
        AreaCheck("AR0513") 
        AreaCheck("AR0522") 
        AreaCheck("AR0704") 
        AreaCheck("AR0709") 
        AreaCheck("AR1105") 
        AreaCheck("AR1602") 
        AreaCheck("AR2010")~ + ~Let's have a bath sent to our room.~ + bath4 
+ ~!Global("B!GavExplicit","GLOBAL",1)~ + ~You don't have to mind your language around me. I like it when you're naughty.~ + naughty 
+ ~Global("B!GavExplicit","GLOBAL",1)~ + ~Don't take this the wrong way, but I have rather delicate sensibilities. Some of the things you say are a bit offensive.~ + chlorox 
+ ~Global("B!GavCassil","LOCALS",3)~ + ~Do you remember that talk we had about responsibility and your desire not to bring a child into the world right now?~ + cassil 
+ ~Global("B!GavRA","GLOBAL",1) 
      OR(19) 
          Global("B!GavREAnishai","LOCALS",3) 
          Global("B!GavREAran","LOCALS",3) 
          Global("B!GavREBjornin","LOCALS",3) 
          Global("B!GavREChanelle","LOCALS",3) 
          Global("B!GavRECoran","LOCALS",3) 
          Global("B!GavREDesharik","LOCALS",3) 
          Global("B!GavREEdwin","LOCALS",3) 
          Global("B!GavREEldoth","LOCALS",3) 
          Global("B!GavREGaelan","LOCALS",3) 
          Global("B!GavREGarren","LOCALS",3) 
          Global("B!GavREJarlaxle","LOCALS",3) 
          Global("B!GavRELaran","LOCALS",3) 
          Global("B!GavRELogan","LOCALS",3) 
          Global("B!GavREMekrath","LOCALS",3) 
          Global("B!GavRERibald","LOCALS",3) 
          Global("B!GavRESaemon","LOCALS",3) 
          Global("B!GavRESolaufein","LOCALS",3) 
          Global("B!GavRETalak","LOCALS",3) 
          Global("B!GavRECernd","LOCALS",3)~ + ~I wanted to talk to you about something that happened earlier... an indiscretion I made.~ + re_forgive 
+ ~Global("B!GavNoFlirt","GLOBAL",0)~ + ~I don't want you to stop talking to me, Gavin, but would you mind not flirting with me so much? It gets a little distracting, at times.~ DO ~SetGlobal("B!GavNoFlirt","GLOBAL",1)~ + Talk4 
+ ~Global("B!GavNoFlirt","GLOBAL",1)~ + ~You used to pay me a lot more attention than you do now. I miss it.~ DO ~SetGlobal("B!GavNoFlirt","GLOBAL",0)~ + Talk4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~This is difficult for me to say, but I'm beginning to think we should end our engagement.~ + Talk5
+ ~Global("B!GavRA","GLOBAL",1)~ + ~I'm sorry, Gavin, but we need to end this.~ DO ~SetGlobal("B!GavRomBreak","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",-1) 
      SetGlobal("B!GavRA","GLOBAL",3)~ + Talk6 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I'm sorry, Gavin, but we need to end this.~ DO ~SetGlobal("B!GavRomBreak","GLOBAL",2) 
      IncrementGlobal("B!GavLove","GLOBAL",-3) 
      SetGlobal("B!GavRA","GLOBAL",3)~ + Talk7 
++ ~Nevermind.~ + pid2 
END 


/* Bathing flirts */ 

IF ~~ bath1 
SAY ~You want to bathe together? No, <CHARNAME>, I don't think that's a good idea.~ 
+ ~GlobalLT("B!GavLove","GLOBAL",25)~ + ~Oh, come on, Gavin! It will be fun!~ + bath_1 
+ ~!GlobalLT("B!GavLove","GLOBAL",25)~ + ~Oh, come on, Gavin! It will be fun!~ + bath_2 
+ ~GlobalLT("B!GavLove","GLOBAL",25)~ + ~Why not? You like trying new things.~ + bath_1 
+ ~!GlobalLT("B!GavLove","GLOBAL",25)~ + ~Why not? You like trying new things.~ + bath_2 
+ ~GlobalLT("B!GavLove","GLOBAL",25)~ + ~Why so bashful? I've seen you naked before.~ + bath_3 
+ ~!GlobalLT("B!GavLove","GLOBAL",25)~ + ~Why so bashful? I've seen you naked before.~ + bath_4 
+ ~GlobalLT("B!GavLove","GLOBAL",25) Global("B!GavRA","GLOBAL",2)~ + ~You'd do it if you loved me.~ + bath_5 
+ ~!GlobalLT("B!GavLove","GLOBAL",25) Global("B!GavRA","GLOBAL",2)~ + ~You'd do it if you loved me.~ + bath_6 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~You'd do it if you cared about me at all.~ + bath_5 
++ ~Nevermind, then.~ + bath_exit 
END 

IF ~~ bath2  
SAY ~I'll take a bath before I come to your room, but I would rather do it alone.~ 
+ ~GlobalLT("B!GavLove","GLOBAL",25)~ + ~Oh, come on, Gavin! It will be fun!~ + bath_1 
+ ~!GlobalLT("B!GavLove","GLOBAL",25)~ + ~Oh, come on, Gavin! It will be fun!~ + bath_2 
+ ~GlobalLT("B!GavLove","GLOBAL",25)~ + ~Let's do it together. You like trying new things.~ + bath_1 
+ ~!GlobalLT("B!GavLove","GLOBAL",25)~ + ~Let's do it together. You like trying new things.~ + bath_2 
+ ~GlobalLT("B!GavLove","GLOBAL",25)~ + ~Why so bashful? I've seen you naked before.~ + bath_3 
+ ~!GlobalLT("B!GavLove","GLOBAL",25)~ + ~Why so bashful? I've seen you naked before.~ + bath_4 
+ ~GlobalLT("B!GavLove","GLOBAL",25) Global("B!GavRA","GLOBAL",2)~ + ~You'd do it if you loved me.~ + bath_5 
+ ~!GlobalLT("B!GavLove","GLOBAL",25) Global("B!GavRA","GLOBAL",2)~ + ~You'd do it if you loved me.~ + bath_6 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~You'd do it if you cared about me at all.~ + bath_5 
++ ~Nevermind, then.~ + bath_exit 
END 

IF ~~ bath3 
SAY ~I was planning on taking a bath anyway, but that's something I usually do alone.~ 
+ ~GlobalLT("B!GavLove","GLOBAL",25)~ + ~Oh, come on, Gavin! It will be fun!~ + bath_1 
+ ~!GlobalLT("B!GavLove","GLOBAL",25)~ + ~Oh, come on, Gavin! It will be fun!~ + bath_2 
+ ~GlobalLT("B!GavLove","GLOBAL",25)~ + ~Let's do it together. You like trying new things.~ + bath_1 
+ ~!GlobalLT("B!GavLove","GLOBAL",25)~ + ~Let's do it together. You like trying new things.~ + bath_2 
+ ~GlobalLT("B!GavLove","GLOBAL",25)~ + ~Why so bashful? I've seen you naked before.~ + bath_3 
+ ~!GlobalLT("B!GavLove","GLOBAL",25)~ + ~Why so bashful? I've seen you naked before.~ + bath_4 
+ ~GlobalLT("B!GavLove","GLOBAL",25) Global("B!GavRA","GLOBAL",2)~ + ~You'd do it if you loved me.~ + bath_5 
+ ~!GlobalLT("B!GavLove","GLOBAL",25) Global("B!GavRA","GLOBAL",2)~ + ~You'd do it if you loved me.~ + bath_6 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~You'd do it if you cared about me at all.~ + bath_5 
++ ~Nevermind, then.~ + bath_exit 
END 

IF ~~ bath4 
SAY ~Sorry to disappoint you, but I'd really rather bathe alone.~ 
+ ~GlobalLT("B!GavLove","GLOBAL",25)~ + ~Oh, come on, Gavin! It will be fun!~ + bath_1 
+ ~!GlobalLT("B!GavLove","GLOBAL",25)~ + ~Oh, come on, Gavin! It will be fun!~ + bath_2 
+ ~GlobalLT("B!GavLove","GLOBAL",25)~ + ~Let's do it together. You like trying new things.~ + bath_1 
+ ~!GlobalLT("B!GavLove","GLOBAL",25)~ + ~Let's do it together. You like trying new things.~ + bath_2 
+ ~GlobalLT("B!GavLove","GLOBAL",25)~ + ~Why so bashful? I've seen you naked before.~ + bath_3 
+ ~!GlobalLT("B!GavLove","GLOBAL",25)~ + ~Why so bashful? I've seen you naked before.~ + bath_4 
+ ~GlobalLT("B!GavLove","GLOBAL",25) Global("B!GavRA","GLOBAL",2)~ + ~You'd do it if you loved me.~ + bath_5 
+ ~!GlobalLT("B!GavLove","GLOBAL",25) Global("B!GavRA","GLOBAL",2)~ + ~You'd do it if you loved me.~ + bath_6 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~You'd do it if you cared about me at all.~ + bath_5 
++ ~Nevermind, then.~ + bath_exit 
END 

IF ~~ bath_exit 
SAY ~Thank you for understanding.~ 
IF ~~ THEN EXIT 
END 

IF ~~ bath_1 
SAY ~You know I always try to make you happy, but this really isn't something I enjoy.~ 
IF ~RandomNum(4,1)~ THEN + bath_no1 
IF ~RandomNum(4,2)~ THEN + bath_no2 
IF ~RandomNum(4,3)~ THEN + bath_no3 
IF ~RandomNum(4,4)~ THEN + bath_no4 
END 

IF ~~ bath_2 
SAY ~Oh, alright... though I want you to know that I'm only agreeing to this because I want to make you happy.~ 
IF ~RandomNum(4,1)~ THEN + bath_yes1 
IF ~RandomNum(4,2)~ THEN + bath_yes2 
IF ~RandomNum(4,3)~ THEN + bath_yes3 
IF ~RandomNum(4,4)~ THEN + bath_yes4 
END 

IF ~~ bath_3 
SAY ~That isn't the point. I'll lounge around naked in your room all night if you want, but when I'm in the tub, I want to get clean.~ 
IF ~RandomNum(4,1)~ THEN + bath_no1 
IF ~RandomNum(4,2)~ THEN + bath_no2 
IF ~RandomNum(4,3)~ THEN + bath_no3 
IF ~RandomNum(4,4)~ THEN + bath_no4 
END 

IF ~~ bath_4 
SAY ~That isn't the point... but I'll do it if it makes you happy.~ 
IF ~RandomNum(4,1)~ THEN + bath_yes1 
IF ~RandomNum(4,2)~ THEN + bath_yes2 
IF ~RandomNum(4,3)~ THEN + bath_yes3 
IF ~RandomNum(4,4)~ THEN + bath_yes4 
END 

IF ~~ bath_5 
SAY ~Who taught you that clever bit of manipulation? Now I've got to do it... though I'm acting under duress.~ 
IF ~RandomNum(4,1)~ THEN + bath_yes1 
IF ~RandomNum(4,2)~ THEN + bath_yes2 
IF ~RandomNum(4,3)~ THEN + bath_yes3 
IF ~RandomNum(4,4)~ THEN + bath_yes4 
END 

IF ~~ bath_6 
SAY ~(sigh) Of course I love you, dear. Very well, let's send for the tub.~ 
IF ~RandomNum(4,1)~ THEN + bath_yes1 
IF ~RandomNum(4,2)~ THEN + bath_yes2 
IF ~RandomNum(4,3)~ THEN + bath_yes3 
IF ~RandomNum(4,4)~ THEN + bath_yes4 
END 

IF ~~ bath_no1 
SAY ~I am sorry, <CHARNAME>, but I really do like that little bit of privacy I get in the bath. I hope you understand.~ 
IF ~~ THEN EXIT 
END 

IF ~~ bath_no2 
SAY ~Maybe some other time, alright?~ 
IF ~~ THEN EXIT 
END 

IF ~~ bath_no3 
SAY ~Besides, nobody wants to see somebody else scrubbing all the parts that need a good scrub, right?~ 
IF ~~ THEN EXIT 
END 

IF ~~ bath_no4 
SAY ~You should consider yourself lucky. You'd have to listen to me sing, otherwise.~ 
IF ~~ THEN EXIT 
END 

/* small tub */ 
IF ~~ bath_yes1 
SAY ~(You place your order with the innkeeper, who merely shrugs and rings for a chambermaid. Barely half an hour later, a timid woman appears at your elbow informing you that your bath is ready. When you reach your room, however, you see that the wooden tub in your room is quite small, barely large enough for one, and certainly not big enough for two.)~ 
= ~Isn't this always the way? How are we supposed to fit in that? How am *I* supposed to fit in that?~ 
++ ~We'll just have to bathe standing up. It won't be that bad.~ + bath_y11 
++ ~It might work if I sit on your lap.~ + bath_y12 
++ ~We can sit on the edge of the tub and sponge each other off.~ + bath_y13 
++ ~I'll get in the tub and you can sit on the edge. We can still get clean even if we both aren't in the water.~ + bath_y14 
++ ~Maybe we should just take turns.~ + bath_separate 
END 

IF ~~ bath_y11 
SAY ~I'm game if you are... AAAIIYE!~ 
IF ~~ + bath_klutz 
END 

IF ~~ bath_y12 
SAY ~Aha... I see the prospect of having you on my lap is having its usual effect. If you get in that tub with me, you're likely to find your seat a little more invasive than you expect.~ 
++ ~It's all part of the plan, Gavin.~ + bath_sex 
++ ~I don't mind that one bit!~ + bath_sex 
++ ~Let's take turns, then.~ + bath_separate 
END 

IF ~~ bath_y13 
SAY ~Alright, it seems like the tub is strong enough to support us, after all. Now hand me that sponge...~ 
IF ~~ + bath_sponge 
END 

IF ~~ bath_y14 
SAY ~If it means I get to rub you all over, this might not be too bad!~ 
IF ~~ + bath_soap 
END 

/* big tub */ 
IF ~~ bath_yes2 
SAY ~(You place your order with the innkeeper, who merely shrugs and rings for a chambermaid. An hour or so later, a timid woman appears at your elbow informing you that your bath is ready. When you reach your room, you find an enormous copper bathtub and a large stack of fluffy towels.)~ 
= ~This is a pleasant change! We might actually be able to fit in this thing.~ 
++ ~What are you waiting for? Get in!~ + bath_y21 
++ ~We could have all kinds of fun in a tub like this!~ + bath_y22 
++ ~They even remembered the linens! Grab that sponge and let's get in.~ + bath_y23 
++ ~I even like the scent of the soap.~ + bath_y24 
++ ~Maybe we should stil take turns.~ + bath_separate 
END 

IF ~~ bath_y21 
SAY ~Alright, I'll just get in first so I don't knock you over with my flailing about... AAIIIYE!~ 
IF ~~ + bath_klutz 
END 

IF ~~ bath_y22 
SAY ~Aha... there seems to be a response from certain quarters already. If you get in that tub with me, I doubt that I'll be able to keep my mind on getting clean.~ 
++ ~It's all part of the plan, Gavin.~ + bath_sex 
++ ~I don't mind that one bit!~ + bath_sex 
++ ~Let's take turns, then.~ + bath_separate 
END 

IF ~~ bath_y23 
SAY ~Right. Let me just get this sponge nice and soapy...~ 
IF ~~ + bath_sponge 
END 

IF ~~ bath_y24 
SAY ~Hmmm, yes, and the thought of rubbing you all over with that is making this sound better and better.~ 
IF ~~ + bath_soap 
END 

/* hot water */ 
IF ~~ bath_yes3 
SAY ~(You place your order with the innkeeper, who merely shrugs and rings for a chambermaid. An hour or so later, a timid woman appears at your elbow informing you that your bath is ready. When you reach your room, the first thing you notice is the steam. The second thing you notice is that it all seems to be coming out of the bathtub, which is half-filled with scalding hot water.)~ 
= ~It might be a while before we can get that bath, after all.~ 
++ ~I think we're supposed to adjust the temperature with those buckets of water beside it.~ + bath_y31 
++ ~I'm sure you can think of something to do while we wait.~ + bath_y32 
++ ~If we just dip the sponge, we should be able to soap up without burning ourselves. By the time we're done with that, it will probably be cool enough to rinse off.~ + bath_y33 
++ ~Better too hot than too cold. Besides, it gives us longer to play!~ + bath_y34 
++ ~We'll wait a bit and then we'll take turns.~ + bath_separate 
END 

IF ~~ bath_y31 
SAY ~Alright, I'll just get the bucket and dump in some cold... AAIIYEE!~ 
IF ~~ + bath_klutz 
END 

IF ~~ bath_y32 
SAY ~Aha... it looks like some parts of me are getting some ideas of their own. I should be able to restrain myself until we can get in the water, but after that... well, I don't know how much washing you'll get done.~ 
++ ~It's all part of the plan, Gavin.~ + bath_sex 
++ ~I don't mind that one bit!~ + bath_sex 
++ ~Let's take turns, then.~ + bath_separate 
END 

IF ~~ bath_y33 
SAY ~Hmm, yes, it doesn't seem to be too bad this way. Let's just get this sponge soaped up...~ 
IF ~~ + bath_sponge 
END 

IF ~~ bath_y34 
SAY ~If you mean running my soapy hands all over your body, this might turn out better than I hoped.~ 
IF ~~ + bath_soap 
END 

/* cold water */ 
IF ~~ bath_yes4 
SAY ~(You place your order with the innkeeper, who merely shrugs and rings for a chambermaid. An hour or so later, a timid woman appears at your elbow informing you that your bath is ready. When you reach your room, you find a slimy-looking wooden tub with a few inches of ice-cold water in the bottom.)~ 
= ~This doesn't look too appealing, does it?~ 
++ ~Why don't you just run down to the kitchen for a couple of kettles of boiling water?~ + bath_y41 
++ ~Let's just wash off the worst of the grime and find a more pleasant diversion.~ + bath_y42 
++ ~We can just sponge each other off. We'll be spared the worst of the chill until it's time to rinse.~ + bath_y43 
++ ~We might as well make the most of it. At least the soap looks clean.~ + bath_y44 
++ ~Maybe we should just take turns. It would be quicker that way.~ + bath_separate 
END 

IF ~~ bath_y41 
SAY ~Good idea. I'll just grab one of these empty pails and... AAIIYEE!~ 
IF ~~ + bath_klutz 
END 

IF ~~ bath_y42 
SAY ~I'll just get in the tub then, and you can hold on to me to warm up... and it seems like the cold water isn't having its usual effect on me. I don't suppose you'd be inclined to help me with this...~ 
++ ~It's all part of the plan, Gavin.~ + bath_sex 
++ ~I don't mind that one bit!~ + bath_sex 
++ ~Let's take turns, then.~ + bath_separate 
END 

IF ~~ bath_y43 
SAY ~If you say so. I'll just get this sponge nice and soapy...~ 
IF ~~ + bath_sponge 
END 

IF ~~ bath_y44 
SAY ~That it does... and the prospect of running my soapy hands all over your body doesn't sound too bad, either.~ 
IF ~~ + bath_soap 
END 

IF ~~ bath_separate 
SAY ~~ 
++ ~I'll go first.~ + bath_pcfirst 
++ ~You can go first.~ + bath_gavfirst 
END 

IF ~~ bath_pcfirst 
SAY ~(The pleasure of being clean is about the only enjoyment you are likely to get out of this bath, as Gavin keeps himself to himself until you have finished. Once you are out of the water, he takes his turn, attacking his body vigorously with the washcloth and rinsing off before you have even finished combing out your hair.)~ 
= ~Well, we're clean, so we might as well get some rest. It will be another full day tomorrow.~ 
IF ~~ THEN DO ~RestParty()~ EXIT 
END 

IF ~~ bath_gavfirst 
SAY ~(Gavin bathes quickly, attacking his body vigorously with the washcloth and sluicing off the soap before you have even finished undressing. When your turn comes, the pleasure of being clean is about the only enjoyment you are likely to get out of this bath, as Gavin keeps himself to himself until you have finished.)~ 
= ~Well, we're clean, so we might as well get some rest. It will be another full day tomorrow.~ 
IF ~~ THEN DO ~RestParty()~ EXIT 
END 

IF ~~ bath_klutz 
SAY ~(Gavin's head hits the floor with a resounding crack, but he recovers quickly, struggling into a sitting position and raising a hand to the back of his head.)~ 
= ~Oh... water on the floor... don't feel so good...~ 
++ ~Are you alright?!~ + bath_klutz_end 
++ ~Brilliant, Gavin. You may have beaten your own record for executing the most spectacular feat of clumsiness ever.~ + bath_klutz_head 
++ ~These little gravitational challenges always seem to happen at the worst times.~ + bath_klutz_head 
++ ~I guess that rules out intimacy with you for a while.~ + bath_klutz_end  
END 

IF ~~ bath_klutz_end 
SAY ~I'll be alright after I've had a chance to lie down for a while. Luckily, that was the floorboard cracking, and not my skull. If you don't mind, though, I'd like to go someplace quiet for a while... get rid of this headache.~ 
IF ~~ THEN DO ~RestParty()~ EXIT 
END 

IF ~~ bath_klutz_head 
SAY ~Your concern for my wellbeing is truly touching.~ 
IF ~~ THEN + bath_klutz_end 
END 

IF ~~ bath_sex 
SAY ~(Your closeness invites touching, and touching soon becomes kissing... and then something more. When your exertions end at last, the little water that remains in the tub is barely tepid, but you are both completely satisfied.)~ 
= ~And now, my dear, it's time for bed.~ 
IF ~~ THEN DO ~RestParty()~ EXIT 
END 

IF ~~ bath_sponge 
SAY ~(He dabs the soapy sponge playfully on your chin, but quickly becomes engrossed in his task, running the sponge along your collarbone, then over your breast and down your flank.)~ 
++ ~Mmm, yes... don't stop there!~ + bath_sex 
++ ~No, Gavin, don't. Let's not get carried away!~ + bath_bed 
END 

IF ~~ bath_soap 
SAY ~(He eagerly soaps up both hands and begins stroking you.)~ 
++ ~Mmm, yes... don't stop there!~ + bath_sex 
++ ~No, Gavin, don't. Let's not get carried away!~ + bath_bed 
END 

IF ~~ bath_bed 
SAY ~Right. Maybe we'd better just finish up and get some rest.~ 
IF ~~ THEN DO ~RestParty()~ EXIT 
END 

/* Accept proposal */ 

IF ~~ accept_proposal 
SAY ~You have? That's wonderful! Thank you, <CHARNAME>! Nothing you could have said would have made me happier!~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",2) 
      IncrementGlobal("B!GavLove","GLOBAL",1)~ EXIT 
END 

/* Manage maturity level */ 

IF ~~ naughty 
SAY ~Are you sure? I can get a bit... er... explicit at times.~ 
++ ~Please do!~ DO ~SetGlobal("B!GavExplicit","GLOBAL",1)~ + ok_explicit 
++ ~On second thought, maybe you'd better continue to use restraint.~ + chlorox 
END 

IF ~~ ok_explicit 
SAY ~I'll keep that in mind.~ 
IF ~~ THEN + pid2 
END 

IF ~~ chlorox 
SAY ~Of course! I don't want to offend you.~ 
IF ~~ THEN DO ~SetGlobal("B!GavExplicit","GLOBAL",0)~ + pid2 
END 

/* Is this going anywhere? */ 

IF ~~ Talk1 
SAY ~I'm not sure I know what you mean.~ 
++ ~You know, you and I.~ + Talk1a 
++ ~I'm not sure I do, either.~ + Talk1b 
++ ~Are all men as dense as you?~ + Talk1c 
END 

IF ~~ Talk1a 
SAY ~Er... perhaps we'd better save that question for another day.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Talk1b 
SAY ~Ahem. Yes.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Talk1c 
SAY ~Most likely.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Talk2 
SAY ~I certainly hope so!~ 
IF ~~ THEN + pid2 
END 

IF ~~ Talk3 
SAY ~No. I used to think that maybe... but no, that door is closed forever.~ 
IF ~~ THEN + pid2 
END 

/* Turn NPC-initiated flirts on or off */ 

IF ~~ Talk4 
SAY ~If that's what you'd like, I can certainly oblige.~ 
IF ~~ THEN + pid2 
END 

/* Break up */ 

IF ~~ Talk5 
SAY ~What? Oh, <CHARNAME>, do you really mean that?~ 
++ ~I'm afraid I do, Gavin. We need to end this now before we start to resent each other.~ DO ~SetGlobal("B!RomBreak","GLOBAL",1) 
      IncrementGlobal("B!GavLove","GLOBAL",-1) 
      SetGlobal("B!GavRA","GLOBAL",3)~ + Talk5a 
++ ~It isn't working and there's nothing we can do to fix it. You are wrong for me, and always will be. It's over, and it's over for good.~ DO ~SetGlobal("B!RomBreak","GLOBAL",2) 
      IncrementGlobal("B!GavLove","GLOBAL",-3) 
      SetGlobal("B!GavRA","GLOBAL",3)~ + Talk5a 
++ ~I thought I could handle this, but I just can't. I wish things could go back to the way they were before we became engaged.~ DO ~SetGlobal("B!GavLove","GLOBAL",12) 
      SetGlobal("B!GavRA","GLOBAL",1)~ + Talk5b 
+ ~Global("B!GavSex","GLOBAL",1)~ + ~The lovemaking is all right, but the commitment is just too hard to take. I need to be free.~ + Restart8 
++ ~There are just so many things I still want to do before I get tied down.~ + Restart8 
++ ~You might be ready for 'forever,' but I'm not. I want to see what else is out there.~ + Restart8 
++ ~No... I guess I don't. Sometimes, the thought of being with one person forever is overwhelming, but I think we'll be all right.~ + Talk5c 
END 

IF ~~ Talk5a
SAY ~I'm sorry you feel that way, but I want you to be happy. If you want to end the engagement, well, that's the way it has to be.~ 
IF ~~ THEN EXIT 
END 

IF ~~ Talk5b 
SAY ~It won't be easy, but we can certainly try.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Talk5c 
SAY ~I think we will, too.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Talk6 
SAY ~Er... yes. If that's what you want.~ 
IF ~~ THEN EXIT 
END 

IF ~~ Talk7 
SAY ~I can't say I'm surprised, but it's just as well. This is not a life I would have chosen for myself.~ 
= ~Remember, though, that I said there is no going back. From this day forward, we will never be more than friends.~ 
IF ~~ THEN EXIT 
END 

/* PC initiates sex */ 

IF ~~ FirstSex 
SAY ~If you're ready...~ 
IF ~Global("B!GavRA","GLOBAL",2)~ THEN + FirstSex2 
IF ~Global("B!GavRA","GLOBAL",4)~ THEN + FirstSex4 
END 

IF ~~ FirstSex2 
SAY ~This is a big step, love, and I know I'm ready, but it has to be right for both of us. I'll come to you tonight, and we'll talk more about it then... alone.~ 
IF ~~ THEN DO ~SetGlobal("B!GavFirstNight","LOCALS",1)~ + pid2 
END 


IF ~~ FirstSex4 
SAY ~This is a big step, and I'm still willing, but it has to be your decision. I'll come to you tonight, and we'll talk more about it then... alone.~ 
IF ~~ THEN DO ~SetGlobal("B!GavFirstNight","LOCALS",1)~ + pid2 
END 

IF ~~ WantsSex 
SAY ~I will.~ 
IF ~~ THEN DO ~SetGlobal("B!GavPCWantsIt","LOCALS",1)~ + pid2 
END 

/* Romantic Encounters stuff */ 

IF ~~ re_forgive 
SAY ~Oh? What indiscretion are you talking about?~ 
+ ~Global("B!GavREAnishai","LOCALS",3)~ + ~My 'practice' with Anishai.~ DO ~SetGlobal("B!GavREAnishai","LOCALS",4)~ + re_anishai 
+ ~Global("B!GavREAran","LOCALS",3)~ + ~My meeting with Aran Linvail.~ DO ~SetGlobal("B!GavREAran","LOCALS",4)~ + re_aran 
+ ~Global("B!GavREBjornin","LOCALS",3)~ + ~What happened with Bjornin.~ DO ~SetGlobal("B!GavREBjornin","LOCALS",4)~ + re_bjornin 
+ ~Global("B!GavREChanelle","LOCALS",3)~ + ~What I said about Chanelle.~ DO ~SetGlobal("B!GavREChanelle","LOCALS",4)~  + re_chanelle 
+ ~Global("B!GavRECoran","LOCALS",3)~ + ~My night with Coran.~ DO ~SetGlobal("B!GavRE","LOCALSCoran",4)~ + re_coran 
+ ~Global("B!GavREDesharik","LOCALS",3)~ + ~What happened with Desharik.~ DO ~SetGlobal("B!GavREDesharik","LOCALS",4)~  + re_desharik 
+ ~Global("B!GavREEdwin","LOCALS",3)~ + ~You know, with Edwin.~ DO ~SetGlobal("B!GavREEdwin","LOCALS",4)~ + re_edwin 
+ ~Global("B!GavREEldoth","LOCALS",3)~ + ~That foolishness with Eldoth.~ DO ~SetGlobal("B!GavREEldoth","LOCALS",4)~ + re_eldoth 
+ ~Global("B!GavREGaelan","LOCALS",3)~ + ~That nightmare with Gaelan.~ DO ~SetGlobal("B!GavREGaelan","LOCALS",4)~ + re_gaelan 
+ ~Global("B!GavREGarren","LOCALS",3)~ + ~That night I walked with Garren Windspear.~ DO ~SetGlobal("B!GavREGarren","LOCALS",4)~ + re_garren 
+ ~Global("B!GavREJarlaxle","LOCALS",3)~ + ~My interview with Jarlaxle.~ DO ~SetGlobal("B!GavREJarlaxle","LOCALS",4)~ + re_jarlaxle 
+ ~Global("B!GavRELaran","LOCALS",3)~ + ~That night I spent with Laran.~ DO ~SetGlobal("B!GavRELaran","LOCALS",4)~ + re_laran 
+ ~Global("B!GavRELogan","LOCALS",3)~ + ~My evening with Logan.~ DO ~SetGlobal("B!GavRELogan","LOCALS",4)~ + re_logan 
+ ~Global("B!GavREMekrath","LOCALS",3)~ + ~My 'apprenticeship' with Mekrath.~ DO ~SetGlobal("B!GavREMekrath","LOCALS",4)~ + re_mekrath 
+ ~Global("B!GavRERibald","LOCALS",3)~ + ~That incident with Ribald.~ DO ~SetGlobal("B!GavRERibald","LOCALS",4)~ + re_ribald 
+ ~Global("B!GavRESaemon","LOCALS",3)~ + ~That idiocy I indulged in with Saemon.~ DO ~SetGlobal("B!GavRESaemon","LOCALS",4)~ + re_saemon 
+ ~Global("B!GavRESolaufein","LOCALS",3)~ + ~Between myself and Solaufein.~ DO ~SetGlobal("B!GavRESolaufein","LOCALS",4)~ + re_solaufein 
+ ~Global("B!GavRETalak","LOCALS",3)~ + ~You can't have forgotten Talak.~ DO ~SetGlobal("B!GavRETalak","LOCALS",4)~ + re_talak 
+ ~Global("B!GavRECernd","LOCALS",3)~ + ~What I did with Cernd.~ DO ~SetGlobal("B!GavRECernd","LOCALS",4)~ + re_cernd 
END 

IF ~~ re_anishai 
SAY ~Ah, yes. That was rather uncomfortable to listen to.~ 
++ ~Gavin, I'm sorry I put you through that. I was being selfish, and I'm sorry.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~I've been thinking about how you must have felt. I never wanted to hurt you.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~Gods know what you must think of me, but I want you to know that of all my companions, yours is the opinion that means the most.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~It wasn't your place to judge me.~ + re_judge 
++ ~You're just going to have to accept that it happened and move on.~ + re_accept 
END 

IF ~~ re_aran 
SAY ~The master of all he surveys? I can't say I'm eager to talk about him again, but go on.~ 
++ ~I lied to you, Gavin. Nothing happened that night, but I was trying to impress you. I'm sorry for deceiving you.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~I was trying to make you jealous. It worked, all right, but now I see how wrong I was to do it in the first place. I never wanted to hurt you.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_jealous 
++ ~You must have known I was exaggerating, and I hate to think what your opinion of me must be. I shouldn't have lied to you.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~It wasn't your place to judge me.~ + re_judge 
++ ~You're just going to have to accept what happened and move on.~ + re_accept 
END 

IF ~~ re_bjornin 
SAY ~You regret it now? You were quick enough to boast of your conquest at the time.~ 
++ ~I'm starting to understand that intimacy is something to rejoice in, not to brag about. I only wish I'd learned this sooner.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~I was so thrilled with having that much ability to excite a man that I never stopped to consider the consequences, or even who I was talking to.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~I shouldn't have made so light of it. You place a high value on physical intimacy, and I should have had more respect for your beliefs.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~It wasn't your place to judge me.~ + re_judge 
++ ~You're just going to have to accept that it happened and move on.~ + re_accept 
END 

IF ~~ re_chanelle 
SAY ~Your first conquest in your new estate? Yes, I remember.~ 
++ ~I regret what I did, Gavin. She was offering me her body as a servant to a mistress, and it was wrong of me to take advantage of her like that.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~I honestly don't know what came over me. I don't usually indulge my appetites so indescriminately.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~I believe you think less of me because of how I treated Chanelle. I never wanted to lose your affection, Gavin, or your respect.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~It wasn't your place to judge me.~ + re_judge 
++ ~You're just going to have to accept that it happened and move on.~ + re_accept 
END 

IF ~~ re_coran 
SAY ~Oh, please! Do we really have to talk about that womanizer again?~ 
++ ~I can't believe what I did. When I look back on it, all I can think about is what a horrible mistake I made.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~I don't know what I was hoping to recapture. Maybe I hoped to find some trace of the Coran that used to be, but I should have seen that the Coran I knew is long gone. I should have just left the past behind.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~How could I not have seen how much my affair with Coran would have bothered you? I never meant to hurt you.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~It wasn't your place to judge me.~ + re_judge 
++ ~You're just going to have to accept that it happened and move on.~ + re_accept 
END 

IF ~~ re_desharik 
SAY ~I'm still finding it difficult to believe that you enjoyed the way he treated you.~ 
++ ~I was lying to myself as much as to you. I needed to believe I was in control.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_understandable 
++ ~It was the madness of the place, I think. I'm not normally that... perverse. Now that the moment has passed, I'm a bit ashamed of what I did.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~It wasn't your place to judge me.~ + re_judge 
++ ~You're just going to have to accept that it happened and move on.~ + re_accept 
END 

IF ~~ re_edwin 
SAY ~It was your choice, <CHARNAME>. There isn't much to be said about it.~ 
++ ~I was foolish, Gavin. I should have known that nothing good would come of my affair with Edwin. It was a mistake and I regret it.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~I was trying to make you jealous, Gavin. I shouldn't have played with your emotions like that.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_jealous 
++ ~You must have a low opinion of me indeed, after what I did, and I regret that. I never wanted to lose your affection.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~It wasn't your place to judge me.~ + re_judge 
++ ~You're just going to have to accept that it happened and move on.~ + re_accept 
END 

IF ~~ re_eldoth 
SAY ~Yes... Eldoth. What a snake.~ 
++ ~I should never have trusted him. I should have come straight back to the common room when I found out what he was about.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~I was foolish to let my appetites cloud my judgment like that. Can you forgive me?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~It wasn't your place to judge me.~ + re_judge 
++ ~You're just going to have to accept that it happened and move on.~ + re_accept 
END 

IF ~~ re_gaelan 
SAY ~I still can't believe you enjoyed being used like that. And with such a... ahem. You wanted to talk?~ 
++ ~It was an act, Gavin. After the humiliation I'd already been through, I didn't want to give him the satisfaction of seeing me beaten.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_understandable  
++ ~I was trying to get a reaction out of you. I needed to know that you cared. I'm sorry for manipulating you like that.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_jealous 
++ ~Gods know what you must think of me, after that. Your good opinion is the one thing I really don't want to lose.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~It wasn't your place to judge me.~ + re_judge 
++ ~You're just going to have to accept that it happened and move on.~ + re_accept 
END 

IF ~~ re_garren 
SAY ~Hmm, yes, you did brag about that conquest.~ 
++ ~It was very wrong for me to boast like that. I should have had more respect for his dignity and kept the matter to myself.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~I've been thinking about how you must have felt, listening to my boasting. I never wanted to hurt you.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~I was trying to impress you, but I guess I tried too hard. I should have just let things run their course.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_jealous 
++ ~It wasn't your place to judge me.~ + re_judge 
++ ~You're just going to have to accept that it happened and move on.~ + re_accept 
END 

IF ~~ re_jarlaxle 
SAY ~I'm surprised he didn't call us all out as frauds, to be honest. You must have pleasured him greatly.~ 
++ ~I wasn't thinking. I thought only of my own desires, and my recklessness could have endangered us all. I'm sorry.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~I was being impulsive, though I know now that I was wrong. I got carried away by the idea of drow sensuality and it affected my judgment.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~It wasn't your place to judge me.~ + re_judge 
++ ~You're just going to have to accept that it happened and move on.~ + re_accept 
END 

IF ~~ re_laran 
SAY ~He'll be with his unit by now. Well, if he's marching to his death, at least he'll have a smile on his face.~ 
++ ~I should never have gone with him. It was easy enough to see what he wanted, but he flattered me, Gavin, and made me feel special. I should have had more restraint.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~Everything we touch is corrupted, Gavin. Evil has spread its tendrils throughout our lives. Is it so wrong for me to have wanted a pure, untainted thing?~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_understandable 
++ ~I was with Laran, Gavin, but I would rather have gone to the bed of another... a kind, gentle man who is too shy for his own good. I thought that if I made you jealous, it might encourage you to be bolder.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_jealous 
++ ~It wasn't your place to judge me.~ + re_judge 
++ ~You're just going to have to accept that it happened and move on.~ + re_accept 
END 

IF ~~ re_logan 
SAY ~Ah, yes, your good friend Lord Coprith.~ 
++ ~I lied to you, Gavin. Nothing happened, but I wanted to you to think that something did. I hoped it would encourage you to make a move on me yourself.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_jealous 
++ ~I've been thinking about what I said, and I must have made you feel pretty insignificant. I'm sorry for hurting you.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~You must think me a power-hungry bitch, after what I said to you. I'm sorry, Gavin. I never wanted you to think of me that way.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~It wasn't your place to judge me.~ + re_judge 
++ ~You're just going to have to accept that it happened and move on.~ + re_accept 
END 

IF ~~ re_mekrath 
SAY ~The blue mage? What is there to say about him?~ 
++ ~I let my desires overcome my sense, Gavin, and I regret that now. I should have shown more restraint.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~Of all the consequences of that encounter, the one I regret most is losing your good opinion. I wish you could forgive me.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~It wasn't your place to judge me.~ + re_judge 
++ ~You're just going to have to accept that it happened and move on.~ + re_accept 
END 

IF ~~ re_ribald 
SAY ~Oh, him. He might not be much on fancy illustrations, but I bet he's got a couple of you by now.~ 
++ ~Gavin, I don't know what I was thinking. I gave in to the whim of a moment, and now I'm afraid that my foolishness has stunted someting that I wanted to grow.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~I just wanted to let you know that I'm sorry for subjecting you to... what I subjected you to. It must not have been very enjoyable for you to stand around and wait while I was otherwise occupied, especially when it might have bothered you for other reasons.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~It bothers me that your opinion of me may have sunk because of what happened. I don't know what I would do if I lost your respect.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~It wasn't your place to judge me.~ + re_judge 
++ ~You're just going to have to accept that it happened and move on.~ + re_accept 
END 

IF ~~ re_saemon 
SAY ~There aren't many secrets on a ship.~ 
++ ~I know... and that's why I did it. I wanted to make you jealous.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_jealous 
++ ~I've been thinking about how you must have felt. I never wanted to hurt you.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~You must think me lower than dirt to lie with that scum... and I'm starting to believe that you may be right. Please forgive me, Gavin. I don't want to lose your good opinion.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~It wasn't your place to judge me.~ + re_judge 
++ ~You're just going to have to accept that it happened and move on.~ + re_accept 
END 

IF ~~ re_solaufein 
SAY ~You asked for that one.~ 
++ ~I should have anticipated that you wouldn't want to be kept on guard duty while I entertained myself. I was being selfish, and I'm sorry.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~I've been thinking about how you must have felt, knowing what I did. I never wanted to hurt you.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~Gods know what you must think of me, but I want you to know that of all my companions, yours is the opinion that means the most.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~I lied to you, Gavin. I never lay with Solaufein. I made up the whole story to preserve our disguises.~ + re_understandable 
++ ~It wasn't your place to judge me.~ + re_judge 
++ ~You're just going to have to accept that it happened and move on.~ + re_accept 
END 

IF ~~ re_talak 
SAY ~Your reward?~ 
++ ~Yes... I've been thinking about that, and I can't believe how selfish I was. I'm sorry.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~We were all under a lot of pressure, at the time, and I saw that as a way to relieve some of it. I never wanted to hurt you.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~Your good opinion means much to me, Gavin, and it bothers me to think that my foolishness may have damaged that.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~It wasn't your place to judge me.~ + re_judge 
++ ~You're just going to have to accept that it happened and move on.~ + re_accept 
END 

IF ~~ re_cernd 
SAY ~What's to say? You felt a need, Cernd satisfied it.~ 
++ ~I wasn't thinking of Cernd's needs, though... or of yours. I was being selfish, and I'm sorry.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~I'm ashamed to admit this, but on some level, I think I was trying to prove something to you. I wanted you to understand that if you were unwilling to satisfy my needs, I would find someone else. I shouldn't have done that.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_jealous 
++ ~Things are tense enough between you and Cernd. I should never have indulged in a way that contributed to the friction between you.~ DO ~IncrementGlobal("B!GavLove","GLOBAL",1)~ + re_forgiven 
++ ~It wasn't your place to judge me.~ + re_judge 
++ ~You're just going to have to accept that it happened and move on.~ + re_accept 
END 

IF ~~ re_jealous 
SAY ~Oh, <CHARNAME>, you don't have to try so hard to make me want you. I'm not blind to your charms, but if something is going to happen between us, it's going to happen because we're ready for it to happen, not because you've driven me mad with jealousy.~ 
IF ~~ THEN + pid2 
END 

IF ~~ re_understandable 
SAY ~That certainly makes more sense. I'm sorry for having spoken to you so harshly.~ 
IF ~~ THEN + pid2 
END 

IF ~~ re_forgiven 
SAY ~It isn't your fault, <CHARNAME>. None of us are perfect all the time, and there's no harm done.~ 
IF ~~ THEN + pid2 
END 

IF ~~ re_judge 
SAY ~I don't judge you, <CHARNAME>, but that doesn't mean I can't have an opinion.~ 
IF ~~ THEN + pid2 
END 

IF ~~ re_accept 
SAY ~I must. I have no choice.~ 
IF ~~ THEN + pid2 
END 

/* Family Planning */

IF ~~ cassil 
SAY ~Of course, I remember it. You're not...~ 
++ ~I'd like you to take care of that responsibility from now on.~ DO ~SetGlobal("B!GavCassil","LOCALS",4)~ + cassil1 
++ ~I'm not, but we're running low on supplies.~ + cassil2 
++ ~Are you still certain you don't want to have a baby?~ + cassil3 
END 

IF ~~ cassil1 
SAY ~Gladly. You'll never have to worry about it again.~ 
IF ~~ THEN + pid2 
END 

IF ~~ cassil2 
SAY ~I think I've got some in my medicine kit. Half a moment...~ 
= ~Ah, yes. Here it is.~ 
IF ~~ THEN DO ~GiveItemCreate("b!cassil",Player1,5,0,0)~ + pid2 
END 

IF ~~ cassil3 
SAY ~On the contrary, I do want to have a child with you. I just don't want to do it right now, with your quest unfinished and our lives so uncertain. When this is over, you have my word that I'll give you as many children as I'm able... or as many as you want.~ 
IF ~~ THEN + pid2 
END 

/* Flirts */ 

IF ~~ flirt 
SAY ~(You...)~ 

/* Smiles - light */ 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)  
      RandomNum(8,1)~ + ~(Smile at Gavin.)~ + smile_l1 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)  
      RandomNum(8,2)~ + ~(Smile at Gavin.)~ + smile_l2 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)  
      RandomNum(8,3)~ + ~(Smile at Gavin.)~ + smile_l3 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)  
      RandomNum(8,4)~ + ~(Smile at Gavin.)~ + smile_l4 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)  
      RandomNum(8,5)~ + ~(Smile at Gavin.)~ + smile_l5 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)  
      RandomNum(8,6)~ + ~(Smile at Gavin.)~ + smile_l6 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)  
      RandomNum(8,7)~ + ~(Smile at Gavin.)~ + smile_l7 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)  
      RandomNum(8,8)~ + ~(Smile at Gavin.)~ + smile_l8 

/* Smiles - medium */ 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalGT("B!GavLove","GLOBAL",11) 
      RandomNum(9,1)~ + ~(Smile at Gavin.)~ + smile_l1 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalGT("B!GavLove","GLOBAL",11) 
      RandomNum(9,2)~ + ~(Smile at Gavin.)~ + smile_l2 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalGT("B!GavLove","GLOBAL",11) 
      RandomNum(9,3)~ + ~(Smile at Gavin.)~ + smile_l3 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalGT("B!GavLove","GLOBAL",11) 
      RandomNum(9,4)~ + ~(Smile at Gavin.)~ + smile_l4 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalGT("B!GavLove","GLOBAL",11) 
      RandomNum(9,5)~ + ~(Smile at Gavin.)~ + smile_m5 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalGT("B!GavLove","GLOBAL",11) 
      RandomNum(9,6)~ + ~(Smile at Gavin.)~ + smile_m6 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalGT("B!GavLove","GLOBAL",11) 
      RandomNum(9,7)~ + ~(Smile at Gavin.)~ + smile_l7 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalGT("B!GavLove","GLOBAL",11) 
      RandomNum(9,8)~ + ~(Smile at Gavin.)~ + smile_l8 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalGT("B!GavLove","GLOBAL",11) 
      RandomNum(9,9)~ + ~(Smile at Gavin.)~ + smile_m9 

/* Smiles - heavy */ 
+ ~Global("B!GavRA","GLOBAL",2) 
      RandomNum(6,1)~ + ~(Smile at Gavin.)~ + smile_h1 
+ ~Global("B!GavRA","GLOBAL",2) 
      RandomNum(6,2)~ + ~(Smile at Gavin.)~ + smile_h2 
+ ~Global("B!GavRA","GLOBAL",2) 
      RandomNum(6,3)~ + ~(Smile at Gavin.)~ + smile_l3 
+ ~Global("B!GavRA","GLOBAL",2) 
      RandomNum(6,4)~ + ~(Smile at Gavin.)~ + smile_m6 
+ ~Global("B!GavRA","GLOBAL",2) 
      RandomNum(6,5)~ + ~(Smile at Gavin.)~ + smile_l8 
+ ~Global("B!GavRA","GLOBAL",2) 
      RandomNum(6,6)~ + ~(Smile at Gavin.)~ + smile_m9 

/* Smiles - complicated */ 
+ ~Global("B!GavRA","GLOBAL",4) 
      RandomNum(8,1)~ + ~(Smile at Gavin.)~ + smile_c1 
+ ~Global("B!GavRA","GLOBAL",4) 
      RandomNum(8,2)~ + ~(Smile at Gavin.)~ + smile_l2 
+ ~Global("B!GavRA","GLOBAL",4) 
      RandomNum(8,3)~ + ~(Smile at Gavin.)~ + smile_l3 
+ ~Global("B!GavRA","GLOBAL",4) 
      RandomNum(8,4)~ + ~(Smile at Gavin.)~ + smile_c1 
+ ~Global("B!GavRA","GLOBAL",4) 
      RandomNum(8,5)~ + ~(Smile at Gavin.)~ + smile_m5 
+ ~Global("B!GavRA","GLOBAL",4) 
      RandomNum(8,6)~ + ~(Smile at Gavin.)~ + smile_m6 
+ ~Global("B!GavRA","GLOBAL",4) 
      RandomNum(8,7)~ + ~(Smile at Gavin.)~ + smile_c1 
+ ~Global("B!GavRA","GLOBAL",4) 
      RandomNum(8,8)~ + ~(Smile at Gavin.)~ + smile_c1 

/* Compliment */ 
++ ~(You compliment Gavin.)~ + compliment 

/* Give him something - kiss, flower, treats you purchased, treats you made */ 
++ ~I have something for you.~ + gift 

/* Engaged in BG1 stuff - missing finger, do you remember..., wedding */ 
+ ~GlobalGT("B!GavinEngaged","GLOBAL",0) GlobalGT("B!GavTalk","GLOBAL",2)~ + ~I've been thinking about the past.~ + ge2 

/* Ask for help - heavy object, adjust clothing, massage, relieve sexual tension */ 
++ ~I need your help with something.~ + help 

/* Ask him to dance with you */ 
+ ~RandomNum(4,1) OR(11) 
        AreaCheck("AR0021") 
        AreaCheck("AR0313") 
        AreaCheck("AR0406") 
        AreaCheck("AR0509") 
        AreaCheck("AR0513") 
        AreaCheck("AR0522") 
        AreaCheck("AR0704") 
        AreaCheck("AR0709") 
        AreaCheck("AR1105") 
        AreaCheck("AR1602") 
        AreaCheck("AR2010")~ + ~Will you dance with me, Gavin?~ + dance1 
+ ~RandomNum(4,2) OR(11) 
        AreaCheck("AR0021") 
        AreaCheck("AR0313") 
        AreaCheck("AR0406") 
        AreaCheck("AR0509") 
        AreaCheck("AR0513") 
        AreaCheck("AR0522") 
        AreaCheck("AR0704") 
        AreaCheck("AR0709") 
        AreaCheck("AR1105") 
        AreaCheck("AR1602") 
        AreaCheck("AR2010")~ + ~Will you dance with me, Gavin?~ + dance2 
+ ~RandomNum(4,3) OR(11) 
        AreaCheck("AR0021") 
        AreaCheck("AR0313") 
        AreaCheck("AR0406") 
        AreaCheck("AR0509") 
        AreaCheck("AR0513") 
        AreaCheck("AR0522") 
        AreaCheck("AR0704") 
        AreaCheck("AR0709") 
        AreaCheck("AR1105") 
        AreaCheck("AR1602") 
        AreaCheck("AR2010")~ + ~Will you dance with me, Gavin?~ + dance3 
+ ~RandomNum(4,4) OR(11) 
        AreaCheck("AR0021") 
        AreaCheck("AR0313") 
        AreaCheck("AR0406") 
        AreaCheck("AR0509") 
        AreaCheck("AR0513") 
        AreaCheck("AR0522") 
        AreaCheck("AR0704") 
        AreaCheck("AR0709") 
        AreaCheck("AR1105") 
        AreaCheck("AR1602") 
        AreaCheck("AR2010")~ + ~Will you dance with me, Gavin?~ + dance4 

/* Ask him to draw you as a nude */ 
+ ~Global("B!GavDrawNude","LOCALS",0) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      GlobalGT("B!GavArt","GLOBAL",0)~ + ~I'd like you to do a nude portrait of me sometime.~ DO ~SetGlobal("B!GavDrawNude","LOCALS",1)~ + nude 

/* Ask to draw him as a nude */ 
+ ~Global("B!GavPoseNude","LOCALS",0) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      GlobalGT("B!GavArt","GLOBAL",0)~ + ~I draw, too, and I've been wondering if you'd be willing to pose nude for me sometime.~ DO ~SetGlobal("B!GavPoseNude","LOCALS",1)~ + nude 

/* Sing for him */ 
+ ~GlobalGT("B!GavLove","GLOBAL",12)~ + ~(You wait until Gavin is walking beside you and then you sing softly, so that he alone can hear you.)~ + sing 

/* Hugs - light */ 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(5,1)~ + ~(Hug Gavin.)~ + hug_l1 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(5,2)~ + ~(Hug Gavin.)~ + hug_l2 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(5,3)~ + ~(Hug Gavin.)~ + hug_l3 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(5,4)~ + ~(Hug Gavin.)~ + hug_l4 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(5,5)~ + ~(Hug Gavin.)~ + hug_l5 

/* Hugs - medium */ 
+ ~Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(5,1)~ + ~(Hug Gavin.)~ + hug_l1 
+ ~Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(5,2)~ + ~(Hug Gavin.)~ + hug_m2 
+ ~Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(5,3)~ + ~(Hug Gavin.)~ + hug_m3 
+ ~Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(5,4)~ + ~(Hug Gavin.)~ + hug_m4 
+ ~Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(5,5)~ + ~(Hug Gavin.)~ + hug_m5 

/* Hugs - heavy */ 
+ ~Global("B!GavRA","GLOBAL",2) 
      RandomNum(5,1)~ + ~(Hug Gavin.)~ + hug_l1 
+ ~Global("B!GavRA","GLOBAL",2) 
      RandomNum(5,2)~ + ~(Hug Gavin.)~ + hug_h2 
+ ~Global("B!GavRA","GLOBAL",2) 
      RandomNum(5,3)~ + ~(Hug Gavin.)~ + hug_h3 
+ ~Global("B!GavRA","GLOBAL",2) 
      RandomNum(5,4)~ + ~(Hug Gavin.)~ + hug_h4 
+ ~Global("B!GavRA","GLOBAL",2) 
      RandomNum(5,5)~ + ~(Hug Gavin.)~ + hug_h5 

/* Hugs - complicated */ 
+ ~Global("B!GavRA","GLOBAL",4) 
      RandomNum(5,1)~ + ~(Hug Gavin.)~ + hug_l1 
+ ~Global("B!GavRA","GLOBAL",4) 
      RandomNum(5,2)~ + ~(Hug Gavin.)~ + hug_h2 
+ ~Global("B!GavRA","GLOBAL",5) 
      RandomNum(5,3)~ + ~(Hug Gavin.)~ + hug_h3 
+ ~Global("B!GavRA","GLOBAL",5) 
      RandomNum(5,4)~ + ~(Hug Gavin.)~ + hug_h4 
+ ~Global("B!GavRA","GLOBAL",4) 
      RandomNum(5,5)~ + ~(Hug Gavin.)~ + hug_c5 

/* Kiss cheek */ 
+ ~RandomNum(6,1) Global("B!GavRA","GLOBAL",1) GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You kiss Gavin's cheek.)~ + kiss_cheek_l1 
+ ~RandomNum(6,2) Global("B!GavRA","GLOBAL",1) GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You kiss Gavin's cheek.)~ + kiss_cheek_l2 
+ ~RandomNum(6,3) Global("B!GavRA","GLOBAL",1) GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You kiss Gavin's cheek.)~ + kiss_cheek_l3 
+ ~RandomNum(6,4) Global("B!GavRA","GLOBAL",1) GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You kiss Gavin's cheek.)~ + kiss_cheek_l4 
+ ~RandomNum(6,5) Global("B!GavRA","GLOBAL",1) GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You kiss Gavin's cheek.)~ + kiss_cheek_l5 
+ ~RandomNum(6,6) Global("B!GavRA","GLOBAL",1) GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You kiss Gavin's cheek.)~ + kiss_cheek_l6 
+ ~RandomNum(4,1) Global("B!GavRA","GLOBAL",1) !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You kiss Gavin's cheek.)~ + kiss_cheek_m1 
+ ~RandomNum(4,2) Global("B!GavRA","GLOBAL",1) !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You kiss Gavin's cheek.)~ + kiss_cheek_m2 
+ ~RandomNum(4,3) Global("B!GavRA","GLOBAL",1) !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You kiss Gavin's cheek.)~ + kiss_cheek_m3 
+ ~RandomNum(4,4) Global("B!GavRA","GLOBAL",1) !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You kiss Gavin's cheek.)~ + kiss_cheek_m4 
+ ~RandomNum(4,1) Global("B!GavRA","GLOBAL",2)~ + ~(You kiss Gavin's cheek.)~ + kiss_cheek_h1 
+ ~RandomNum(4,2) Global("B!GavRA","GLOBAL",2)~ + ~(You kiss Gavin's cheek.)~ + kiss_cheek_h2 
+ ~RandomNum(4,3) Global("B!GavRA","GLOBAL",2)~ + ~(You kiss Gavin's cheek.)~ + kiss_cheek_h3 
+ ~RandomNum(4,4) Global("B!GavRA","GLOBAL",2)~ + ~(You kiss Gavin's cheek.)~ + kiss_cheek_h4 
+ ~RandomNum(4,1) Global("B!GavRA","GLOBAL",3)~ + ~(You kiss Gavin's cheek.)~ + kiss_cheek_c1 
+ ~RandomNum(4,2) Global("B!GavRA","GLOBAL",3)~ + ~(You kiss Gavin's cheek.)~ + kiss_cheek_c2 
+ ~RandomNum(4,3) Global("B!GavRA","GLOBAL",3)~ + ~(You kiss Gavin's cheek.)~ + kiss_cheek_c3 
+ ~RandomNum(4,4) Global("B!GavRA","GLOBAL",3)~ + ~(You kiss Gavin's cheek.)~ + kiss_cheek_c4 

/* Kiss lips */ 
+ ~RandomNum(8,1) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",1)~ + ~(You kiss Gavin's lips.)~ + kisslips1a 
+ ~RandomNum(8,2) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",1)~ + ~(You kiss Gavin's lips.)~ + kisslips1b 
+ ~RandomNum(8,3) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",1)~ + ~(You kiss Gavin's lips.)~ + kisslips1c 
+ ~RandomNum(8,4) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",1)~ + ~(You kiss Gavin's lips.)~ + kisslips1d 
+ ~RandomNum(8,5) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",1)~ + ~(You kiss Gavin's lips.)~ + kisslips1e 
+ ~RandomNum(8,6) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",1)~ + ~(You kiss Gavin's lips.)~ + kisslips1f 
+ ~RandomNum(8,7) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",1)~ + ~(You kiss Gavin's lips.)~ + kisslips1g 
+ ~RandomNum(8,8) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",1)~ + ~(You kiss Gavin's lips.)~ + kisslips1h 
+ ~RandomNum(8,1) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You kiss Gavin's lips.)~ + kisslips2a 
+ ~RandomNum(8,2) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You kiss Gavin's lips.)~ + kisslips2b 
+ ~RandomNum(8,3) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You kiss Gavin's lips.)~ + kisslips2c 
+ ~RandomNum(8,4) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You kiss Gavin's lips.)~ + kisslips2d 
+ ~RandomNum(8,5) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You kiss Gavin's lips.)~ + kisslips2e 
+ ~RandomNum(8,6) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You kiss Gavin's lips.)~ + kisslips2f 
+ ~RandomNum(8,7) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You kiss Gavin's lips.)~ + kisslips2g 
+ ~RandomNum(8,8) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You kiss Gavin's lips.)~ + kisslips2h 
+ ~RandomNum(8,1) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You kiss Gavin's lips.)~ + kisslips4a 
+ ~RandomNum(8,2) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You kiss Gavin's lips.)~ + kisslips4b 
+ ~RandomNum(8,3) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You kiss Gavin's lips.)~ + kisslips4c 
+ ~RandomNum(8,4) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You kiss Gavin's lips.)~ + kisslips4d 
+ ~RandomNum(8,5) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You kiss Gavin's lips.)~ + kisslips4e 
+ ~RandomNum(8,6) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You kiss Gavin's lips.)~ + kisslips4f 
+ ~RandomNum(8,7) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You kiss Gavin's lips.)~ + kisslips4g 
+ ~RandomNum(8,8) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You kiss Gavin's lips.)~ + kisslips4h 

/* Hold hands */ 
+ ~RandomNum(4,1) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",1)~ + ~(You hold Gavin's hand.)~ + holdhand1a 
+ ~RandomNum(4,2) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",1)~ + ~(You hold Gavin's hand.)~ + holdhand1b 
+ ~RandomNum(4,3) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",1)~ + ~(You hold Gavin's hand.)~ + holdhand1c 
+ ~RandomNum(4,4) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",1)~ + ~(You hold Gavin's hand.)~ + holdhand1d 
+ ~RandomNum(4,1) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You hold Gavin's hand.)~ + holdhand2a 
+ ~RandomNum(4,2) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You hold Gavin's hand.)~ + holdhand2b 
+ ~RandomNum(4,3) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You hold Gavin's hand.)~ + holdhand2c 
+ ~RandomNum(4,4) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You hold Gavin's hand.)~ + holdhand2d 
+ ~RandomNum(4,1) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You hold Gavin's hand.)~ + holdhand4a
+ ~RandomNum(4,2) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You hold Gavin's hand.)~ + holdhand4b 
+ ~RandomNum(4,3) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You hold Gavin's hand.)~ + holdhand4c 
+ ~RandomNum(4,4) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You hold Gavin's hand.)~ + holdhand4d 

/* Poses */ 
++ ~(You pose for Gavin.)~ + pose 

/* Take his arm */ 
+ ~RandomNum(5,1) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You take Gavin's arm.)~ + arm_l1 
+ ~RandomNum(5,2) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You take Gavin's arm.)~ + arm_l2 
+ ~RandomNum(5,3) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You take Gavin's arm.)~ + arm_l3 
+ ~RandomNum(5,4) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You take Gavin's arm.)~ + arm_l4 
+ ~RandomNum(5,5) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You take Gavin's arm.)~ + arm_l5 
+ ~RandomNum(4,1) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You take Gavin's arm.)~ + arm_m1 
+ ~RandomNum(4,2) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You take Gavin's arm.)~ + arm_m2 
+ ~RandomNum(4,3) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You take Gavin's arm.)~ + arm_m3 
+ ~RandomNum(4,4) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You take Gavin's arm.)~ + arm_m4 
+ ~RandomNum(4,1) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You take Gavin's arm.)~ + arm_h1 
+ ~RandomNum(4,2) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You take Gavin's arm.)~ + arm_h2 
+ ~RandomNum(4,3) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You take Gavin's arm.)~ + arm_h3 
+ ~RandomNum(4,4) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You take Gavin's arm.)~ + arm_h4 
+ ~RandomNum(4,1) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You take Gavin's arm.)~ + arm_c1 
+ ~RandomNum(4,2) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You take Gavin's arm.)~ + arm_c2 
+ ~RandomNum(4,3) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You take Gavin's arm.)~ + arm_c3 
+ ~RandomNum(4,4) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You take Gavin's arm.)~ + arm_c4 

/* Touch */ 
++ ~(You touch him.)~ + touch 

/* Give him a massage */ 
+ ~RandomNum(3,1) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",1)~ + ~(You call a halt and let Gavin unsling his pack. You then proceed to rub his neck.)~ + neckrub1a 
+ ~RandomNum(3,2) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",1)~ + ~(You call a halt and let Gavin unsling his pack. You then proceed to rub his neck.)~ + neckrub1b 
+ ~RandomNum(3,3) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",1)~ + ~(You call a halt and let Gavin unsling his pack. You then proceed to rub his neck.)~ + neckrub1c 
+ ~RandomNum(3,1) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You call a halt and let Gavin unsling his pack. You then proceed to rub his neck.)~ + neckrub2a 
+ ~RandomNum(3,2) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You call a halt and let Gavin unsling his pack. You then proceed to rub his neck.)~ + neckrub2b 
+ ~RandomNum(3,3) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You call a halt and let Gavin unsling his pack. You then proceed to rub his neck.)~ + neckrub2c 
+ ~RandomNum(3,1) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You call a halt and let Gavin unsling his pack. You then proceed to rub his neck.)~ + neckrub4a 
+ ~RandomNum(3,2) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You call a halt and let Gavin unsling his pack. You then proceed to rub his neck.)~ + neckrub4b 
+ ~RandomNum(3,3) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You call a halt and let Gavin unsling his pack. You then proceed to rub his neck.)~ + neckrub4c 

/* "Accidental" grope */ 
+ ~RandomNum(3,1) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",1)~ + ~(You allow him to draw even with you, then casually allow your hand to brush against his groin.)~ + grope1a 
+ ~RandomNum(3,2) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",1)~ + ~(You allow him to draw even with you, then casually allow your hand to brush against his groin.)~ + grope1b 
+ ~RandomNum(3,3) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",1)~ + ~(You allow him to draw even with you, then casually allow your hand to brush against his groin.)~ + grope1c 
+ ~RandomNum(3,1) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You allow him to draw even with you, then casually allow your hand to brush against his groin.)~ + grope2a 
+ ~RandomNum(3,2) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You allow him to draw even with you, then casually allow your hand to brush against his groin.)~ + grope2b 
+ ~RandomNum(3,3) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You allow him to draw even with you, then casually allow your hand to brush against his groin.)~ + grope2c 
+ ~RandomNum(3,1) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You allow him to draw even with you, then casually allow your hand to brush against his groin.)~ + grope4a 
+ ~RandomNum(3,2) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You allow him to draw even with you, then casually allow your hand to brush against his groin.)~ + grope4b 
+ ~RandomNum(3,3) 
      GlobalGT("B!GavLove","GLOBAL",12) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You allow him to draw even with you, then casually allow your hand to brush against his groin.)~ + grope4c 

/* Mind Games */ 
++ ~(You wait until you are certain Gavin is watching you and then pout, letting a tear form in the corner of your eye.)~ + mgame1

/* Study face without letting him catch you */ 
+ ~RandomNum(4,1)~ + ~(You study Gavin's face while his attention is focused elsewhere.)~ + study_face1 
+ ~RandomNum(4,2)~ + ~(You study Gavin's face while his attention is focused elsewhere.)~ + study_face2 
+ ~RandomNum(4,3)~ + ~(You study Gavin's face while his attention is focused elsewhere.)~ + study_face3 
+ ~RandomNum(4,4)~ + ~(You study Gavin's face while his attention is focused elsewhere.)~ + study_face4 

/* Study physique without letting him catch you */ 
+ ~RandomNum(4,1)~ + ~(With Gavin's attention diverted, you may look at his body without being observed.)~ + study_body1 
+ ~RandomNum(4,2)~ + ~(With Gavin's attention diverted, you may look at his body without being observed.)~ + study_body2 
+ ~RandomNum(4,3)~ + ~(With Gavin's attention diverted, you may look at his body without being observed.)~ + study_body3 
+ ~RandomNum(4,4)~ + ~(With Gavin's attention diverted, you may look at his body without being observed.)~ + study_body4 

/* Allow him to catch you admiring him */ 
+ ~RandomNum(4,1)~ + ~(You let Gavin catch you admiring him.)~ + admire1 
+ ~RandomNum(4,2)~ + ~(You let Gavin catch you admiring him.)~ + admire2 
+ ~RandomNum(4,3)~ + ~(You let Gavin catch you admiring him.)~ + admire3 
+ ~RandomNum(4,4)~ + ~(You let Gavin catch you admiring him.)~ + admire4 

/* Flirt with others in front of Gavin */ 
+ ~InParty("Anomen") 
      InMyArea("Anomen") 
      !StateCheck("Anomen",CD_STATE_NOTVALID) 
      Global("B!GavRA","GLOBAL",1) RandomNum(4,1)~ + ~(You flirt with Anomen in front of Gavin.)~ + fwo_1ano1 
+ ~InParty("Anomen") 
      InMyArea("Anomen") 
      !StateCheck("Anomen",CD_STATE_NOTVALID) 
      Global("B!GavRA","GLOBAL",1) RandomNum(4,2)~ + ~(You flirt with Anomen in front of Gavin.)~ + fwo_1ano2 
+ ~InParty("Anomen") 
      InMyArea("Anomen") 
      !StateCheck("Anomen",CD_STATE_NOTVALID) 
      Global("B!GavRA","GLOBAL",1) RandomNum(4,3)~ + ~(You flirt with Anomen in front of Gavin.)~ + fwo_1ano3 
+ ~InParty("Anomen") 
      InMyArea("Anomen") 
      !StateCheck("Anomen",CD_STATE_NOTVALID) 
      Global("B!GavRA","GLOBAL",1) RandomNum(4,4)~ + ~(You flirt with Anomen in front of Gavin.)~ + fwo_1ano4 
+ ~InParty("Anomen") 
      InMyArea("Anomen") 
      !StateCheck("Anomen",CD_STATE_NOTVALID) 
      Global("B!GavRA","GLOBAL",2) RandomNum(4,1)~ + ~(You flirt with Anomen in front of Gavin.)~ + fwo_2ano1 
+ ~InParty("Anomen") 
      InMyArea("Anomen") 
      !StateCheck("Anomen",CD_STATE_NOTVALID) 
      Global("B!GavRA","GLOBAL",2) RandomNum(4,2)~ + ~(You flirt with Anomen in front of Gavin.)~ + fwo_2ano2 
+ ~InParty("Anomen") 
      InMyArea("Anomen") 
      !StateCheck("Anomen",CD_STATE_NOTVALID) 
      Global("B!GavRA","GLOBAL",2) RandomNum(4,3)~ + ~(You flirt with Anomen in front of Gavin.)~ + fwo_2ano3 
+ ~InParty("Anomen") 
      InMyArea("Anomen") 
      !StateCheck("Anomen",CD_STATE_NOTVALID) 
      Global("B!GavRA","GLOBAL",2) RandomNum(4,4)~ + ~(You flirt with Anomen in front of Gavin.)~ + fwo_2ano4 
+ ~InParty("Anomen") 
      InMyArea("Anomen") 
      !StateCheck("Anomen",CD_STATE_NOTVALID) 
      Global("B!GavRA","GLOBAL",4) RandomNum(4,1)~ + ~(You flirt with Anomen in front of Gavin.)~ + fwo_4ano1 
+ ~InParty("Anomen") 
      InMyArea("Anomen") 
      !StateCheck("Anomen",CD_STATE_NOTVALID) 
      Global("B!GavRA","GLOBAL",4) RandomNum(4,2)~ + ~(You flirt with Anomen in front of Gavin.)~ + fwo_4ano2 
+ ~InParty("Anomen") 
      InMyArea("Anomen") 
      !StateCheck("Anomen",CD_STATE_NOTVALID) 
      Global("B!GavRA","GLOBAL",4) RandomNum(4,3)~ + ~(You flirt with Anomen in front of Gavin.)~ + fwo_4ano3 
+ ~InParty("Anomen") 
      InMyArea("Anomen") 
      !StateCheck("Anomen",CD_STATE_NOTVALID) 
      Global("B!GavRA","GLOBAL",4) RandomNum(4,4)~ + ~(You flirt with Anomen in front of Gavin.)~ + fwo_4ano4 

+ ~InParty("Cernd") 
      InMyArea("Cernd") 
      !StateCheck("Cernd",CD_STATE_NOTVALID) 
      RandomNum(3,1)~ + ~(You flirt with Cernd in front of Gavin.)~ + fwo_gen1 
+ ~InParty("Cernd") 
      InMyArea("Cernd") 
      !StateCheck("Cernd",CD_STATE_NOTVALID) 
      RandomNum(3,2)~ + ~(You flirt with Cernd in front of Gavin.)~ + fwo_gen2 
+ ~InParty("Cernd") 
      InMyArea("Cernd") 
      !StateCheck("Cernd",CD_STATE_NOTVALID) 
      RandomNum(3,3)~ + ~(You flirt with Cernd in front of Gavin.)~ + fwo_gen3 
+ ~InParty("Edwin") 
      InMyArea("Edwin") 
      !StateCheck("Edwin",CD_STATE_NOTVALID) 
      RandomNum(3,1)~ + ~(You flirt with Edwin in front of Gavin.)~ + fwo_gen1 
+ ~InParty("Edwin") 
      InMyArea("Edwin") 
      !StateCheck("Edwin",CD_STATE_NOTVALID) 
      RandomNum(3,2)~ + ~(You flirt with Edwin in front of Gavin.)~ + fwo_gen2 
+ ~InParty("Edwin") 
      InMyArea("Edwin") 
      !StateCheck("Edwin",CD_STATE_NOTVALID) 
      RandomNum(3,3)~ + ~(You flirt with Edwin in front of Gavin.)~ + fwo_gen3 
+ ~InParty("HaerDalis") 
      InMyArea("HaerDalis") 
      !StateCheck("HaerDalis",CD_STATE_NOTVALID) 
      RandomNum(3,1)~ + ~(You flirt with Haer'Dalis in front of Gavin.)~ + fwo_gen1 
+ ~InParty("HaerDalis") 
      InMyArea("HaerDalis") 
      !StateCheck("HaerDalis",CD_STATE_NOTVALID) 
      RandomNum(3,2)~ + ~(You flirt with Haer'Dalis in front of Gavin.)~ + fwo_gen2 
+ ~InParty("HaerDalis") 
      InMyArea("HaerDalis") 
      !StateCheck("HaerDalis",CD_STATE_NOTVALID) 
      RandomNum(3,3)~ + ~(You flirt with Haer'Dalis in front of Gavin.)~ + fwo_gen3 
+ ~InParty("Jan") 
      InMyArea("Jan") 
      !StateCheck("Jan",CD_STATE_NOTVALID) 
      RandomNum(3,1)~ + ~(You flirt with Jan in front of Gavin.)~ + fwo_gen1 
+ ~InParty("Jan") 
      InMyArea("Jan") 
      !StateCheck("Jan",CD_STATE_NOTVALID) 
      RandomNum(3,2)~ + ~(You flirt with Jan in front of Gavin.)~ + fwo_gen2 
+ ~InParty("Jan") 
      InMyArea("Jan") 
      !StateCheck("Jan",CD_STATE_NOTVALID) 
      RandomNum(3,3)~ + ~(You flirt with Jan in front of Gavin.)~ + fwo_gen3 
+ ~InParty("Keldorn") 
      InMyArea("Keldorn") 
      !StateCheck("Keldorn",CD_STATE_NOTVALID) 
      RandomNum(3,1)~ + ~(You flirt with Keldorn in front of Gavin.)~ EXTERN KELDORJ fwo_kel1 
+ ~InParty("Keldorn") 
      InMyArea("Keldorn") 
      !StateCheck("Keldorn",CD_STATE_NOTVALID) 
      RandomNum(3,2)~ + ~(You flirt with Keldorn in front of Gavin.)~ EXTERN KELDORJ fwo_kel2 
+ ~InParty("Keldorn") 
      InMyArea("Keldorn") 
      !StateCheck("Keldorn",CD_STATE_NOTVALID) 
      RandomNum(3,3)~ + ~(You flirt with Keldorn in front of Gavin.)~ + fwo_kel3 
+ ~InParty("Korgan") 
      InMyArea("Korgan") 
      !StateCheck("Korgan",CD_STATE_NOTVALID) 
      RandomNum(3,1)~ + ~(You flirt with Korgan in front of Gavin.)~ + fwo_gen1 
+ ~InParty("Korgan") 
      InMyArea("Korgan") 
      !StateCheck("Korgan",CD_STATE_NOTVALID) 
      RandomNum(3,2)~ + ~(You flirt with Korgan in front of Gavin.)~ + fwo_gen2 
+ ~InParty("Korgan") 
      InMyArea("Korgan") 
      !StateCheck("Korgan",CD_STATE_NOTVALID) 
      RandomNum(3,3)~ + ~(You flirt with Korgan in front of Gavin.)~ + fwo_gen3 
+ ~InParty("Minsc") 
      InMyArea("Minsc") 
      !StateCheck("Minsc",CD_STATE_NOTVALID) 
      RandomNum(3,1)~ + ~(You flirt with Minsc in front of Gavin.)~ + fwo_gen1 
+ ~InParty("Minsc") 
      InMyArea("Minsc") 
      !StateCheck("Minsc",CD_STATE_NOTVALID) 
      RandomNum(3,2)~ + ~(You flirt with Minsc in front of Gavin.)~ + fwo_gen2 
+ ~InParty("Minsc") 
      InMyArea("Minsc") 
      !StateCheck("Minsc",CD_STATE_NOTVALID) 
      RandomNum(3,3)~ + ~(You flirt with Minsc in front of Gavin.)~ + fwo_gen3 
+ ~InParty("Valygar") 
      InMyArea("Valygar") 
      !StateCheck("Valygar",CD_STATE_NOTVALID) 
      RandomNum(2,1)~ + ~(You flirt with Valygar in front of Gavin.)~ EXTERN VALYGARJ fwo_val1 
+ ~InParty("Valygar") 
      InMyArea("Valygar") 
      !StateCheck("Valygar",CD_STATE_NOTVALID) 
      RandomNum(2,2)~ + ~(You flirt with Valygar in front of Gavin.)~ EXTERN VALYGARJ fwo_val2 
+ ~InParty("Yoshimo") 
      InMyArea("Yoshimo") 
      !StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      RandomNum(3,1)~ + ~(You flirt with Yoshimo in front of Gavin.)~ + fwo_gen1 
+ ~InParty("Yoshimo") 
      InMyArea("Yoshimo") 
      !StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      RandomNum(3,2)~ + ~(You flirt with Yoshimo in front of Gavin.)~ + fwo_gen2 
+ ~InParty("Yoshimo") 
      InMyArea("Yoshimo") 
      !StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      RandomNum(3,3)~ + ~(You flirt with Yoshimo in front of Gavin.)~ + fwo_gen3 

++ ~(You leave Gavin alone.)~ EXIT 

END 

/* Smiles - light */ 
    
IF ~~ smile_l1 
SAY ~Uh-oh. Whatever they said, it's not true.~ 
++ ~What would make you think somebody was telling tales on you?~ + smile_l1.1 
++ ~A pity. I hoped it might be.~ + smile_l1.2 
++ ~Probably not. Such a shame.~ + smile_l1.2 
++ ~They said you're an honorable man... or mostly honorable.~ + smile_l1.3 
END 

IF ~~ smile_l1.1 
SAY ~I just know.~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_l1.2 
SAY ~What did they say?~ 
++ ~Ha! Nobody said anything. I just wanted to see your face.~ + smile_l1.2a 
++ ~It isn't something I'd repeat in polite company.~ + smile_l1.2b 
++ ~They said you like naughty girls.~ + smile_l1.2c 
++ ~I heard that priests really know what to do when they're on their knees.~ + smile_l1.2d 
++ ~They say you have superhuman self-control.~ + smile_l1.2e 
++ ~I hear you've got a fine head for ale.~ + smile_l1.2f 
++ ~Why don't you just drop your leggings and I'll see for myself.~ + smile_l1.2g 
END 

IF ~~ smile_l1.2a 
SAY ~Well, I'm sure that look of shock and horror didn't disappoint, then.~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_l1.2b 
SAY ~(He just looks away, his blush flaming in his cheeks.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_l1.2c 
SAY ~I like nice ones, too! Er... I mean, I prefer women who... Maybe I'd better just shut up.~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_l1.2d 
SAY ~If you mean pray, then you'd be right.~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_l1.2e 
SAY ~Sometimes. Other times, I stammer and make an ass of myself.~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_l1.2f 
SAY ~If they meant that I have a couple of drinks and act like an idiot, they could be right.~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_l1.2g 
SAY ~Ahem. Everybody likes a good mystery.~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_l1.3 
SAY ~Oh. Well, I try.~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_l2 
SAY ~I've got some article of clothing on inside out again, don't I?~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_l3 
SAY ~(He smiles back, then staggers as he trips over some uneven ground.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_l4 
SAY ~(He looks around to see who you're smiling at, then reddens and grins sheepishly.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_l5 
SAY ~A moment, <CHARNAME>, you've got a hair stuck to your lip.~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_l6 
SAY ~Oh, gods, please tell me my laces are done...~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_l7 
SAY ~(At first, he doesn't smile back, but spends several long moments looking at your face. At last, he looks away, giving you the barest glimpse of a grin.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_l8 
SAY ~A fine sight, <CHARNAME>. Thank you.~ 
IF ~~ THEN + pid2 
END 

/* Smiles - medium */ 
IF ~~ smile_m5 
SAY ~(He reaches out to touch one corner of your mouth, as if puzzled by your expression.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_m6 
SAY ~(He grins back at you.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_m9 
SAY ~You have the most beautiful smile...~ 
IF ~~ THEN + pid2 
END 

/* Smiles - heavy */ 
IF ~~ smile_h2 
SAY ~(He cradles your cheek in his hand and kisses you soundly.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_h1 
SAY ~Why are you smiling?~ 
+ ~RandomNum(4,1)~ + ~I'm happy you're here.~ + smile_h1.1 
+ ~RandomNum(4,2)~ + ~I'm happy you're here.~ + smile_h1.2 
+ ~RandomNum(4,3)~ + ~I'm happy you're here.~ + smile_h1.3 
+ ~RandomNum(4,4)~ + ~I'm happy you're here.~ + smile_h1.4 
+ ~RandomNum(3,1)~ + ~Just thinking of something.~ + smile_h1.5 
+ ~RandomNum(3,2)~ + ~Just thinking of something.~ + smile_h1.6 
+ ~RandomNum(3,3)~ + ~Just thinking of something.~ + smile_h1.7 
+ ~RandomNum(3,1)~ + ~No reason.~ + smile_h1.8 
+ ~RandomNum(3,2)~ + ~No reason.~ + smile_h1.9 
+ ~RandomNum(3,3)~ + ~No reason.~ + smile_h1.10 
END 

IF ~~ smile_h1.1 
SAY ~I'm happy I'm here, too.~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_h1.2 
SAY ~Where else would I be?~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_h1.3 
SAY ~Then show me how much. (He sweeps you into his arms and kisses you soundly.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_h1.4 
SAY ~Wonderful. Now I'll be walking around with a big grin all day and people will look at me like I'm mad. But they probably already do that.~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_h1.5 
SAY ~You're not plotting anything naughty, I hope... What am I saying? Plan away, and then spring it on me when we're alone.~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_h1.6 
SAY ~A woman is smiling, and says that she's thinking of something. There are so many ways this could go wrong.~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_h1.7 
SAY ~Me, too... about how lucky I am to have you.~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_h1.8 
SAY ~Now I know I'm in trouble.~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_h1.9 
SAY ~It's a funny thing. If a woman walks around smiling for no reason, people will think she's beautiful. If I did it, people would think I'm an idiot.~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_h1.10 
SAY ~Well, if you were trying to brighten my day, it worked. Thanks, love.~ 
IF ~~ THEN + pid2 
END 

/* Smiles - complicated */ 
IF ~~ smile_c1 
SAY ~Uh-oh. Whatever they said, it's not true.~ 
++ ~What would make you think somebody was telling tales on you?~ + smile_l1.1 
++ ~A pity. I hoped it might be.~ + smile_c1.2 
++ ~Probably not. Such a shame.~ + smile_c1.2 
++ ~They said you're an honorable man... or mostly honorable.~ + smile_c1.3 
END 

IF ~~ smile_c1.2 
SAY ~What did they say?~ 
++ ~Ha! Nobody said anything. I just wanted to see your face.~ + smile_l1.2a 
++ ~It isn't something I'd repeat in polite company.~ + smile_c1.2b 
++ ~They said you like naughty girls.~ + smile_c1.2c 
++ ~I heard that priests really know what to do when they're on their knees.~ + smile_l1.2d 
++ ~They say you have superhuman self-control.~ + smile_c1.2e 
++ ~I hear you've got a fine head for ale.~ + smile_l1.2f 
+ ~Global("B!GavSex","GLOBAL",1)~ + ~Why don't you just drop your leggings and I'll see for myself.~ + smile_c1.2g 
+ ~!Global("B!GavSex","GLOBAL",1)~ + ~Why don't you just drop your leggings and I'll see for myself.~ + smile_c1.2h 
END 

IF ~~ smile_c1.2b 
SAY ~We're probably safe enough.~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_c1.2c 
SAY ~So it would seem.~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_c1.2e 
SAY ~We both know that's not true.~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_c1.2g 
SAY ~You already know all there is to know about that.~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_c1.2h 
SAY ~Ask me when we're alone if you want to find out.~ 
IF ~~ THEN + pid2 
END 

IF ~~ smile_c1.3 
SAY ~I thought so, once.~ 
IF ~~ THEN + pid2 
END 

/* Compliment */ 

IF ~~ compliment 
SAY ~(You tell him...)~ 
+ ~RandomNum(4,1)~ + ~You did good work back there.~ + good_work1 
+ ~RandomNum(4,2)~ + ~You did good work back there.~ + good_work2 
+ ~RandomNum(4,3)~ + ~You did good work back there.~ + good_work3 
+ ~RandomNum(4,4)~ + ~You did good work back there.~ + good_work4 
+ ~RandomNum(3,1) Global("B!GavRA","GLOBAL",1) GlobalLT("B!GavLove","GLOBAL",12)~ + ~Some women find shy men attractive, you know.~ + shy1a1 
+ ~RandomNum(3,2) Global("B!GavRA","GLOBAL",1) GlobalLT("B!GavLove","GLOBAL",12)~ + ~Some women find shy men attractive, you know.~ + shy1a2 
+ ~RandomNum(3,3) Global("B!GavRA","GLOBAL",1) GlobalLT("B!GavLove","GLOBAL",12)~ + ~Some women find shy men attractive, you know.~ + shy1a3 
+ ~RandomNum(3,1) Global("B!GavRA","GLOBAL",1) !GlobalLT("B!GavLove","GLOBAL",12)~ + ~Some women find shy men attractive, you know.~ + shy1b1 
+ ~RandomNum(3,2) Global("B!GavRA","GLOBAL",1) !GlobalLT("B!GavLove","GLOBAL",12)~ + ~Some women find shy men attractive, you know.~ + shy1b2 
+ ~RandomNum(3,3) Global("B!GavRA","GLOBAL",1) !GlobalLT("B!GavLove","GLOBAL",12)~ + ~Some women find shy men attractive, you know.~ + shy1b3 
+ ~RandomNum(3,1) Global("B!GavRA","GLOBAL",2)~ + ~Some women find shy men attractive, you know.~ + shy21 
+ ~RandomNum(3,2) Global("B!GavRA","GLOBAL",2)~ + ~Some women find shy men attractive, you know.~ + shy22 
+ ~RandomNum(3,3) Global("B!GavRA","GLOBAL",2)~ + ~Some women find shy men attractive, you know.~ + shy23 
+ ~RandomNum(3,1) Global("B!GavRA","GLOBAL",4)~ + ~Some women find shy men attractive, you know.~ + shy41 
+ ~RandomNum(3,2) Global("B!GavRA","GLOBAL",4)~ + ~Some women find shy men attractive, you know.~ + shy42 
+ ~RandomNum(3,3) Global("B!GavRA","GLOBAL",4)~ + ~Some women find shy men attractive, you know.~ + shy43 
+ ~GlobalGT("B!GavTalk","GLOBAL",6) Global("B!GavRA","GLOBAL",1) GlobalGT("B!GavLove","GLOBAL",12)~ + ~Has anyone ever told you how good you look without a shirt on?~ + shirtless1a 
+ ~GlobalGT("B!GavTalk","GLOBAL",6) Global("B!GavRA","GLOBAL",1) !GlobalGT("B!GavLove","GLOBAL",12)~ + ~Has anyone ever told you how good you look without a shirt on?~ + shirtless1b 
+ ~GlobalGT("B!GavTalk","GLOBAL",6) Global("B!GavRA","GLOBAL",2)~ + ~Has anyone ever told you how good you look without a shirt on?~ + shirtless2 
+ ~GlobalGT("B!GavTalk","GLOBAL",6) Global("B!GavRA","GLOBAL",4)~ + ~Has anyone ever told you how good you look without a shirt on?~ + shirtless4 
+ ~RandomNum(3,1) Global("B!GavRA","GLOBAL",1) GlobalLT("B!GavLove","GLOBAL",12)~ + ~You're a good man, Gavin.~ + goodman1a1 
+ ~RandomNum(3,2) Global("B!GavRA","GLOBAL",1) GlobalLT("B!GavLove","GLOBAL",12)~ + ~You're a good man, Gavin.~ + goodman1a2 
+ ~RandomNum(3,3) Global("B!GavRA","GLOBAL",1) GlobalLT("B!GavLove","GLOBAL",12)~ + ~You're a good man, Gavin.~ + goodman1a3 
+ ~RandomNum(3,1) Global("B!GavRA","GLOBAL",1) !GlobalLT("B!GavLove","GLOBAL",12)~ + ~You're a good man, Gavin.~ + goodman1b1 
+ ~RandomNum(3,2) Global("B!GavRA","GLOBAL",1) !GlobalLT("B!GavLove","GLOBAL",12)~ + ~You're a good man, Gavin.~ + goodman1b2 
+ ~RandomNum(3,3) Global("B!GavRA","GLOBAL",1) !GlobalLT("B!GavLove","GLOBAL",12)~ + ~You're a good man, Gavin.~ + goodman1b3 
+ ~RandomNum(3,1) Global("B!GavRA","GLOBAL",2)~ + ~You're a good man, Gavin.~ + goodman21 
+ ~RandomNum(3,2) Global("B!GavRA","GLOBAL",2)~ + ~You're a good man, Gavin.~ + goodman22 
+ ~RandomNum(3,3) Global("B!GavRA","GLOBAL",2)~ + ~You're a good man, Gavin.~ + goodman23 
+ ~RandomNum(3,1) Global("B!GavRA","GLOBAL",3)~ + ~You're a good man, Gavin.~ + goodman41 
+ ~RandomNum(3,2) Global("B!GavRA","GLOBAL",3)~ + ~You're a good man, Gavin.~ + goodman42 
+ ~RandomNum(3,3) Global("B!GavRA","GLOBAL",3)~ + ~You're a good man, Gavin.~ + goodman43 
++ ~(You remain silent.)~ + pid2 
END 

IF ~~ goodman1a1 
SAY ~Thank you.~ 
IF ~~ THEN + pid2 
END 

IF ~~ goodman1a2 
SAY ~I do my best.~ 
IF ~~ THEN + pid2 
END 

IF ~~ goodman1a3 
SAY ~I'm just trying to do the will of the Morninglord.~ 
IF ~~ THEN + pid2 
END 

IF ~~ goodman1b1 
SAY ~I thank you for the compliment, but I'm only trying to follow the teachings of my god.~ 
IF ~~ THEN + pid2 
END 

IF ~~ goodman1b2 
SAY ~I'm glad you think so.~ 
IF ~~ THEN + pid2 
END 

IF ~~ goodman1b3 
SAY ~I try.~ 
IF ~~ THEN + pid2 
END 

IF ~~ goodman21 
SAY ~You bring out the best in me.~ 
IF ~~ THEN + pid2 
END 

IF ~~ goodman22 
SAY ~I'm glad you still think so.~ 
IF ~~ THEN + pid2 
END 

IF ~~ goodman23 
SAY ~I'm a lucky man, too.~ 
IF ~~ THEN + pid2 
END 

IF ~~ goodman41 
SAY ~Apparently, that isn't enough.~ 
IF ~~ THEN + pid2 
END 

IF ~~ goodman42 
SAY ~The question is 'Good at what?'~ 
IF ~~ THEN + pid2 
END 

IF ~~ goodman43 
SAY ~I do the work of my god. Nothing more.~ 
IF ~~ THEN + pid2 
END 

IF ~~ shirtless1a 
SAY ~I hope I didn't offend you. I didn't realize anyone could see me.~ 
IF ~~ THEN + pid2 
END 

IF ~~ shirtless1b 
SAY ~Ahem. Thank you. Now, if you'll excuse me, I need to go stand by myself for a while... and possibly chew on my gauntlets until the urge to babble goes away.~ 
IF ~~ THEN + pid2 
END 

IF ~~ shirtless2 
SAY ~As long as you like the way I look, I'm glad.~ 
IF ~~ THEN + pid2 
END 

IF ~~ shirtless4 
SAY ~If you want a better look, just call me to your bed tonight.~ 
IF ~~ THEN + pid2 
END 

IF ~~ shy1a1 
SAY ~(blushing furiously) Is that so?~ 
IF ~~ THEN + pid2 
END 

IF ~~ shy1a2 
SAY ~Wha-... I mean... really? Oh...~ 
IF ~~ THEN + pid2 
END 

IF ~~ shy1a3 
SAY ~Are you trying to tell me something? No... I'd be better off not knowing.~ 
IF ~~ THEN + pid2 
END 

IF ~~ shy1b1 
SAY ~Oh? Er... thank you... I think...~ 
IF ~~ THEN + pid2 
END 

IF ~~ shy1b2 
SAY ~If you say so...~ 
IF ~~ THEN + pid2 
END 

IF ~~ shy1b3 
SAY ~Maybe, but telling them that tends to make them babble and trip over things.~ 
IF ~~ THEN + pid2 
END 

IF ~~ shy21 
SAY ~And that makes me a lucky, lucky man.~ 
IF ~~ THEN + pid2 
END 

IF ~~ shy22 
SAY ~I'm not *that* shy! Well... maybe a little.~ 
IF ~~ THEN + pid2 
END 

IF ~~ shy23 
SAY ~As long as you do, that's all I care about.~ 
IF ~~ THEN + pid2 
END 

IF ~~ shy41 
SAY ~I'll let you know if I see any.~ 
IF ~~ THEN + pid2 
END 

IF ~~ shy42 
SAY ~Those days are long gone for me.~ 
IF ~~ THEN + pid2 
END 

IF ~~ shy43 
SAY ~So I should probably make myself scarce if you find one.~ 
IF ~~ THEN + pid2 
END 

IF ~~ good_work1 
SAY ~Thank you!~ 
IF ~~ THEN + pid2 
END 

IF ~~ good_work2 
SAY ~I do my best.~ 
IF ~~ THEN + pid2 
END 

IF ~~ good_work3 
SAY ~I try.~ 
IF ~~ THEN + pid2 
END 

IF ~~ good_work4 
SAY ~Just doing my job.~ 
IF ~~ THEN + pid2 
END 

/* Give him something - kiss, flower, treats you purchased, treats you made */ 

IF ~~ gift 
SAY ~Oh?~ 
+ ~RandomNum(4,1)~ + ~I know you like sweets, so I picked up some candied apricots for you.~ + apricot1 
+ ~RandomNum(4,2)~ + ~I know you like sweets, so I picked up some candied apricots for you.~ + apricot2 
+ ~RandomNum(4,3)~ + ~I know you like sweets, so I picked up some candied apricots for you.~ + apricot3 
+ ~RandomNum(4,4)~ + ~I know you like sweets, so I picked up some candied apricots for you.~ + apricot4 
+ ~RandomNum(6,1)~ + ~You're looking a little thin these days, so I made you some honey cakes. I hope you like them.~ + cake1 
+ ~RandomNum(6,2)~ + ~You're looking a little thin these days, so I made you some honey cakes. I hope you like them.~ + cake2 
+ ~RandomNum(6,3)~ + ~You're looking a little thin these days, so I made you some honey cakes. I hope you like them.~ + cake3 
+ ~RandomNum(6,4)~ + ~You're looking a little thin these days, so I made you some honey cakes. I hope you like them.~ + cake4 
+ ~RandomNum(6,5)~ + ~You're looking a little thin these days, so I made you some honey cakes. I hope you like them.~ + cake5 
+ ~RandomNum(6,6)~ + ~You're looking a little thin these days, so I made you some honey cakes. I hope you like them.~ + cake6 
++ ~Close your eyes!~ + close_eyes 
+ ~RandomNum(4,1)~ + ~It's a flower.~ + flower1 
+ ~RandomNum(4,2)~ + ~It's a flower.~ + flower2 
+ ~RandomNum(4,3)~ + ~It's a flower.~ + flower3 
+ ~RandomNum(4,4)~ + ~It's a flower.~ + flower4 
++ ~You'll have to wait. I'm saving it for later.~ + suspense 
++ ~Never mind.~ + pid2 
END 

IF ~~ suspense 
SAY ~Oh, the torture! Now I'll be wondering what you're up to all day.~ 
IF ~~ THEN + pid2 
END 

IF ~~ apricot1 
SAY ~Why, thank you! I love apricots!~ 
IF ~~ THEN + pid2 
END 

IF ~~ apricot2 
SAY ~That was very thoughtful. Thank you.~ 
IF ~~ THEN + pid2 
END 

IF ~~ apricot3 
SAY ~Mmm. These are delicious. Have some!~ 
IF ~~ THEN + pid2 
END 

IF ~~ apricot4 
SAY ~That was very kind of you, but my stomach is a bit off right now. Can we save them for later?~ 
IF ~~ THEN + pid2 
END 

IF ~~ flower1 
SAY ~How thoughtful! Thank you very much.~ 
IF ~~ THEN + pid2 
END 

IF ~~ flower2 
SAY ~It's beautiful, but it seems a shame to pick such a beautiful flower for me. Here, it will look much better on you. (He gently tucks the flower behind your ear.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ flower3 
SAY ~It's lovely... like you.~ 
IF ~~ THEN + pid2 
END 

IF ~~ flower4 
SAY ~(A bee crawls out as you give it to him and stings him on the hand. He drops the flower in surprise.)~ 
= ~Oops. Let's just give this a good shake before I put this through my belt. Much safer that way. Thank you for the flower, though!~ 
IF ~~ THEN + pid2 
END 

IF ~~ cake1 
SAY ~Oh, my favorite! Thank you!~ 
IF ~~ THEN + pid2 
END 

IF ~~ cake2 
SAY ~These are delicious! And nice and gooey, just the way I like them. Want to share?~ 
IF ~~ THEN + pid2 
END 

IF ~~ cake3 
SAY ~Trying to fatten me up, eh? Well, I have lost weight, so I won't argue with that. They're very good, though. You're an excellent cook.~ 
IF ~~ THEN + pid2 
END 

IF ~~ cake4 
SAY ~These are even better than my mother's!~ 
IF ~~ THEN + pid2 
END 

IF ~~ cake5 
SAY ~What a thoughtful gift! Thank you!~ 
IF ~~ THEN + pid2 
END 

IF ~~ cake6 
SAY ~Thank you! They... er... Are honey cakes supposed to be this crispy?~ 
++ ~It's a special recipe.~ + cake6a 
++ ~The fire was a bit too hot.~ + cake6b 
++ ~I toasted them for you.~ + cake6c 
++ ~I guess I'm not a very good cook.~ + cake6d 
++ ~If you don't want the cakes, I'll eat them.~ + cake6e 
END 

IF ~~ cake6a 
SAY ~Ah, well, I'll try anything once!~ 
IF ~~ THEN + pid2 
END 

IF ~~ cake6b 
SAY ~That happens. They'll still be tasty.~ 
IF ~~ THEN + pid2 
END 

IF ~~ cake6c 
SAY ~Ah... thank you.~ 
IF ~~ THEN + pid2 
END 

IF ~~ cake6d 
SAY ~That's alright. I eat anything.~ 
IF ~~ THEN + pid2 
END 

IF ~~ cake6e 
SAY ~We can share.~ 
IF ~~ THEN + pid2 
END 

IF ~~ close_eyes 
SAY ~(He obediently closes his eyes.)~ 
+ ~Global("B!GavRA","GLOBAL",1) GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You kiss him firmly on the lips.)~ + surprisekiss1a 
+ ~Global("B!GavRA","GLOBAL",1) !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You kiss him firmly on the lips.)~ + surprisekiss1b 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~(You kiss him firmly on the lips.)~ + surprisekiss2 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~(You kiss him firmly on the lips.)~ + surprisekiss4 
+ ~RandomNum(4,1)~ + ~(You seize a fistful of cloth in each hand and yank his leggings down.)~ + pantsed1 
+ ~RandomNum(4,2)~ + ~(You seize a fistful of cloth in each hand and yank his leggings down.)~ + pantsed2 
+ ~RandomNum(4,3)~ + ~(You seize a fistful of cloth in each hand and yank his leggings down.)~ + pantsed3 
+ ~RandomNum(4,4)~ + ~(You seize a fistful of cloth in each hand and yank his leggings down.)~ + pantsed4 
++ ~(You walk away.)~ + idiot 
END 

IF ~~ idiot 
SAY ~<CHARNAME>? Where did you go?~ 
IF ~~ THEN EXIT 
END 

IF ~~ pantsed1 
SAY ~(His eyes fly open and he catches his leggings on the way down, saving himself a great deal of embarrassment.)~ 
= ~Whoa, <CHARNAME>! I can live without surprises like that!~ 
IF ~~ THEN EXIT 
END 

IF ~~ pantsed2 
SAY ~(He clutches at his descending leggings, but misses. Fortunately for his dignity, his small clothes remained in place.)~ 
= ~What an incredibly childish thing to do!~ 
IF ~~ THEN EXIT 
END 

IF ~~ pantsed3 
SAY ~(He flails around, trying to prevent the inevitable, but fails. With both leggings and small clothes around his knees, he tries unsuccessfully to cover himself. Finally, he manages to get his clothing back where it was. He walks away in disgust.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ pantsed4 
SAY ~(He lets out a strangled yelp and drops to the ground clutching himself. You might not have gotten his leggings down, but you seem to have damaged something dear to him.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ surprisekiss1a 
SAY ~(His eyes fly open the moment your lips meet his. He gasps and pulls away from you.)~ 
= ~<CHARNAME>... what... ?~ 
++ ~You needed a kiss.~ + surprisekiss1a1 
++ ~Didn't you like it?~ + surprisekiss1a2 
++ ~You're too shy, Gavin.~ + surprisekiss1a3 
++ ~Let's see you walk a straight line now!~ + surprisekiss1a4 
++ ~Is something wrong?~ + surprisekiss1a5 
END 

IF ~~ surprisekiss1a1 
SAY ~Maybe, but... it's so soon...~ 
IF ~~ THEN EXIT 
END 

IF ~~ surprisekiss1a2 
SAY ~Aye, but it's too soon!~ 
IF ~~ THEN EXIT 
END 

IF ~~ surprisekiss1a3 
SAY ~I just need a little time, that's all.~ 
IF ~~ THEN EXIT 
END 

IF ~~ surprisekiss1a4 
SAY ~I think I'd better just stand here a moment... in shocked disbelief. Not that I minded all that much, but it's so soon...~ 
IF ~~ THEN EXIT 
END 

IF ~~ surprisekiss1a5 
SAY ~You kissed me! For no reason!~ 
IF ~~ THEN EXIT 
END 

IF ~~ surprisekiss1b 
SAY ~(He starts to pull away, but apparently thinks better of it, and returns your kiss with great enthusiasm... and very little skill. After a few moments, however, he starts to follow your lead, and the experience becomes far more pleasant.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ surprisekiss2 
SAY ~(He is startled at first, but soon returns your kiss eagerly, lacing his fingers through your hair and drawing you into a close embrace. When you part at last, he sighs happily.)~ 
= ~My favorite kind of surprise!~ 
IF ~~ THEN + pid2 
END 

IF ~~ surprisekiss4 
SAY ~(He is startled at first, but soon returns your kiss eagerly, lacing his fingers through your hair and drawing you into  close embrace.)~ 
= ~Remind me to continue that discussion later.~ 
IF ~~ THEN + pid2 
END 

/* Engaged in BG1 stuff - missing finger, do you remember..., wedding */ 

IF ~~ ge2 
SAY ~In what way?~ 
++ ~Do you remember our first kiss?~ + firstkiss 
++ ~Do you remember our 'wedding'?~ + wedding 
+ ~Global("B!GavFinger","GLOBAL",2)~ + ~(You run your fingertip over the scar that was once his left forefinger.)~ + finger 
++ ~Do you remember how angry you got when Durlyle kissed me?~ + durlyle 
++ ~I was thinking about the first time you tried getting in bed with me.~ + firstbed 
++ ~Do you ever wish you could do it all over again?~ + doover 
++ ~Just general thoughts, that's all.~ + nostalgia 
END 

IF ~~ firstkiss 
SAY ~It was right in the middle of the street, as I recall. I was terrified.~ 
++ ~You were so nervous!~ + firstkiss1 
++ ~I thought you'd never get around to it.~ + firstkiss2 
++ ~You took me completely by surprise.~ + firstkiss3 
++ ~Your timing could have been better.~ + firstkiss4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Do you ever wish you'd done it differently?~ + firstkiss5 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Do you ever wish you'd done it differently?~ + firstkiss6 
++ ~I was in love with someone else at the time, as I recall.~ + firstkiss7 
END 

IF ~~ firstkiss1 
SAY ~I had good reason to be. You were the most impressive woman I'd ever beheld. You still are.~ 
IF ~~ THEN + pid2 
END 

IF ~~ firstkiss2 
SAY ~I almost didn't! I couldn't decide whether I wanted to kiss you or faint. Kissing you was far more pleasant.~ 
IF ~~ THEN + pid2 
END 

IF ~~ firstkiss3 
SAY ~It was a surprise for me, too, I'll tell you that.~ 
IF ~~ THEN + pid2 
END 

IF ~~ firstkiss4 
SAY ~It could have been worse, too, but admit it. If the timing hadn't been so bad, would we still remember things so vividly?~ 
IF ~~ THEN + pid2 
END 

IF ~~ firstkiss5 
SAY ~Never.~ 
IF ~~ THEN + pid2 
END 

IF ~~ firstkiss6 
SAY ~The kiss? No. Everything else...~ 
IF ~~ THEN EXIT  
END 

IF ~~ firstkiss7 
SAY ~I'm glad you came around.~ 
IF ~~ THEN + pid2 
END 

IF ~~ wedding 
SAY ~I woke everyone up in the middle of the night for it!~ 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~Do you still consider us married?~ + wedding1a 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Do you still consider us married?~ + wedding1b 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Do you still consider us married?~ + wedding1c 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~Are we ever going to have a formal wedding?~ + wedding2a 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Are we ever going to have a formal wedding?~ + wedding2b 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Just as well we never got around to that formal wedding.~ + wedding2c 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~Do you love me just as much now as you did then?~ + wedding3a 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Do you love me just as much now as you did then?~ + wedding3b 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Do you love me just as much now as you did then?~ + wedding3c 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~I still think you were just looking for an excuse to bed me.~ + wedding4a 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I still think you were just looking for an excuse to bed me.~ + wedding4b 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I still think you were just looking for an excuse to bed me.~ + wedding4c 
++ ~The things we did!~ + wedding5
END 

IF ~~ wedding1a 
SAY ~No. You asked to be released from our vows, so I released you. I'm hoping that one day, you'll be willing to make them again, but I'm content to wait.~ 
IF ~~ THEN + pid2 
END 

IF ~~ wedding1b 
SAY ~Aye, though I'd still like to have a formal ceremony involving our families and friends someday.~ 
IF ~~ THEN + pid2 
END 

IF ~~ wedding1c 
SAY ~Not at all. You asked me to release you, so I did.~ 
IF ~~ THEN + pid2 
END 

IF ~~ wedding2a 
SAY ~We will if you ever decide you want to be married to me... but no pressure. Don't do anything before you're ready.~ 
IF ~~ THEN + pid2 
END 

IF ~~ wedding2b 
SAY ~Absolutely! I'm looking forward to it.~ 
IF ~~ THEN + pid2 
END 

IF ~~ wedding2c 
SAY ~Aye, just as well.~ 
IF ~~ THEN + pid2 
END 

IF ~~ wedding3a 
SAY ~Aye, though I do try to give you the freedom I know you need.~ 
IF ~~ THEN + pid2 
END 

IF ~~ wedding3b 
SAY ~I love you even more.~ 
IF ~~ THEN + pid2 
END 

IF ~~ wedding3c 
SAY ~Don't ask me that. Please.~ 
IF ~~ THEN + pid2 
END 

IF ~~ wedding4a 
SAY ~If that was all it was, I would have dragged you to Beregost as soon as I proposed... and I wouldn't have been willing to forgo the pleasure of your bed when you asked me to release you from our vows.~ 
IF ~~ THEN + pid2 
END 

IF ~~ wedding4b 
SAY ~If that was all it was, I would have dragged you to Beregost as soon as I proposed.~ 
IF ~~ THEN + pid2 
END 

IF ~~ wedding4c 
SAY ~Hardly.~ 
IF ~~ THEN + pid2 
END 

IF ~~ wedding5 
SAY ~The things we did.~ 
IF ~~ THEN + pid2 
END 

IF ~~ finger 
SAY ~Hmm?~ 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~I still feel guilty about that.~ + finger1 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I still feel guilty about that.~ + finger2 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I still feel guilty about that.~ + finger3 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~Does it still hurt?~ + finger4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Does it still hurt?~ + finger5 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Does it still hurt?~ + finger6 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~Do you ever resent me for that?~ + finger7 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~Do you ever resent me for that?~ + finger8 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~Do you ever resent me for that?~ + finger9 
++ ~Can you feel it when I touch the scar?~ + finger10 
++ ~I still can't believe you did that.~ + finger11 
END 

IF ~~ finger1 
SAY ~Don't, please. It was my decision, and I've never regretted it. Besides, a promise is a promise, and I've still got hope.~ 
IF ~~ THEN + pid2 
END 

IF ~~ finger2 
SAY ~Don't, please. A finger was a small price to pay for the joy you've brought into my life.~ 
IF ~~ THEN + pid2 
END 

IF ~~ finger3 
SAY ~Don't. We all bear scars from our past, and regretting them will only make us miserable.~ 
IF ~~ THEN + pid2 
END 

IF ~~ finger4 
SAY ~Not at all. There was a little phantom pain for a while, but even that went away a long time ago.~ 
IF ~~ THEN + pid2 
END 

IF ~~ finger5 
SAY ~Not at all. It smarted a bit at the time, but I've had worse, and even the memory of it has faded.~ 
IF ~~ THEN + pid2 
END 

IF ~~ finger6 
SAY ~The finger? No, that's long past. Sometimes, there's the pain of something that used to be there and isn't any longer, but that has nothing to do with my hand.~ 
IF ~~ THEN + pid2 
END 

IF ~~ finger7 
SAY ~I didn't resent you then, and I don't resent you now. It was my choice.~ 
IF ~~ THEN + pid2 
END 

IF ~~ finger8 
SAY ~I never resented you. A finger is a small price to pay for the joy you've brought into my life.~ 
IF ~~ THEN + pid2 
END 

IF ~~ finger9 
SAY ~I never resented you. I still have the memory of the happiness we shared, even if it didn't last. A lot of people never have that much.~ 
IF ~~ THEN + pid2 
END 

IF ~~ finger10 
SAY ~Aye, but it's a bit strange. Scars always have an odd little tingle to them. It isn't unpleasant, it's just different.~ 
IF ~~ THEN + pid2 
END 

IF ~~ finger11 
SAY ~I believe it. I would have done anything for you.~ 
IF ~~ THEN + pid2 
END 

IF ~~ durlyle 
SAY ~I wanted to kill him.~ 
++ ~You were a lot more jealous back then.~ + durlyle1 
++ ~It was sweet.~ + durlyle2 
++ ~He was just playing.~ + durlyle3 
++ ~That's a little extreme.~ + durlyle4 
END 

IF ~~ durlyle1 
SAY ~I've had a lot of time to think since then.~ 
IF ~~ THEN + pid2 
END 

IF ~~ durlyle2 
SAY ~It was foolish. We were leaving, he was staying. I had no reason to be as jealous as I was.~ 
IF ~~ THEN + pid2 
END 

IF ~~ durlyle3 
SAY ~I know that now, but at the time, I just felt threatened.~ 
IF ~~ THEN + pid2 
END 

IF ~~ durlyle4 
SAY ~Aye, it was, and foolish, too.~ 
IF ~~ THEN + pid2 
END 

IF ~~ firstbed 
SAY ~How could I forget that? I really did get carried away with that one.~ 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~You were never any good at restraint.~ + firstbed1 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~You were never any good at restraint.~ + firstbed2 
+ ~Global("B!GavRA","GLOBAL",3)~ + ~You were never any good at restraint.~ + firstbed3 
++ ~It was all over so fast!~ + firstbed4 
++ ~It was still special.~ + firstbed5 
++ ~You frightened me.~ + firstbed6 
++ ~You stopped when I asked you to, though.~ + firstbed7 
END 

IF ~~ firstbed1 
SAY ~I'm learning.~ 
IF ~~ THEN + pid2 
END 

IF ~~ firstbed2 
SAY ~No, I never was.~ 
IF ~~ THEN + pid2 
END 

IF ~~ firstbed3 
SAY ~I'd better learn, I guess.~ 
IF ~~ THEN + pid2 
END 

IF ~~ firstbed4 
SAY ~Oh, gods. Our first night together and the one thing you remember is how poor a lover I was. That will teach me humility.~ 
IF ~~ THEN + pid2 
END 

IF ~~ firstbed5 
SAY ~Aye, that it was.~ 
IF ~~ THEN + pid2 
END 

IF ~~ firstbed6 
SAY ~Heh. I frightened me, too.~ 
IF ~~ THEN + pid2 
END 

IF ~~ firstbed7 
SAY ~Aye. How could I not?~ 
IF ~~ THEN + pid2 
END 

IF ~~ doover 
SAY ~I'd just do it all the same again.~ 
IF ~~ THEN + pid2 
END 

IF ~~ nostalgia 
SAY ~We all get nostalgic sometimes.~ 
IF ~~ THEN + pid2 
END 

/* Ask for help - heavy object, adjust clothing, massage, relieve sexual tension */ 

IF ~~ help 
SAY ~What can I do for you?~ 
+ ~!CheckStatGT(Player1,16,STR)~ + ~Would you pick this up for me? It's quite heavy.~ + lift1 
+ ~CheckStatGT(Player1,16,STR)~ + ~Would you pick this up for me? It's quite heavy.~ + lift2 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~My shoulder is a little sore. Would you mind tightening the laces there in the back?~ + laces1 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~My shoulder is a little sore. Would you mind tightening the laces there in the back?~ + laces2 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~My shoulder is a little sore. Would you mind tightening the laces there in the back?~ + laces4 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~I feel so tense! Would you mind rubbing my shoulders?~ + massage1 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I feel so tense! Would you mind rubbing my shoulders?~ + massage2 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I feel so tense! Would you mind rubbing my shoulders?~ + massage4 
+ ~RandomNum(3,1)~ + ~My back itches, and I can't reach. Would you mind?~ + backscratch1 
+ ~RandomNum(3,2)~ + ~My back itches, and I can't reach. Would you mind?~ + backscratch2 
+ ~RandomNum(3,3)~ + ~My back itches, and I can't reach. Would you mind?~ + backscratch3 
+ ~Global("B!GavRA","GLOBAL",1)~ + ~It's rather personal...~ + personal1 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~It's rather personal...~ + personal2 
+ ~Global("B!GavRA","GLOBAL",3)~ + ~It's rather personal...~ + personal4 
++ ~Nothing, really.~ + pid2 
END 

IF ~~ lift1 
SAY ~Certainly! My, this is heavy. I'm glad you asked for help. Back injuries can haunt you for the rest of your life.~ 
IF ~~ THEN + pid2 
END 

IF ~~ lift2 
SAY ~I'd be glad to, though to tell you the truth, you're probably stronger than I am.~ 
IF ~~ THEN + pid2 
END 

IF ~~ laces1 
SAY ~I'll try, but I should warn you that I have absolutely no experience with this.~ 
++ ~You've never laced a gown before?~ + laces1a 
++ ~It isn't much different from tying your own laces, I'd expect, and you manage that well enough.~ + laces1b 
++ ~You aren't a virgin, Gavin.~ + laces1c 
++ ~I have every faith in your ability to tie a knot without getting your fingers stuck in it.~ + laces1d 
++ ~Oh, never mind.~ + pid2 
END 

IF ~~ laces1a 
SAY ~Never. The only female I've ever dressed was Lanie before she was old enough to dress herself, and all her clothes just pulled on. But I'll see what I can do.~ 
IF ~~ THEN + dresspc_1  
END 

IF ~~ laces1b 
SAY ~Aye, you're probably right. Let's just see what we've got here.~ 
IF ~~ THEN + dresspc_1  
END 

IF ~~ laces1c 
SAY ~I might as well be, for all I learned about women from that disaster. Still, I don't suppose that it's that difficult. I'll see what I can do.~ 
IF ~~ THEN + dresspc_1  
END 

IF ~~ laces1d 
SAY ~Then you have more confidence than me. Still, how hard can it be?~ 
IF ~~ THEN + dresspc_1  
END 

IF ~~ dresspc_1 
SAY ~(He tugs on the laces gently... too gently, in fact. It takes a few tries, but eventually, he manages to get your fastenings done up and your gown secured. When he's done, he seems rather pleased with himself.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ laces2 
SAY ~I'd rather be loosening the laces instead, but I'll do my best.~ 
++ ~I'm sure you'll find a way to work a grope into that somehow, love.~ + laces2a 
+ ~Global("B!GavSex","GLOBAL",1)~ + ~You can do that later... if you want to come to my bed tonight, that is.~ + laces2b 
++ ~Is that all you think about, Gavin?~ + laces2c 
++ ~I'd rather be loosening yours, as well, but we'll just have to put that off for a while.~ + laces2d 
++ ~Oh, never mind.~ + pid2 
END 

IF ~~ laces2a 
SAY ~Only with your permission...~ 
IF ~~ THEN + dresspc_2 
END 

IF ~~ laces2b 
SAY ~I'm always eager to come to your bed, love.~ 
IF ~~ THEN DO ~SetGlobal("B!GavPCWantsIt","LOCALS",1)~ + dresspc_2 
END 

IF ~~ laces2c 
SAY ~No, of course not... well, not *all* I think about, anyway.~ 
IF ~~ THEN + dresspc_2 
END 

IF ~~ laces2d 
SAY ~You have only to say the word, love.~ 
IF ~~ THEN + dresspc_2 
END 

IF ~~ dresspc_2 
SAY ~(He tugs on the laces gently, but he manages to get your fastenings done up and your gown secured. When he's done, he kisses the back of your neck before releasing you.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ laces4 
SAY ~I'd rather be loosening the laces instead, but I'll do my best.~ 
++ ~I'm sure you'll find a way to work a grope into that somehow.~ + laces2a 
+ ~Global("B!GavSex","GLOBAL",1)~ + ~You can do that later... if you want to come to my bed tonight, that is.~ + laces4b 
++ ~Is that all you think about, Gavin?~ + laces2c 
++ ~I'd rather be loosening yours, as well, but we'll just have to put that off for a while.~ + laces4d 
++ ~Oh, never mind.~ + pid2 
END 

IF ~~ laces4b 
SAY ~I'm always willing to come to your bed. It's probably my greatest weakness.~ 
IF ~~ THEN DO ~SetGlobal("B!GavPCWantsIt","LOCALS",1)~ + dresspc_2 
END 

IF ~~ laces4d 
SAY ~You have only to say the word.~ 
IF ~~ THEN + dresspc_2 
END 

IF ~~ massage1 
SAY ~(At first, he seems unsure about where to put his hands, but after a few moments, he seems to realize that you have asked him to help you as a healer, and he settles into that familiar role with obvious relief. He eases your cramped muscles gently, but his touch is firm where it needs to be. When he is done, you feel much better.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ massage2 
SAY ~(He helps you remove your pack and sets to work on your back with comfortable familiarity. He eases your cramped muscles gently, but his touch is firm where it needs to be. When he is done, you feel much better.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ massage4 
SAY ~(He seems reluctant at first, but after a few moments, he seems to realize that you have asked him to help you as a healer, and he settles into that familiar role with obvious relief. He eases your cramped muscles gently, but his touch is firm where it needs to be. When he is done, you feel much better.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ backscratch1 
SAY ~I just trimmed my nails, but we'll see what we can do.~ 
IF ~~ THEN + backscratch 
END 

IF ~~ backscratch2 
SAY ~No, of course I don't mind.~ 
IF ~~ THEN + backscratch 
END 

IF ~~ backscratch3 
SAY ~Alright, but let me know if I'm too rough.~ 
IF ~~ THEN + backscratch 
END 

IF ~~ backscratch 
SAY ~(He needs a bit of direction, but once he finds the itchy spot, he sets to work with great enthusiasm.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ personal1 
SAY ~If there's something I can do for you, I will.~ 
++ ~I was wondering if you would intercede with someone on my behalf. I've had my eye on -~ + matchmaker
++ ~Well, I've been feeling frustrated lately, and I was wondering if you could help me.~ + frustrated1  
++ ~You've been very attentive to me, but the truth is that I just don't want that kind of friendship with you.~ + dump1 
++ ~It's hard to put it into words.~ + nowords 
++ ~Nevermind.~ + pid2 
END 

IF ~~ nowords 
SAY ~Personal matters are like that, sometimes.~ 
IF ~~ THEN + pid2 
END 

IF ~~ matchmaker 
SAY ~I'm no matchmaker, <CHARNAME>. I can't even communicate my own desires, it seems, let alone another's. If there's someone you want to talk to, you're going to have to do it yourself.~ 
IF ~~ THEN + pid2 
END 

IF ~~ dump1 
SAY ~I... I understand. I realize that you've taken some pains to spare my feelings in this, and I appreciate that.~ 
IF ~~ THEN DO ~SetGlobal("B!GavRA","GLOBAL",3) 
      SetGlobal("B!GavRomBreak","GLOBAL",1)~ EXIT 
END 

IF ~~ frustrated1 
SAY ~You're feeling frustrated? in what way?~ 
+ ~Alignment(Player1,MASK_EVIL)~ + ~You always want to do the right thing, and that's hard for me to accept.~ + evilpc 
+ ~!Alignment(Player1,MASK_EVIL)~ + ~You always want to do what you consider to be the right thing, but sometimes, I don't feel the same way about it.~ + notevilpc 
++ ~I want to be with a man, Gavin.~ + bewithman 
++ ~Whatever I do, it never seems to be enough.~ + notenough 
++ ~Everyone is always bickering, Gavin. There's no peace in this party.~ + nopeaceandquiet 
++ ~Oh, never mind.~ + pid2 
END 

IF ~~ nopeaceandquiet 
SAY ~You're always going to have that when you spend as much time together as we do. We get frustrated over petty little things, and we take it out on each other by joking about our faults, or by saying unkind things to each other, or even by playing little tricks on each other.~ 
= ~I know you grew up with Imoen, and that the two of you must have been close, but didn't you ever argue with her for no really good reason? It was the same between my brother Jolun and I.~ 
= ~In a lot of ways, we're like a family, <CHARNAME>... in a very loose sense. My point is that we all know each others' weaknesses, and sometimes, when we're feeling threatened or just plain irritable, we take it out on each other because it's safe. It doesn't mean that we don't care about each other. It just means that we know each other well enough to risk it.~ 
IF ~~ THEN + pid2 
END 

IF ~~ notenough 
SAY ~It does seem that way sometimes, doesn't it? But something is always better than nothing, so as long as we aren't falling behind, we're making progress, even if it's slower than you'd like.~ 
IF ~~ THEN + pid2 
END 

IF ~~ notevilpc 
SAY ~You don't have to please me, <CHARNAME>! You're the leader of this group. Please yourself and please your god, and the rest of us can accept it or we can leave.~ 
IF ~~ THEN + pid2 
END 

IF ~~ evilpc 
SAY ~I can't change who I am, <CHARNAME>. I hope you don't really expect me to try.~ 
IF ~~ THEN + pid2 
END 

IF ~~ bewithman 
SAY ~I see. How do you think I could help you?~ 
++ ~You're a man. Everything works, right?~ + bwm1 
++ ~You haven't been with a woman in a long time. You must need some relief yourself.~ + bwm2 
++ ~You've been alone for a long time. How do you suppress your urges?~ + bwm3 
++ ~On second thought, maybe you can't help me.~ + pid2 
END 

IF ~~ bwm1 
SAY ~Aye, but that isn't exactly something I want to talk about.~ 
IF ~~ THEN + celibate 
END 

IF ~~ bwm2 
SAY ~Temporary discomfort aside, I really don't.~ 
IF ~~ THEN + celibate 
END 

IF ~~ bwm3 
SAY ~With great difficulty, apparently.~ 
IF ~~ THEN + celibate 
END 

IF ~~ celibate 
SAY ~I'm celibate by choice, <CHARNAME>.~ 
++ ~I've never heard of a celibate Lathandrite.~ + celibate1 
++ ~You seem interested in women, though.~ + celibate2 
++ ~What would make you choose such a thing?~ + celibate3 
++ ~Forget I asked.~ + pid2 
END 

IF ~~ celibate1 
SAY ~I'm probably the only one.~ 
IF ~~ THEN + awakened 
END 

IF ~~ celibate2 
SAY ~Aye... more than is good for me.~ 
IF ~~ THEN + awakened 
END 

IF ~~ celibate3 
SAY ~A foolish decision I made a long time ago.~ 
IF ~~ THEN + awakened 
END 

IF ~~ awakened 
SAY ~We Lathandrites believe that loving, intimate relations are a necessary part of maintaining physical and spiritual health. The union itself satisfies carnal urges, true, but it also fulfils the emotional need to be close to another. This closeness encourages a healthy spirit and a more complete sense of self. We're commanded to be fruitful in mind and body, so the Morninglord obviously does not intend us to reject another's touch.~ 
= ~If I abstain, it isn't because I believe it keeps me pure. I do it because I don't want to ruin anyone else's life by confusing lust with love. I did that once, and it ended very badly for everyone involved.~ 
= ~I can't tell you what to do, <CHARNAME>. You have needs, and I'm not going to tell you to ignore them, but don't look to me for help there, because I can't give it to you. I hope you understand.~ 
IF ~~ THEN + pid2 
END 

IF ~~ personal2 
SAY ~Oh, how I enjoy those personal requests! Just say the word, and I'll be there.~ 
IF ~~ THEN + pid2 
END 

IF ~~ personal4 
SAY ~Say the word, and I'll be there.~ 
IF ~~ THEN + pid2 
END 

/* Ask him to dance with you */ 

IF ~~ dance1 
SAY ~I'm no dancer, <CHARNAME>. Hells, I can barely walk when other people are looking at me.~ 
++ ~Please... It really would mean a lot to me.~ + yes_dance
++ ~Lots of other people are dancing. No one will even notice us.~ + no_dance
++ ~Just think about it, Gavin. An almost chaste touch accompanied by a sultry glance? How can you resist?~ + resist_dance 
++ ~Never mind. You're no fun.~ + spare_embarrass 
END 

IF ~~ dance2 
SAY ~Why don't I just lie on the floor and pour ale all over myself now? It would be faster.~ 
++ ~Please... It really would mean a lot to me.~ + yes_dance
++ ~Lots of other people are dancing. No one will even notice us.~ + no_dance
++ ~Just think about it, Gavin. An almost chaste touch accompanied by a sultry glance? How can you resist?~ + resist_dance 
++ ~Never mind. You're no fun.~ + spare_embarrass 
END 

IF ~~ dance3 
SAY ~This usually ends badly, <CHARNAME>. Just so you know.~ 
++ ~Please... It really would mean a lot to me.~ + yes_dance
++ ~Lots of other people are dancing. No one will even notice us.~ + no_dance
++ ~Just think about it, Gavin. An almost chaste touch accompanied by a sultry glance? How can you resist?~ + resist_dance 
++ ~Never mind. You're no fun.~ + spare_embarrass 
END 

IF ~~ dance4 
SAY ~Thanks, but I've already humiliated myself at least once already today. I'm practically certain of it.~ 
++ ~Please... It really would mean a lot to me.~ + yes_dance
++ ~Lots of other people are dancing. No one will even notice us.~ + no_dance
++ ~Just think about it, Gavin. An almost chaste touch accompanied by a sultry glance? How can you resist?~ + resist_dance 
++ ~Never mind. You're no fun.~ + spare_embarrass 
END 

IF ~~ yes_dance 
SAY ~Oh, alright, but I know I'm going to regret this.~ 
IF ~RandomNum(4,1)~ THEN + dance_end1 
IF ~RandomNum(4,2)~ THEN + dance_end2 
IF ~RandomNum(4,3)~ THEN + dance_end3 
IF ~RandomNum(4,4)~ THEN + dance_end4 
END 

IF ~~ no_dance 
SAY ~I don't care if the entire city is up and dancing. Come on, I'll buy you an ale.~ 
IF ~~ THEN + pid2 
END 

IF ~~ resist_dance 
SAY ~Gah... you're right. I can't. Lead on, and we'll just have to hope for the best.~ 
IF ~RandomNum(4,1)~ THEN + dance_end1 
IF ~RandomNum(4,2)~ THEN + dance_end2 
IF ~RandomNum(4,3)~ THEN + dance_end3 
IF ~RandomNum(4,4)~ THEN + dance_end4 
END 

IF ~~ spare_embarrass 
SAY ~Thank you for sparing me at least some embarrassment today.~ 
IF ~~ THEN + pid2 
END 

IF ~~ dance_end1 
SAY ~(Gavin may have been favored by Lathander, but it soon becomes clear that Tymora bears him no love. The weapon he wears at his belt snags the skirt of a fellow dancer, tearing it with a rip loud enough to silence the dancers, the musicians, and the rest of the tavern. The suddenly bare-legged woman covers her face with her hands and screams.)~ 
= ~I beg you, my good woman, forgive me! It was an accident I swear. Here, take my cloak... please don't glare at me like that.~ 
= ~We were just leaving, weren't we?~ 
IF ~~ THEN EXIT 
END 

IF ~~ dance_end2 
SAY ~(Things begin sedately enough. Gavin seems to be concentrating more on keeping his arms, legs, and equipment from damaging yourself or other dancers than he is on following the steps of the dance, but the occasional mashed toe is a minor inconvenience compared the the mayhem he might otherwise cause.)~ 
= ~(In an instant, however, the moment of grace is over, and he slips on some spilled ale. He clutches at you wildly and falls, dragging you down on top of him. Your knee catches him squarely in the midsection, and you hear several loud cracking sounds. He groans and curls himself into a ball.)~ 
= ~Oh, gods... my ribs...~
IF ~~ THEN DO ~ApplyDamagePercent("B!Gavin2",5,CRUSHING)~ EXIT 
END 

IF ~~ dance_end3 
SAY ~(He takes your hand and leads you to the dance floor with obvious trepidation. The musicians play a stately pavane, however, so if something bad is going to happen, at least it will happen slowly.)~ 
= ~(All things considered, the dance does not go badly. At one point, Gavin turned left instead of right and collided with an indignant noblewoman, but a few muttered apologies and a tugged forelock or two smoothed things over with minimal incident, and you complete the dance without injuring anyone in any material way.)~
IF ~~ THEN EXIT 
END 

IF ~~ dance_end4 
SAY ~(The musicians strike up a reel as you take the floor. The quick beat and lively step might prove an insurmountable obstacle to a dancer of Gavin's ability... or lack thereof... but to your surprise, he relaxes instantly, taking your hand and cheerfully leading you through the complex dance without mishap. By the time the tune ends, you're both panting for air, but Gavin is grinning happily. He leads you to the bar and presses a cool drink into your hand.)~ 
= ~They used to play that one every Greengrass back in the Beard. I was only a lad, but gods, how I loved it! I'd be able to swing Reed or Della about and fling them off into the sidelines if I got enough momentum going. Good times, <CHARNAME>, good times.~ 
IF ~~ THEN EXIT 
END 

/* Ask him to draw you as a nude */ 
/* Ask to draw him as a nude */ 
IF ~~ nude 
SAY ~If you're serious, I'd be willing to do it. Next time we stay at an inn, I'll come to your room and we can talk more about it then.~ 
IF ~~ THEN + pid2 
END 


/* Sing for him */ 

IF ~~ sing 
SAY ~(You sing... )~ 
+ ~OR(2) Class(Player1,BARD_ALL) 
      CheckStatGT(Player1,13,CHR)~ + ~(You sing a lively tune you heard in a Beregost tavern.)~ + tavernsong1 
+ ~!Class(Player1,BARD_ALL) 
      !CheckStatGT(Player1,13,CHR)~ + ~(You sing a lively tune you heard in a Beregost tavern.)~ + tavernsong2 
+ ~OR(2) Class(Player1,BARD_ALL) 
      CheckStatGT(Player1,13,CHR)~ + ~(You sing a sad song of love and loss.)~ + sadsong1 
+ ~!Class(Player1,BARD_ALL) 
      !CheckStatGT(Player1,13,CHR)~ + ~(You sing a sad song of love and loss.)~ + sadsong2 
+ ~OR(2) Class(Player1,BARD_ALL) 
      CheckStatGT(Player1,13,CHR)~ + ~(You sing a song of unrequited love.)~ + unrequitedsong1 
+ ~!Class(Player1,BARD_ALL) 
      !CheckStatGT(Player1,13,CHR)~ + ~(You sing a song of unrequited love.)~ + unrequitedsong2 
+ ~OR(2) Class(Player1,BARD_ALL) 
      CheckStatGT(Player1,13,CHR)~ + ~(You sing a bawdy song.)~ + bawdysong1 
+ ~!Class(Player1,BARD_ALL) 
      !CheckStatGT(Player1,13,CHR)~ + ~(You sing a bawdy song.)~ + bawdysong2 
+ ~OR(2) Class(Player1,BARD_ALL) 
      CheckStatGT(Player1,13,CHR)~ + ~(You sing a battle march.)~ + battlesong1 
+ ~!Class(Player1,BARD_ALL) 
      !CheckStatGT(Player1,13,CHR)~ + ~(You sing a battle march.)~ + battlesong2 
+ ~OR(2) Class(Player1,BARD_ALL) 
      CheckStatGT(Player1,13,CHR)~ + ~(You sing a courtly ballad.)~ + balladsong1 
+ ~!Class(Player1,BARD_ALL) 
      !CheckStatGT(Player1,13,CHR)~ + ~(You sing a courtly ballad.)~ + balladsong2 
+ ~OR(2) Class(Player1,BARD_ALL) 
      CheckStatGT(Player1,13,CHR)~ + ~(You sing a country tune.)~ + countrysong1 
+ ~!Class(Player1,BARD_ALL) 
      !CheckStatGT(Player1,13,CHR)~ + ~(You sing a country tune.)~ + countrysong2 
+ ~OR(2) Class(Player1,BARD_ALL) 
      CheckStatGT(Player1,13,CHR)~ + ~(You sing a song of daring adventure.)~ + adventuresong1 
+ ~!Class(Player1,BARD_ALL) 
      !CheckStatGT(Player1,13,CHR)~ + ~(You sing a song of daring adventure.)~ + adventuresong2 
+ ~OR(2) Class(Player1,BARD_ALL) 
      CheckStatGT(Player1,13,CHR)~ + ~(You sing a song of hard lessons and innocence lost.)~ + innocentsong1 
+ ~!Class(Player1,BARD_ALL) 
      !CheckStatGT(Player1,13,CHR)~ + ~(You sing a song of hard lessons and innocence lost.)~ + innocentsong2 
+ ~OR(2) Class(Player1,BARD_ALL) 
      CheckStatGT(Player1,13,CHR)~ + ~(You sing a sweet song of happy lovers.)~ + happysong1 
+ ~!Class(Player1,BARD_ALL) 
      !CheckStatGT(Player1,13,CHR)~ + ~(You sing a sweet song of happy lovers.)~ + happysong2 
+ ~OR(2) Class(Player1,BARD_ALL) 
      CheckStatGT(Player1,13,CHR)~ + ~(You sing a riddle song.)~ + riddlesong1 
+ ~!Class(Player1,BARD_ALL) 
      !CheckStatGT(Player1,13,CHR)~ + ~(You sing a riddle song.)~ + riddlesong2 
+ ~OR(2) Class(Player1,BARD_ALL) 
      CheckStatGT(Player1,13,CHR)~ + ~(You sing a child's tune.)~ + childsong1 
+ ~!Class(Player1,BARD_ALL) 
      !CheckStatGT(Player1,13,CHR)~ + ~(You sing a child's tune.)~ + childsong2 
+ ~OR(2) Class(Player1,BARD_ALL) 
      CheckStatGT(Player1,13,CHR)~ + ~(You make up a tune on the spot.)~ + pcsong1 
+ ~!Class(Player1,BARD_ALL) 
      !CheckStatGT(Player1,13,CHR)~ + ~(You make up a tune on the spot.)~ + pcsong2 
END 

IF ~~ tavernsong1 
SAY ~(He grins and looks nostalgic.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ tavernsong2 
SAY ~(He sings along... badly.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ sadsong1 
SAY ~(His eyes tear up, but he doesn't interrupt you.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ sadsong2 
SAY ~(He sighs and shakes his head.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ unrequitedsong1 
SAY ~I think I know that one.~ 
IF ~~ THEN EXIT 
END 

IF ~~ unrequitedsong2 
SAY ~(He pretends not to hear.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ bawdysong1 
SAY ~(He grins sheepishly.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ bawdysong2 
SAY ~(He hums along... then blushes deeply.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ battlesong1 
SAY ~I feel inspired.~ 
IF ~~ THEN EXIT 
END 

IF ~~ battlesong2 
SAY ~Is that one 'Gathering Peasecods?'~ 
IF ~~ THEN EXIT 
END 

IF ~~ balladsong1 
SAY ~(He looks wisful.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ balladsong2 
SAY ~(He smiles... though he looks a bit bored.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ countrysong1 
SAY ~(He grins and hums along.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ countrysong2 
SAY ~(He joins in for the choruses... and forgets half the words.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ adventuresong1 
SAY ~Life imitates art?~ 
IF ~~ THEN EXIT 
END 

IF ~~ adventuresong2 
SAY ~Weren't we in that one?~ 
IF ~~ THEN EXIT 
END 

IF ~~ innocentsong1 
SAY ~I think I know that one... unfortunately.~ 
IF ~~ THEN EXIT 
END 

IF ~~ innocentsong2 
SAY ~(He sighs and shakes his head.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ happysong1 
SAY ~(He's still smiling moments later.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ happysong2 
SAY ~There's always hope.~ 
IF ~~ THEN EXIT 
END 

IF ~~ riddlesong1 
SAY ~Interesting harmonies.~ 
IF ~~ THEN EXIT 
END 

IF ~~ riddlesong2 
SAY ~(He looks a bit baffled.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ childsong1 
SAY ~(He just takes your hand and grins foolishly.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ childsong2 
SAY ~(He sings along.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ pcsong1 
SAY ~That was... outstanding.~ 
IF ~~ THEN EXIT 
END 

IF ~~ pcsong2 
SAY ~Sorry, but I think you lost me.~ 
IF ~~ THEN EXIT 
END 

/* Hugs - light */ 
IF ~~ hug_l1 
SAY ~What did I do to deserve that?~ 
++ ~You're you.~ + hug_l1.1 
++ ~I felt like it.~ + hug_l1.2 
+ ~OR(2) Global("B!GavRA","GLOBAL",1) 
      Global("B!GavRA","GLOBAL",2)~ + ~I wanted to see what you felt like in my arms.~ + hug_l1.3 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I like how you feel in my arms.~ + hug_l1.h 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I like how you feel in my arms.~ + hug_l1.c 
++ ~You looked like you needed a hug.~ + hug_l1.4 
END 

IF ~~ hug_l1.1 
SAY ~Who else would I be?~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_l1.2 
SAY ~Thanks.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_l1.3 
SAY ~And?~ 
++ ~You feel good.~ + hug_l1.3a 
++ ~You need a bath.~ + hug_l1.3b 
++ ~I need more testing to be certain.~ + hug_l1.3c 
++ ~You're too tall.~ + hug_l1.3d 
++ ~It was a flimsy excuse to touch you.~ + hug_l1.3e 
END 

IF ~~ hug_l1.3a 
SAY ~(gulp) You feel good, too.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_l1.3b 
SAY ~Sorry, it's the armor. It gets a bit rank on a hot day.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_l1.3c 
SAY ~I'm not sure I can last through much more 'testing' and maintain my composure.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_l1.3d 
SAY ~There isn't much I can do about that.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_l1.3e 
SAY ~Thanks... I think.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_l1.4 
SAY ~Maybe I did.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_l1.h 
SAY ~That's fortunate, because I like how you feel in mine, as well.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_l1.c 
SAY ~(sigh) You like torturing me too, don't you?~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_l2 
SAY ~(He embraces you awkwardly, as if he is unsure where to put his hands.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_l3 
SAY ~(His breath catches at your proximity, but he soon relaxes and returns your embrace.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_l4 
SAY ~(Your touch startles Gavin, and he staggers a bit before he regains his footing.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_l5 
SAY ~Are you alright? You aren't overtired, are you?~ 
++ ~Maybe a little.~ + hug_l5.1 
++ ~No, it's just that my footing was a little unsteady for a moment.~ + hug_l5.2 
++ ~Not at all. I just wanted to hold you.~ + hug_l5.3 
++ ~I'm exhausted. Will you carry me?~ + hug_l5.6 
END 

IF ~~ hug_l5.1 
SAY ~Lean on me for support then... or maybe you should just call a halt?~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_l5.2 
SAY ~Heh. I know how that goes.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_l5.3 
SAY ~You did?~ 
++ ~You feel good.~ + hug_l5.7 
++ ~Is that so hard to believe?~ + hug_l5.4 
++ ~It's a good excuse to touch you.~ + hug_l5.5 
END 

IF ~~ hug_l5.4 
SAY ~Yes, actually.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_l5.5 
SAY ~You wanted to... touch me? I think I need to stand by myself for a while. At least until I stop blushing.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_l5.6 
SAY ~I could, but wouldn't it just make more sense to call a halt?~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_l5.7 
SAY ~(gulp) You feel good, too.~ 
IF ~~ THEN + pid2 
END 

/* Hugs - medium */ 
IF ~~ hug_m2 
SAY ~(He puts his arms around you, but he seems a bit distracted.)~ 
+ ~RandomNum(4,1)~ + ~(You take the opportunity to fondle his buttocks.)~ + hug_m2.1 
+ ~RandomNum(4,2)~ + ~(You take the opportunity to fondle his buttocks.)~ + hug_m2.2 
+ ~RandomNum(4,3)~ + ~(You take the opportunity to fondle his buttocks.)~ + hug_m2.3 
+ ~RandomNum(4,4)~ + ~(You take the opportunity to fondle his buttocks.)~ + hug_m2.4 
+ ~RandomNum(3,1)~ + ~(You nuzzle him.)~ + hug_m2.5 
+ ~RandomNum(3,2)~ + ~(You nuzzle him.)~ + hug_m2.6 
+ ~RandomNum(3,3)~ + ~(You nuzzle him.)~ + hug_m2.7 
+ ~RandomNum(2,1)~ + ~(You pinch him.)~ + hug_m2.8 
+ ~RandomNum(2,2)~ + ~(You pinch him.)~ + hug_m2.9 
++ ~(You shake your head and let him go.)~ + hug_m2.10 
END 

IF ~~ hug_m2.1 
SAY ~Hey, now! You're a bit saucy, aren't you?~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_m2.2 
SAY ~Whoa! You caught me off guard with that one.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_m2.3 
SAY ~(He looks at you steadily, then he slowly, very deliberately moves his hand down to your backside.) That game is meant for two.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_m2.4 
SAY ~Yes, <CHARNAME>, they're still there.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_m2.5 
SAY ~(He kisses the top of your head.)~ 
IF ~~ THEN + pid2
END 

IF ~~ hug_m2.6 
SAY ~(He tightens his embrace and sighs.)~ 
IF ~~ THEN + pid2
END 

IF ~~ hug_m2.7 
SAY ~(He raises your lips to his and kisses you softly.)~ 
IF ~~ THEN + pid2
END 

IF ~~ hug_m2.8 
SAY ~Ow! Sorry, I was trying to recall whether I remembered to wash out my socks.~ 
IF ~~ THEN + pid2
END 

IF ~~ hug_m2.9 
SAY ~What was that for?~ 
++ ~You need to pay more attention.~ + hug_m2.9a  
++ ~Mere whim.~ + hug_m2.9b 
++ ~When was the last time you kissed me?~ + hug_m2.9c 
END 

IF ~~ hug_m2.9a 
SAY ~Maybe I do.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_m2.9b 
SAY ~Oh? Well, so's this. (He pinches you back.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_m2.9c 
SAY ~Not too long... er... that's the wrong answer, isn't it?~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_m2.10 
SAY ~Sorry, I'm feeling a bit off today.~ 
IF ~~ THEN + pid2
END 

IF ~~ hug_m3 
SAY ~(He sweeps your hair away from your face and kisses your cheek.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_m4 
SAY ~Mmm. Feels good.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_m5 
SAY ~(He embraces you warmly.)~ 
IF ~~ THEN + pid2 
END 

/* Hugs - heavy */ 
IF ~~ hug_h2 
SAY ~Was there something you wanted?~ 
++ ~Just a hug.~ + hug_h2.1 
++ ~A kiss would be nice.~ + hug_h2.2 
++ ~You.~ + hug_h2.3 
END 

IF ~~ hug_h2.1 
SAY ~(He embraces you warmly.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_h2.2 
SAY ~(He kisses you briefly, then buries his face in your hair, breathing your fragrance.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_h2.3 
SAY ~You'll have to wait until later, I'm afraid.~ 
++ ~I'll be ready.~ + hug_h2.3a 
++ ~I didn't mean now!~ + hug_h2.3a 
++ ~We'll see. I might change my mind.~ + hug_h2.3b 
++ ~Never mind.~ + pid2 
END 

IF ~~ hug_h2.3a 
SAY ~Tonight, then.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_h2.3b 
SAY ~If so, you can send me away.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_h3 
SAY ~(He holds you close and kisses your lips.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_h4 
SAY ~There goes my concentration for a while.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hug_h5 
SAY ~I love the way you feel in my arms.~ 
IF ~~ THEN + pid2 
END 

/* Hugs - complicated */ 
IF ~~ hug_c5 
SAY ~(sigh) This shouldn't feel so good.~ 
IF ~~ THEN + pid2 
END 

/* Kiss cheek */ 

IF ~~ kiss_cheek_l1 
SAY ~(He blushes, but looks very pleased.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ kiss_cheek_l2 
SAY ~Thrgk... Ahem. Thank you.~ 
IF ~~ THEN + pid2 
END 

IF ~~ kiss_cheek_l3 
SAY ~(As you lean closer, he turns his head, poking you with his nose.)~ 
= ~Sorry about that.~ 
IF ~~ THEN + pid2 
END 

IF ~~ kiss_cheek_l4 
SAY ~(He raises his hand to scratch his ear at precisely the wrong time and winds up striking the underside of your chin.)~ 
= ~Oh! I am so sorry!~ 
IF ~~ THEN + pid2 
END 

IF ~~ kiss_cheek_l5 
SAY ~(He turns his head and you wind up kissing him squarely on the lips. He blinks in surprise for a moment or two, then grins sheepishly.)~ 
= ~I don't know if that's what you intended, but I certainly enjoyed it.~ 
IF ~~ THEN + pid2 
END 

IF ~~ kiss_cheek_l6 
SAY ~(He puts his hand to his cheek, looking bemused, but happy.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ kiss_cheek_m1 
SAY ~Thank you!~ 
IF ~~ THEN + pid2 
END 

IF ~~ kiss_cheek_m2 
SAY ~(He kisses your cheek in return.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ kiss_cheek_m3 
SAY ~(He moves his head and you wind up kissing his hair.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ kiss_cheek_m4 
SAY ~(He takes your hand and kisses it.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ kiss_cheek_h1 
SAY ~(As you start to withdraw, he stops you, and brings your lips to his for a real kiss.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ kiss_cheek_h2 
SAY ~(He holds his hand to his cheek and sighs happily.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ kiss_cheek_h3 
SAY ~I think I need another one of those. The other side feels jealous.~ 
IF ~~ THEN + pid2 
END 

IF ~~ kiss_cheek_h4 
SAY ~(He smooths your hair away from your face and strokes your cheek.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ kiss_cheek_c1 
SAY ~You've done something naughty and you don't want me to get angry, haven't you?~ 
IF ~~ THEN + pid2 
END 

IF ~~ kiss_cheek_c2 
SAY ~Hmm. That was rather nice.~ 
IF ~~ THEN + pid2 
END 

IF ~~ kiss_cheek_c3 
SAY ~Thank you.~ 
IF ~~ THEN + pid2 
END 

IF ~~ kiss_cheek_c4 
SAY ~You want something, don't you?~ 
IF ~~ THEN + pid2 
END 

/* Kiss lips */ 

IF ~~ kisslips1a 
SAY ~That was unexpected! Pleasant, but quite a surprise!~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips1b 
SAY ~(He hesitates for a moment, but returns your kiss eagerly.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips1c 
SAY ~(When your lips part, he takes your face in his hands and kisses your forehead.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips1d 
SAY ~(As you start to draw away, his arms tighten around you. He brings your lips to his and kisses you softly.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips1e 
SAY ~(Your display of affection seems to have upset his equilibrium somehow, because when he stops kissing you and begins walking again, he lurches and staggers a bit before catching himself.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips1f 
SAY ~(At the first touch of your lips, you feel Gavin falter, as if his knees buckled for a moment. When you part, his face is very, very red.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips1g 
SAY ~(Your gesture surprises him and he jumps backward, catching his heel. His arms flail for a moment, but he still winds up on his backside.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips1h 
SAY ~Oh! Sorry, <CHARNAME>, I wasn't ready. Can we do that again?~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips2a 
SAY ~I'll give you fifty or sixty years to stop doing that.~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips2b 
SAY ~(He puts his arms around you and holds you close.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips2c 
SAY ~(He returns your kiss enthusiastically.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips2d 
SAY ~(Perhaps you intended nothing more than a quick peck, but Gavin has other ideas. When you start to pull away from him, his arms close more tightly around you, and he kisses you passionately.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips2e 
SAY ~I love it when you do that.~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips2f 
SAY ~Now I'll be walking around with a silly grin on my face for the rest of the day!~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips2g 
SAY ~Mmmm. We're going to have to do some more of this later...~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips2h 
SAY ~(When your lips part at last, he lays your head against his shoulder and rests his cheek against your hair. He holds you quietly for several moments, then lets you go with kiss to your forehead.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips4a 
SAY ~Aren't you worried about making someone jealous?~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips4b 
SAY ~(He returns your kiss, but he seems a bit distracted.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips4c 
SAY ~(He becomes strangely passive while you kiss him, obviously enjoying the attention, but not really returning your embrace.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips4d 
SAY ~(When you start to pull away from him, he stops you, and kisses you a second time, even more passionately than before.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips4e 
SAY ~Mmmm. That feels good...~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips4f 
SAY ~Let's save some of those for later, maybe...~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips4g 
SAY ~There are times I wish it was possible to start over.~ 
IF ~~ THEN + pid2 
END 

IF ~~ kisslips4h 
SAY ~I never used to understand how something could hurt but still feel good.~ 
IF ~~ THEN + pid2 
END 

/* Hold hands */ 

IF ~~ holdhand1a 
SAY ~(He looks startled, but pleased.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ holdhand1b 
SAY ~(He turns and smiles at you, squeezing your fingers gently.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ holdhand1c 
SAY ~(He looks puzzled, but he doesn't drop your hand.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ holdhand1d 
SAY ~(He drops your hand for a moment, hastily rubs his palm against his thigh, then sheepishly takes your hand again.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ holdhand2a 
SAY ~(He brings your fingertips to his lips to kiss them, then walks hand in hand with you, smiling widely.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ holdhand2b 
SAY ~(His fingers close protectively around yours.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ holdhand2c 
SAY ~(He holds your hand lightly in his, idly swinging it as you walk.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ holdhand2d 
SAY ~(He sighs happily and presses your fingers lightly.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ holdhand4a 
SAY ~(He sighs, but he doesn't let go of your hand.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ holdhand4b 
SAY ~(He absentmindedly brings your hand to his mouth and kisses it.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ holdhand4c 
SAY ~(He shakes his head, but he lets you hold his hand as long as you like.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ holdhand4d 
SAY ~(He squeezes your fingers briefly, then releases them.)~ 
IF ~~ THEN + pid2 
END 

/* Poses */ 

IF ~~ pose 
SAY ~(You...)~ 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(4,1)~ + ~(You adjust your clothing and lean toward Gavin, treating him to a clear view of your cleavage.)~ + cleavage_l1 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(4,2)~ + ~(You adjust your clothing and lean toward Gavin, treating him to a clear view of your cleavage.)~ + cleavage_l2 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(4,3)~ + ~(You adjust your clothing and lean toward Gavin, treating him to a clear view of your cleavage.)~ + cleavage_l3 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(4,4)~ + ~(You adjust your clothing and lean toward Gavin, treating him to a clear view of your cleavage.)~ + cleavage_l4 
+ ~Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(2,1)~ + ~(You adjust your clothing and lean toward Gavin, treating him to a clear view of your cleavage.)~ + cleavage_m1 
+ ~Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(2,2)~ + ~(You adjust your clothing and lean toward Gavin, treating him to a clear view of your cleavage.)~ + cleavage_m2 
+ ~Global("B!GavRA","GLOBAL",2) 
      RandomNum(3,1)~ + ~(You adjust your clothing and lean toward Gavin, treating him to a clear view of your cleavage.)~ + cleavage_h1 
+ ~Global("B!GavRA","GLOBAL",2) 
      RandomNum(3,2)~ + ~(You adjust your clothing and lean toward Gavin, treating him to a clear view of your cleavage.)~ + cleavage_h2 
+ ~Global("B!GavRA","GLOBAL",2) 
      RandomNum(3,3)~ + ~(You adjust your clothing and lean toward Gavin, treating him to a clear view of your cleavage.)~ + cleavage_h3 
+ ~Global("B!GavRA","GLOBAL",4) 
      RandomNum(3,1)~ + ~(You adjust your clothing and lean toward Gavin, treating him to a clear view of your cleavage.)~ + cleavage_c1 
+ ~Global("B!GavRA","GLOBAL",4) 
      RandomNum(3,2)~ + ~(You adjust your clothing and lean toward Gavin, treating him to a clear view of your cleavage.)~ + cleavage_c2 
+ ~Global("B!GavRA","GLOBAL",4) 
      RandomNum(3,3)~ + ~(You adjust your clothing and lean toward Gavin, treating him to a clear view of your cleavage.)~ + cleavage_c3 
+ ~RandomNum(3,1)~ + ~(You turn away from Gavin slightly and bring one knee forward, letting Gavin see your legs from their best angle.)~ + legs_1 
+ ~RandomNum(3,2)~ + ~(You turn away from Gavin slightly and bring one knee forward, letting Gavin see your legs from their best angle.)~ + legs_2 
+ ~RandomNum(3,3)~ + ~(You turn away from Gavin slightly and bring one knee forward, letting Gavin see your legs from their best angle.)~ + legs_3 
+ ~RandomNum(3,1)~ + ~(You pretend to bend over to pick something up off the ground, allowing Gavin to admire your bottom.)~ + butt_1 
+ ~RandomNum(3,2)~ + ~(You pretend to bend over to pick something up off the ground, allowing Gavin to admire your bottom.)~ + butt_2 
+ ~RandomNum(3,3)~ + ~(You pretend to bend over to pick something up off the ground, allowing Gavin to admire your bottom.)~ + butt_3 
+ ~RandomNum(3,1)~ + ~(You brush your hair up off your face, exposing the lines of your neck and jaw.)~ + neck_1 
+ ~RandomNum(3,2)~ + ~(You brush your hair up off your face, exposing the lines of your neck and jaw.)~ + neck_2 
+ ~RandomNum(3,3)~ + ~(You brush your hair up off your face, exposing the lines of your neck and jaw.)~ + neck_3 
++ ~(You decide against it.)~ + pid2 
END 

IF ~~ cleavage_l1 
SAY ~(gulp) Excuse me, did you say something?~ 
IF ~~ THEN + pid2 
END 

IF ~~ cleavage_l2 
SAY ~(His eyes open wide and his Adam's apple bobs in his throat. He turns away, blushing furiously.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ cleavage_l3 
SAY ~(His breath catches and he stares for a moment. He raises his gaze to your face, his cheeks flaming. His lips move as if he were trying to say something, but he quickly gives up and turns away.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ cleavage_l4 
SAY ~Oh! I beg your pardon! I... er... didn't mean to stare...~ 
IF ~~ THEN + pid2 
END 

IF ~~ cleavage_m1 
SAY ~Are you tempting me?~ 
+ ~RandomNum(3,1)~ + ~That depends. Are you temptable?~ + cleavage_m1.1 
+ ~RandomNum(3,2)~ + ~That depends. Are you temptable?~ + cleavage_m1.2 
+ ~RandomNum(3,3)~ + ~That depends. Are you temptable?~ + cleavage_m1.3 
+ ~RandomNum(3,1)~ + ~Most definitely.~ + cleavage_m1.4 
+ ~RandomNum(3,2)~ + ~Most definitely.~ + cleavage_m1.5 
+ ~RandomNum(3,3)~ + ~Most definitely.~ + cleavage_m1.6 
+ ~RandomNum(3,1)~ + ~Who, me?~ + cleavage_m1.7 
+ ~RandomNum(3,2)~ + ~Who, me?~ + cleavage_m1.8 
+ ~RandomNum(3,3)~ + ~Who, me?~ + cleavage_m1.9 
END 

IF ~~ cleavage_m1.1 
SAY ~I seem to have my libido under control, at the moment.~ 
IF ~~ THEN + pid2 
END 

IF ~~ cleavage_m1.2 
SAY ~More than I'd like to admit.~ 
IF ~~ THEN + pid2 
END 

IF ~~ cleavage_m1.3 
SAY ~Only to a point.~ 
IF ~~ THEN + pid2 
END 

IF ~~ cleavage_m1.4 
SAY ~(He reaches out and cautiously widens the gap in your clothing slightly.) Your move.~ 
IF ~~ THEN + pid2 
END 

IF ~~ cleavage_m1.5 
SAY ~You're a cruel woman, making me want something I can't have.~ 
IF ~~ THEN + pid2 
END 

IF ~~ cleavage_m1.6 
SAY ~Then you'd better loosen your chemise a little more. I can barely see the cleft between your breasts.~ 
IF ~~ THEN + pid2 
END 

IF ~~ cleavage_m1.7  
SAY ~I wrong you, <CHARNAME>. Clearly, you are too innocent to lead a man on like that.~ 
IF ~~ THEN + pid2 
END 

IF ~~ cleavage_m1.8 
SAY ~No, you would never do anything like that.~ 
IF ~~ THEN + pid2 
END 

IF ~~ cleavage_m1.9 
SAY ~I think I'd better go stand somewhere else.~ 
IF ~~ THEN + pid2 
END 

IF ~~ cleavage_m2 
SAY ~(He begins to crane his neck for a better view, but catches himself. He turns away, muttering what sounds like vitriolic self-reproach.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ cleavage_h1 
SAY ~Well, that certainly got my attention.~ 
IF ~~ THEN + pid2 
END 

IF ~~ cleavage_h2 
SAY ~It seems to be getting rather warm here.~ 
IF ~~ THEN + pid2 
END 

IF ~~ cleavage_h3 
SAY ~Careful, love. You never know what might happen if you put that kind of temptation in front of me.~ 
IF ~~ THEN + pid2 
END 

IF ~~ cleavage_c1 
SAY ~If you're offering me pillows, I'll take two.~ 
IF ~~ THEN + pid2 
END 

IF ~~ cleavage_c2 
SAY ~I'd like another look at that later, if you're up for it.~ 
IF ~~ THEN + pid2 
END 

IF ~~ cleavage_c3 
SAY ~Very nice.~ 
IF ~~ THEN + pid2 
END 

IF ~~ legs_1 
SAY ~(You succeed in attracting his attention, but the distraction proves too great. He staggers when his heel catches on the ground, though he manages to remain standing.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ legs_2 
SAY ~(You catch him glancing surreptitiously at your legs.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ legs_3 
SAY ~One of these days, you're going to have to let me sketch you. Your proportions are really quite inspiring.~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_1 
SAY ~Can I get that for you? Oh, wait... there's nothing there. How... odd.~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_2 
SAY ~(You glance over your shoulder just in time to see Gavin's face set in a look of silent admiration.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_3 
SAY ~(You turn at the sound of a muffled crash and see Gavin sprawled on the ground, one ankle hooked around the opposite heel.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ neck_1 
SAY ~(His gaze lingers on your profile, taking in the graceful line of your jaw and throat.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ neck_2 
SAY ~Wars have been fought for the sake of a neck like that.~ 
IF ~~ THEN + pid2 
END 

IF ~~ neck_3 
SAY ~(He reaches out and runs one reverent fingertip along your jaw before sighing and looking away.)~ 
IF ~~ THEN + pid2 
END 

/* Take his arm */ 

IF ~~ arm_l1 
SAY ~(He blushes, but he smiles faintly.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_l2 
SAY ~(He looks flustered for a few moments, but he timidly covers your hand with his free one and squeezes it lightly, a shy smile on his lips.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_l3 
SAY ~(He stands up a little straighter, and his chest swells with new-found confidence.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_l4 
SAY ~(The distraction causes him to lose his balance and he staggers. He recovers almost instantly, but his face is flaming.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_l5 
SAY ~Are you alright?~ 
++ ~I like walking arm in arm with someone.~ + arm_l5a 
++ ~I'm fine, but you could put your arm around me, if you wanted.~ + arm_l5b 
++ ~I'm a little tired.~ + arm_l5c 
++ ~You don't mind, do you?~ + arm_l5d 
++ ~The ground is a little uneven through here.~ + arm_l5e 
END 

IF ~~ arm_l5a 
SAY ~Oh... I like it, too.~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_l5b 
SAY ~I would like that, but I would not want you to think me forward.~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_l5c 
SAY ~Lean on my arm, then... or maybe you would be better off calling a halt? We can't have you exhausting yourself.~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_l5d 
SAY ~No, not at all!~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_l5e 
SAY ~If you're counting on me to steady you, I'm afraid that you might be in for a bit of a let-down. I tend to trip a lot.~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_m1 
SAY ~(He covers your hand with his and grins.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_m2 
SAY ~(He lurches sideways, as if your touch startled him.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_m3 
SAY ~(His chest swells with pride and he beams at you, obviously delighted by your gesture.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_m4 
SAY ~Careful, <CHARNAME>. I could get used to this.~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_h1 
SAY ~I still can't believe how lucky I am to have you.~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_h2 
SAY ~(He grins broadly, covering your hand with his.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_h3 
SAY ~(He leans in and kisses you softly on the cheek.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_h4 
SAY ~I don't know if I'll ever understand why you chose me, but I'll always be glad you did.~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_c1 
SAY ~(He shakes his head and sighs, but he does not remove your hand.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_c2 
SAY ~(He looks down at the hand you have placed on his arm and smiles sadly.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_c3 
SAY ~(He pats your hand and smiles.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_c4 
SAY ~Did you want something?~ 
++ ~I just felt like touching you.~ + arm_c4a 
++ ~You need to wake up. You were looking a little distracted.~ + arm_c4b 
++ ~I want some attention.~ + arm_c4c 
++ ~No, I just felt like being close to you.~ + arm_c4d 
END 

IF ~~ arm_c4a 
SAY ~Touch away!~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_c4b 
SAY ~Maybe I am.~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_c4c 
SAY ~(He stops, turns you to face him, and embraces you closely.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ arm_c4d 
SAY ~(He leans toward you and kisses you on the cheek.)~ 
IF ~~ THEN + pid2 
END 

/* Touch */ 
IF ~~ touch 
SAY ~(You...)~ 

/* Dungeon - spider */ 
+ ~RandomNum(4,1) AreaType(DUNGEON)~ + ~(You creep up behind Gavin and stroke the back of his neck ever so lightly, as if a spider were walking across his skin.)~ + spidertouch1 
+ ~RandomNum(4,2) AreaType(DUNGEON)~ + ~(You creep up behind Gavin and stroke the back of his neck ever so lightly, as if a spider were walking across his skin.)~ + spidertouch2 
+ ~RandomNum(4,3) AreaType(DUNGEON)~ + ~(You creep up behind Gavin and stroke the back of his neck ever so lightly, as if a spider were walking across his skin.)~ + spidertouch3 
+ ~RandomNum(4,3) AreaType(DUNGEON)~ + ~(You creep up behind Gavin and stroke the back of his neck ever so lightly, as if a spider were walking across his skin.)~ + spidertouch4 

/* Touch Hand */ 
+ ~RandomNum(2,1)~ + ~(You stroke his hand.)~ + hand_1 
+ ~RandomNum(2,2)~ + ~(You stroke his hand.)~ + hand_2 

/* Touch his face */ 
+ ~RandomNum(5,1) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You touch Gavin's face.)~ + face_l1 
+ ~RandomNum(5,2) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You touch Gavin's face.)~ + face_l2 
+ ~RandomNum(5,3) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You touch Gavin's face.)~ + face_l3 
+ ~RandomNum(5,4) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You touch Gavin's face.)~ + face_l4 
+ ~RandomNum(5,5) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You touch Gavin's face.)~ + face_l5 
+ ~RandomNum(4,1) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You touch Gavin's face.)~ + face_m1 
+ ~RandomNum(4,2) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You touch Gavin's face.)~ + face_m2 
+ ~RandomNum(4,3) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You touch Gavin's face.)~ + face_m3 
+ ~RandomNum(4,4) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You touch Gavin's face.)~ + face_m4 
+ ~RandomNum(4,1) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You touch Gavin's face.)~ + face_h1 
+ ~RandomNum(4,2) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You touch Gavin's face.)~ + face_h2 
+ ~RandomNum(4,3) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You touch Gavin's face.)~ + face_h3 
+ ~RandomNum(4,4) 
      Global("B!GavRA","GLOBAL",2)~ + ~(You touch Gavin's face.)~ + face_h4 
+ ~RandomNum(4,1) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You touch Gavin's face.)~ + face_c1 
+ ~RandomNum(4,2) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You touch Gavin's face.)~ + face_c2 
+ ~RandomNum(4,3) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You touch Gavin's face.)~ + face_c3 
+ ~RandomNum(4,4) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You touch Gavin's face.)~ + face_c4 

/* Touch chest */ 
+ ~RandomNum(4,1) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You ease his collar away from his neck and run your finger seductively along his upper chest.)~ + chest_l1 
+ ~RandomNum(4,2) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You ease his collar away from his neck and run your finger seductively along his upper chest.)~ + chest_l2 
+ ~RandomNum(4,3) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You ease his collar away from his neck and run your finger seductively along his upper chest.)~ + chest_l3 
+ ~RandomNum(4,4) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You ease his collar away from his neck and run your finger seductively along his upper chest.)~ + chest_l4 
+ ~RandomNum(4,1) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You ease his collar away from his neck and run your finger seductively along his upper chest.)~ + chest_m1 
+ ~RandomNum(4,2) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You ease his collar away from his neck and run your finger seductively along his upper chest.)~ + chest_m2 
+ ~RandomNum(4,3) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You ease his collar away from his neck and run your finger seductively along his upper chest.)~ + chest_m3 
+ ~RandomNum(4,4) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You ease his collar away from his neck and run your finger seductively along his upper chest.)~ + chest_m4 
+ ~RandomNum(4,1) 
      OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4)~ + ~(You ease his collar away from his neck and run your finger seductively along his upper chest.)~ + chest_h1 
+ ~RandomNum(4,2) 
      OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4)~ + ~(You ease his collar away from his neck and run your finger seductively along his upper chest.)~ + chest_h2 
+ ~RandomNum(4,3) 
      OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4)~ + ~(You ease his collar away from his neck and run your finger seductively along his upper chest.)~ + chest_h3 
+ ~RandomNum(4,4) 
      OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4)~ + ~(You ease his collar away from his neck and run your finger seductively along his upper chest.)~ + chest_h4 

/* Touch backside */ 
+ ~RandomNum(4,1) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12) 
      !HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + butt_l1 
+ ~RandomNum(4,1) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12) 
      OR(20) HasItemEquiped("chan01","B!Gavin2") 
          HasItemEquiped("chan02","B!Gavin2") 
          HasItemEquiped("chan03","B!Gavin2") 
          HasItemEquiped("chan04","B!Gavin2") 
          HasItemEquiped("chan05","B!Gavin2") 
          HasItemEquiped("chan06","B!Gavin2") 
          HasItemEquiped("chan07","B!Gavin2") 
          HasItemEquiped("chan08","B!Gavin2") 
          HasItemEquiped("chan09","B!Gavin2") 
          HasItemEquiped("chan10","B!Gavin2") 
          HasItemEquiped("chan11","B!Gavin2") 
          HasItemEquiped("chan12","B!Gavin2") 
          HasItemEquiped("chan13","B!Gavin2") 
          HasItemEquiped("chan14","B!Gavin2") 
          HasItemEquiped("chan15","B!Gavin2") 
          HasItemEquiped("chan16","B!Gavin2") 
          HasItemEquiped("chan17","B!Gavin2") 
          HasItemEquiped("chan18","B!Gavin2") 
          HasItemEquiped("dwchan01","B!Gavin2") 
          HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + chain_butt_l1 
+ ~RandomNum(4,2) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12) 
      !HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + butt_l2 
+ ~RandomNum(4,2) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12) 
      OR(20) HasItemEquiped("chan01","B!Gavin2") 
          HasItemEquiped("chan02","B!Gavin2") 
          HasItemEquiped("chan03","B!Gavin2") 
          HasItemEquiped("chan04","B!Gavin2") 
          HasItemEquiped("chan05","B!Gavin2") 
          HasItemEquiped("chan06","B!Gavin2") 
          HasItemEquiped("chan07","B!Gavin2") 
          HasItemEquiped("chan08","B!Gavin2") 
          HasItemEquiped("chan09","B!Gavin2") 
          HasItemEquiped("chan10","B!Gavin2") 
          HasItemEquiped("chan11","B!Gavin2") 
          HasItemEquiped("chan12","B!Gavin2") 
          HasItemEquiped("chan13","B!Gavin2") 
          HasItemEquiped("chan14","B!Gavin2") 
          HasItemEquiped("chan15","B!Gavin2") 
          HasItemEquiped("chan16","B!Gavin2") 
          HasItemEquiped("chan17","B!Gavin2") 
          HasItemEquiped("chan18","B!Gavin2") 
          HasItemEquiped("dwchan01","B!Gavin2") 
          HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + chain_butt_l2 
+ ~RandomNum(4,3) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12) 
      !HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + butt_l3 
+ ~RandomNum(4,3) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12) 
      OR(20) HasItemEquiped("chan01","B!Gavin2") 
          HasItemEquiped("chan02","B!Gavin2") 
          HasItemEquiped("chan03","B!Gavin2") 
          HasItemEquiped("chan04","B!Gavin2") 
          HasItemEquiped("chan05","B!Gavin2") 
          HasItemEquiped("chan06","B!Gavin2") 
          HasItemEquiped("chan07","B!Gavin2") 
          HasItemEquiped("chan08","B!Gavin2") 
          HasItemEquiped("chan09","B!Gavin2") 
          HasItemEquiped("chan10","B!Gavin2") 
          HasItemEquiped("chan11","B!Gavin2") 
          HasItemEquiped("chan12","B!Gavin2") 
          HasItemEquiped("chan13","B!Gavin2") 
          HasItemEquiped("chan14","B!Gavin2") 
          HasItemEquiped("chan15","B!Gavin2") 
          HasItemEquiped("chan16","B!Gavin2") 
          HasItemEquiped("chan17","B!Gavin2") 
          HasItemEquiped("chan18","B!Gavin2") 
          HasItemEquiped("dwchan01","B!Gavin2") 
          HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + chain_butt_l3 
+ ~RandomNum(4,4) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12) 
      !HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + butt_l4 
+ ~RandomNum(4,4) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12) 
      OR(20) HasItemEquiped("chan01","B!Gavin2") 
          HasItemEquiped("chan02","B!Gavin2") 
          HasItemEquiped("chan03","B!Gavin2") 
          HasItemEquiped("chan04","B!Gavin2") 
          HasItemEquiped("chan05","B!Gavin2") 
          HasItemEquiped("chan06","B!Gavin2") 
          HasItemEquiped("chan07","B!Gavin2") 
          HasItemEquiped("chan08","B!Gavin2") 
          HasItemEquiped("chan09","B!Gavin2") 
          HasItemEquiped("chan10","B!Gavin2") 
          HasItemEquiped("chan11","B!Gavin2") 
          HasItemEquiped("chan12","B!Gavin2") 
          HasItemEquiped("chan13","B!Gavin2") 
          HasItemEquiped("chan14","B!Gavin2") 
          HasItemEquiped("chan15","B!Gavin2") 
          HasItemEquiped("chan16","B!Gavin2") 
          HasItemEquiped("chan17","B!Gavin2") 
          HasItemEquiped("chan18","B!Gavin2") 
          HasItemEquiped("dwchan01","B!Gavin2") 
          HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + chain_butt_l4 
+ ~RandomNum(4,1) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12) 
      !HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + butt_m1 
+ ~RandomNum(4,1) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12) 
      OR(20) HasItemEquiped("chan01","B!Gavin2") 
          HasItemEquiped("chan02","B!Gavin2") 
          HasItemEquiped("chan03","B!Gavin2") 
          HasItemEquiped("chan04","B!Gavin2") 
          HasItemEquiped("chan05","B!Gavin2") 
          HasItemEquiped("chan06","B!Gavin2") 
          HasItemEquiped("chan07","B!Gavin2") 
          HasItemEquiped("chan08","B!Gavin2") 
          HasItemEquiped("chan09","B!Gavin2") 
          HasItemEquiped("chan10","B!Gavin2") 
          HasItemEquiped("chan11","B!Gavin2") 
          HasItemEquiped("chan12","B!Gavin2") 
          HasItemEquiped("chan13","B!Gavin2") 
          HasItemEquiped("chan14","B!Gavin2") 
          HasItemEquiped("chan15","B!Gavin2") 
          HasItemEquiped("chan16","B!Gavin2") 
          HasItemEquiped("chan17","B!Gavin2") 
          HasItemEquiped("chan18","B!Gavin2") 
          HasItemEquiped("dwchan01","B!Gavin2") 
          HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + chain_butt_m1 
+ ~RandomNum(4,2) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12) 
      !HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + butt_m2 
+ ~RandomNum(4,2 ) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12) 
      OR(20) HasItemEquiped("chan01","B!Gavin2") 
          HasItemEquiped("chan02","B!Gavin2") 
          HasItemEquiped("chan03","B!Gavin2") 
          HasItemEquiped("chan04","B!Gavin2") 
          HasItemEquiped("chan05","B!Gavin2") 
          HasItemEquiped("chan06","B!Gavin2") 
          HasItemEquiped("chan07","B!Gavin2") 
          HasItemEquiped("chan08","B!Gavin2") 
          HasItemEquiped("chan09","B!Gavin2") 
          HasItemEquiped("chan10","B!Gavin2") 
          HasItemEquiped("chan11","B!Gavin2") 
          HasItemEquiped("chan12","B!Gavin2") 
          HasItemEquiped("chan13","B!Gavin2") 
          HasItemEquiped("chan14","B!Gavin2") 
          HasItemEquiped("chan15","B!Gavin2") 
          HasItemEquiped("chan16","B!Gavin2") 
          HasItemEquiped("chan17","B!Gavin2") 
          HasItemEquiped("chan18","B!Gavin2") 
          HasItemEquiped("dwchan01","B!Gavin2") 
          HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + chain_butt_m2 
+ ~RandomNum(4,3) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12) 
      !HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + butt_m3 
+ ~RandomNum(4,3) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12) 
      OR(20) HasItemEquiped("chan01","B!Gavin2") 
          HasItemEquiped("chan02","B!Gavin2") 
          HasItemEquiped("chan03","B!Gavin2") 
          HasItemEquiped("chan04","B!Gavin2") 
          HasItemEquiped("chan05","B!Gavin2") 
          HasItemEquiped("chan06","B!Gavin2") 
          HasItemEquiped("chan07","B!Gavin2") 
          HasItemEquiped("chan08","B!Gavin2") 
          HasItemEquiped("chan09","B!Gavin2") 
          HasItemEquiped("chan10","B!Gavin2") 
          HasItemEquiped("chan11","B!Gavin2") 
          HasItemEquiped("chan12","B!Gavin2") 
          HasItemEquiped("chan13","B!Gavin2") 
          HasItemEquiped("chan14","B!Gavin2") 
          HasItemEquiped("chan15","B!Gavin2") 
          HasItemEquiped("chan16","B!Gavin2") 
          HasItemEquiped("chan17","B!Gavin2") 
          HasItemEquiped("chan18","B!Gavin2") 
          HasItemEquiped("dwchan01","B!Gavin2") 
          HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + chain_butt_m3 
+ ~RandomNum(4,4) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12) 
      !HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + butt_m4 
+ ~RandomNum(4,4) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12) 
      OR(20) HasItemEquiped("chan01","B!Gavin2") 
          HasItemEquiped("chan02","B!Gavin2") 
          HasItemEquiped("chan03","B!Gavin2") 
          HasItemEquiped("chan04","B!Gavin2") 
          HasItemEquiped("chan05","B!Gavin2") 
          HasItemEquiped("chan06","B!Gavin2") 
          HasItemEquiped("chan07","B!Gavin2") 
          HasItemEquiped("chan08","B!Gavin2") 
          HasItemEquiped("chan09","B!Gavin2") 
          HasItemEquiped("chan10","B!Gavin2") 
          HasItemEquiped("chan11","B!Gavin2") 
          HasItemEquiped("chan12","B!Gavin2") 
          HasItemEquiped("chan13","B!Gavin2") 
          HasItemEquiped("chan14","B!Gavin2") 
          HasItemEquiped("chan15","B!Gavin2") 
          HasItemEquiped("chan16","B!Gavin2") 
          HasItemEquiped("chan17","B!Gavin2") 
          HasItemEquiped("chan18","B!Gavin2") 
          HasItemEquiped("dwchan01","B!Gavin2") 
          HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + chain_butt_m4 
+ ~RandomNum(4,1) 
      OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4) 
      !HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + butt_h1 
+ ~RandomNum(4,1) 
      OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4) 
      OR(20) HasItemEquiped("chan01","B!Gavin2") 
          HasItemEquiped("chan02","B!Gavin2") 
          HasItemEquiped("chan03","B!Gavin2") 
          HasItemEquiped("chan04","B!Gavin2") 
          HasItemEquiped("chan05","B!Gavin2") 
          HasItemEquiped("chan06","B!Gavin2") 
          HasItemEquiped("chan07","B!Gavin2") 
          HasItemEquiped("chan08","B!Gavin2") 
          HasItemEquiped("chan09","B!Gavin2") 
          HasItemEquiped("chan10","B!Gavin2") 
          HasItemEquiped("chan11","B!Gavin2") 
          HasItemEquiped("chan12","B!Gavin2") 
          HasItemEquiped("chan13","B!Gavin2") 
          HasItemEquiped("chan14","B!Gavin2") 
          HasItemEquiped("chan15","B!Gavin2") 
          HasItemEquiped("chan16","B!Gavin2") 
          HasItemEquiped("chan17","B!Gavin2") 
          HasItemEquiped("chan18","B!Gavin2") 
          HasItemEquiped("dwchan01","B!Gavin2") 
          HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + chain_butt_h1 
+ ~RandomNum(4,2) 
      OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4) 
      !HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + butt_h2 
+ ~RandomNum(4,2) 
      OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4) 
      OR(20) HasItemEquiped("chan01","B!Gavin2") 
          HasItemEquiped("chan02","B!Gavin2") 
          HasItemEquiped("chan03","B!Gavin2") 
          HasItemEquiped("chan04","B!Gavin2") 
          HasItemEquiped("chan05","B!Gavin2") 
          HasItemEquiped("chan06","B!Gavin2") 
          HasItemEquiped("chan07","B!Gavin2") 
          HasItemEquiped("chan08","B!Gavin2") 
          HasItemEquiped("chan09","B!Gavin2") 
          HasItemEquiped("chan10","B!Gavin2") 
          HasItemEquiped("chan11","B!Gavin2") 
          HasItemEquiped("chan12","B!Gavin2") 
          HasItemEquiped("chan13","B!Gavin2") 
          HasItemEquiped("chan14","B!Gavin2") 
          HasItemEquiped("chan15","B!Gavin2") 
          HasItemEquiped("chan16","B!Gavin2") 
          HasItemEquiped("chan17","B!Gavin2") 
          HasItemEquiped("chan18","B!Gavin2") 
          HasItemEquiped("dwchan01","B!Gavin2") 
          HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + chain_butt_h2 
+ ~RandomNum(4,3) 
      OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4) 
      !HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + butt_h3 
+ ~RandomNum(4,3) 
      OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4) 
      OR(20) HasItemEquiped("chan01","B!Gavin2") 
          HasItemEquiped("chan02","B!Gavin2") 
          HasItemEquiped("chan03","B!Gavin2") 
          HasItemEquiped("chan04","B!Gavin2") 
          HasItemEquiped("chan05","B!Gavin2") 
          HasItemEquiped("chan06","B!Gavin2") 
          HasItemEquiped("chan07","B!Gavin2") 
          HasItemEquiped("chan08","B!Gavin2") 
          HasItemEquiped("chan09","B!Gavin2") 
          HasItemEquiped("chan10","B!Gavin2") 
          HasItemEquiped("chan11","B!Gavin2") 
          HasItemEquiped("chan12","B!Gavin2") 
          HasItemEquiped("chan13","B!Gavin2") 
          HasItemEquiped("chan14","B!Gavin2") 
          HasItemEquiped("chan15","B!Gavin2") 
          HasItemEquiped("chan16","B!Gavin2") 
          HasItemEquiped("chan17","B!Gavin2") 
          HasItemEquiped("chan18","B!Gavin2") 
          HasItemEquiped("dwchan01","B!Gavin2") 
          HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + chain_butt_h3 
+ ~RandomNum(4,4) 
      OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4) 
      !HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + butt_h4 
+ ~RandomNum(4,4) 
      OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4) 
      OR(20) HasItemEquiped("chan01","B!Gavin2") 
          HasItemEquiped("chan02","B!Gavin2") 
          HasItemEquiped("chan03","B!Gavin2") 
          HasItemEquiped("chan04","B!Gavin2") 
          HasItemEquiped("chan05","B!Gavin2") 
          HasItemEquiped("chan06","B!Gavin2") 
          HasItemEquiped("chan07","B!Gavin2") 
          HasItemEquiped("chan08","B!Gavin2") 
          HasItemEquiped("chan09","B!Gavin2") 
          HasItemEquiped("chan10","B!Gavin2") 
          HasItemEquiped("chan11","B!Gavin2") 
          HasItemEquiped("chan12","B!Gavin2") 
          HasItemEquiped("chan13","B!Gavin2") 
          HasItemEquiped("chan14","B!Gavin2") 
          HasItemEquiped("chan15","B!Gavin2") 
          HasItemEquiped("chan16","B!Gavin2") 
          HasItemEquiped("chan17","B!Gavin2") 
          HasItemEquiped("chan18","B!Gavin2") 
          HasItemEquiped("dwchan01","B!Gavin2") 
          HasItemEquiped("dwchan02","B!Gavin2")~ + ~(You stroke his backside.)~ + chain_butt_h4 

/* Stroke Thigh */ 
+ ~!HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2") 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(4,1)~ + ~(You run your hand up the inside of his thigh.)~ + thigh_l1 
+ ~!HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2") 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(4,2)~ + ~(You run your hand up the inside of his thigh.)~ + thigh_l2 
+ ~!HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2") 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(4,3)~ + ~(You run your hand up the inside of his thigh.)~ + thigh_l3 
+ ~!HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2") 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(4,4)~ + ~(You run your hand up the inside of his thigh.)~ + thigh_l4 
+ ~!HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2") 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(4,1)~ + ~(You run your hand up the inside of his thigh.)~ + thigh_m1 
+ ~!HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2") 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(4,2)~ + ~(You run your hand up the inside of his thigh.)~ + thigh_m2 
+ ~!HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2") 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(4,3)~ + ~(You run your hand up the inside of his thigh.)~ + thigh_m3 
+ ~!HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2") 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12) 
      RandomNum(4,4)~ + ~(You run your hand up the inside of his thigh.)~ + thigh_m4 
+ ~!HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2") 
      RandomNum(4,1)
      Global("B!GavRA","GLOBAL",2)~ + ~(You run your hand up the inside of his thigh.)~ + thigh_h1a 
+ ~!HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2") 
      RandomNum(4,1) 
      Global("B!GavRA","GLOBAL",4)~ + ~(You run your hand up the inside of his thigh.)~ + thigh_h1b 
+ ~!HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2") 
      RandomNum(4,2)
      OR(2) 
          Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4)~ + ~(You run your hand up the inside of his thigh.)~ + thigh_h2 
+ ~!HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2") 
      RandomNum(4,3)
      OR(2) 
          Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4)~ + ~(You run your hand up the inside of his thigh.)~ + thigh_h3 
+ ~!HasItemEquiped("chan01","B!Gavin2") 
      !HasItemEquiped("chan02","B!Gavin2") 
      !HasItemEquiped("chan03","B!Gavin2") 
      !HasItemEquiped("chan04","B!Gavin2") 
      !HasItemEquiped("chan05","B!Gavin2") 
      !HasItemEquiped("chan06","B!Gavin2") 
      !HasItemEquiped("chan07","B!Gavin2") 
      !HasItemEquiped("chan08","B!Gavin2") 
      !HasItemEquiped("chan09","B!Gavin2") 
      !HasItemEquiped("chan10","B!Gavin2") 
      !HasItemEquiped("chan11","B!Gavin2") 
      !HasItemEquiped("chan12","B!Gavin2") 
      !HasItemEquiped("chan13","B!Gavin2") 
      !HasItemEquiped("chan14","B!Gavin2") 
      !HasItemEquiped("chan15","B!Gavin2") 
      !HasItemEquiped("chan16","B!Gavin2") 
      !HasItemEquiped("chan17","B!Gavin2") 
      !HasItemEquiped("chan18","B!Gavin2") 
      !HasItemEquiped("dwchan01","B!Gavin2") 
      !HasItemEquiped("dwchan02","B!Gavin2") 
      RandomNum(4,4)
      OR(2) 
          Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4)~ + ~(You run your hand up the inside of his thigh.)~ + thigh_h4 
++ ~(You leave him alone.)~ + pid2 
END 

/* Dungeon - spider */ 

IF ~~ spidertouch1 
SAY ~(He blanches and swats frantically at his neck.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ spidertouch2 
SAY ~(He squeals out loud, yanks his helmet off, and paws at his hair and neck, obviously trying to dislodge your 'spider.')~ 
IF ~~ THEN EXIT 
END 

IF ~~ spidertouch3 
SAY ~(He bats at his neck, emitting muffled hissing noises.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ spidertouch4 
SAY ~(He throws his helmet to the ground and vigorously brushes off his neck and shoulders. To your surprise, a fat, hairy spider *does* fall off of him. He stares at it in horror for a moment, stomps on it, then spins around, dropping to his hands and knees and heaving violently.)~ 
IF ~~ THEN EXIT 
END 

/* Touch Hand */ 

IF ~~ hand_1 
SAY ~I'm sorry. Was I walking too close to you?~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2 
SAY ~Did you want something?~ 
++ ~No, it was just an accident.~ + pid2  
+ ~!Global("B!GavFinger","GLOBAL",2)~ + ~You have nice hands.~ + hand_2.1 
+ ~Global("B!GavFinger","GLOBAL",2)~ + ~You have nice hands.~ + hand_2.2 
++ ~May I see your hand for a moment?~ + hand_2.3 
END 

IF ~~ hand_2.1 
SAY ~Thank you.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.2 
SAY ~Maybe once.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3 
SAY ~If you like.~ 
+ ~RandomNum(4,1) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You turn his hand over and trace the lines on his palm.)~ + hand_2.3l1 
+ ~RandomNum(4,2) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You turn his hand over and trace the lines on his palm.)~ + hand_2.3l2 
+ ~RandomNum(4,3) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You turn his hand over and trace the lines on his palm.)~ + hand_2.3l3 
+ ~RandomNum(4,4) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You turn his hand over and trace the lines on his palm.)~ + hand_2.3l4 
+ ~RandomNum(4,1) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You turn his hand over and trace the lines on his palm.)~ + hand_2.3m1 
+ ~RandomNum(4,2)
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You turn his hand over and trace the lines on his palm.)~ + hand_2.3m2 
+ ~RandomNum(4,3) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You turn his hand over and trace the lines on his palm.)~ + hand_2.3m3 
+ ~RandomNum(4,4) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You turn his hand over and trace the lines on his palm.)~ + hand_2.3m4 
+ ~RandomNum(4,1) 
      OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4)~ + ~(You turn his hand over and trace the lines on his palm.)~ + hand_2.3h1 
+ ~RandomNum(4,2) 
      OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4)~ + ~(You turn his hand over and trace the lines on his palm.)~ + hand_2.3h2 
+ ~RandomNum(4,3) 
      OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4)~ + ~(You turn his hand over and trace the lines on his palm.)~ + hand_2.3h3 
+ ~RandomNum(4,4) 
      OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4)~ + ~(You turn his hand over and trace the lines on his palm.)~ + hand_2.3h4 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You stroke the back of his hand against your cheek.)~ + hand_2.3l5 
+ ~Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You stroke the back of his hand against your cheek.)~ + hand_2.3m5 
+ ~OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4)~ + ~(You stroke the back of his hand against your cheek.)~ + hand_2.3h5 
+ ~RandomNum(3,1) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You raise his hand to your mouth and suck on one of his fingers.)~ + hand_2.3l6 
+ ~RandomNum(3,2) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You raise his hand to your mouth and suck on one of his fingers.)~ + hand_2.3l7 
+ ~RandomNum(3,3) 
      Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You raise his hand to your mouth and suck on one of his fingers.)~ + hand_2.3l8 
+ ~RandomNum(3,1) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You raise his hand to your mouth and suck on one of his fingers.)~ + hand_2.3m6 
+ ~RandomNum(3,2) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You raise his hand to your mouth and suck on one of his fingers.)~ + hand_2.3m7 
+ ~RandomNum(3,3) 
      Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You raise his hand to your mouth and suck on one of his fingers.)~ + hand_2.3m8 
+ ~RandomNum(3,1) 
      OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4)~ + ~(You raise his hand to your mouth and suck on one of his fingers.)~ + hand_2.3h6 
+ ~RandomNum(3,2) 
      OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4)~ + ~(You raise his hand to your mouth and suck on one of his fingers.)~ + hand_2.3h7 
+ ~RandomNum(3,3) 
      OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4)~ + ~(You raise his hand to your mouth and suck on one of his fingers.)~ + hand_2.3h8 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You take his hand in both of yours and just hold it for a few moments.)~ + hand_2.3l9 
+ ~Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You take his hand in both of yours and just hold it for a few moments.)~ + hand_2.3m9 
+ ~OR(2) Global("B!GavRA","GLOBAL",2) 
          Global("B!GavRA","GLOBAL",4)~ + ~(You take his hand in both of yours and just hold it for a few moments.)~ + hand_2.3h9 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You wrap his fingers around your hand.)~ + hand_2.3l10 
+ ~Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~(You wrap his fingers around your hand.)~ + hand_2.3m10 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~(You wrap his fingers around your hand.)~ + hand_2.3h10 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~(You wrap his fingers around your hand.)~ + hand_2.3c10 
++ ~Never mind.~ + pid2 
END 

IF ~~ hand_2.3l1 
SAY ~That tickles!~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3l2 
SAY ~(At first, he allows it, but he soon begins to look uncomfortable. After a few more heartbeats, he shakes his head and takes his hand away.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3l3 
SAY ~(His breath catches and he looks at you intently, but makes no other move. When you release his hand at last, he looks relieved.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3l4 
SAY ~(He flinches slightly at your touch.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3m1 
SAY ~(He regards you steadily for a moment, then slowly closes his fingers around your hand.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3m2 
SAY ~(He shivers appreciatively at your touch.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3m3 
SAY ~If you're trying to distract me, it's working.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3m4 
SAY ~<CHARNAME>... I'd better take my hand back now.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3h1 
SAY ~(He closes his eyes for a moment, obviously savoring the contact.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3h2 
SAY ~Mmmm. That feels good.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3h3 
SAY ~Er... should we be doing this here?~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3h4 
SAY ~(He closes his hand around yours and leans in to kiss your cheek.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3l5 
SAY ~(He looks puzzled, but pleased.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3m5 
SAY ~(He sighs happily and smiles.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3h5 
SAY ~(When you lower his hand, he raises it again and strokes your cheek.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3l6 
SAY ~<CHARNAME>! I... excuse me. I just remembered that I needed to check something in my pack. Now.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3l7 
SAY ~Oh, gods... don't do that, <CHARNAME>... please...~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3l8 
SAY ~(His eyes widen and he stares at you, his blush slowly rising in his cheeks.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3m6 
SAY ~Do you have any idea how suggestive that is?~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3m7 
SAY ~<CHARNAME>... please... I don't know how much of that my composure can take.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3m8 
SAY ~(He snatches his hand away, blushing to his hairline.)~ 
IF ~~ THEN + pid2 
END  

IF ~~ hand_2.3h6 
SAY ~You do know how to torture a man, don't you?~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3h7 
SAY ~Easy, <CHARNAME>. This isn't the best time to follow up on that kind of play.~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3h8 
SAY ~(He closes his eyes and savors the sensation, though his chest heaves with the effort of maintaining his composure.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3l9 
SAY ~(He looks puzzled, but pleased.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3m9 
SAY ~(He sighs happily and smiles.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3h9 
SAY ~(When you release his hand, he raises it and strokes your cheek.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3l10 
SAY ~(He closes your hand in his and holds it for several heartbeats.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3m10 
SAY ~(He raises your hand to his lips and kisses it.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3h10 
SAY ~(He squeezes your hand lightly and smiles.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ hand_2.3c10 
SAY ~(He shakes his head and releases your hand.)~ 
IF ~~ THEN + pid2 
END 

/* Touch his face */ 

IF ~~ face_l1 
SAY ~Have I got dirt on my face?~ 
++ ~Yes. Hold still and I'll get it off.~ + face_la 
++ ~You're getting freckles.~ + face_lb 
++ ~No, Gavin, it's a sign of affection.~ + face_lc 
++ ~You're getting a little stubbly.~ + face_ld 
END 

IF ~~ face_la 
SAY ~(He stands patiently while you stroke his face, though he begins to look uncomfortable after a few moments.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_lb 
SAY ~It's freckles or sunburn, I'm afraid. Sometimes, both.~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_lc 
SAY ~(blushing scarlet) Oh... thank you.~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_ld 
SAY ~I'll have to shave when we stop for the day.~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_l2 
SAY ~(He looks confused, but says nothing.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_l3 
SAY ~Hmm?~ 
++ ~You had an eyelash stuck to your cheek.~ + face_l3a 
++ ~Your cheek feels good. I wonder how it would feel next to mine...~ + face_l3b 
++ ~Would you let me kiss you?~ + face_l3c 
++ ~You have a kind face.~ + face_l3d 
++ ~Would you kiss me?~ + face_m1e 
END 

IF ~~ face_l3a 
SAY ~Ah. Thank you.~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_l3b 
SAY ~Probably too good... too good for me to endure, that is.~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_l3c 
SAY ~Uh... I would, but then I'd blush... and get clumsy. And then I'd step in a hole or trip over something, and you'd laugh at me, and my manly pride would never recover. You wouldn't want that on your conscience, would you?~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_l3d 
SAY ~I get that a lot.~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_l4
SAY ~Ooh! Sorry, you startled me.~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_l5
SAY ~(He looks baffled for a moment, but says nothing. His eyes follow you as you turn away.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_m1 
SAY ~Yes?~ 
++ ~Why don't you grow a beard?~ + face_m1a 
++ ~You look a little pale.~ + face_m1b 
++ ~Your face is dirty.~ + face_m1c 
++ ~Your face feels soft.~ + face_m1d 
++ ~May I have a kiss?~ + face_m1e 
++ ~I like your face.~ + face_m1f 
END 

IF ~~ face_m1a 
SAY ~It doesn't grow in very well... and it itches when it gets too long.~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_m1b 
SAY ~I must not be getting enough exercise.~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_m1c 
SAY ~(He scrubs at his face with his hand, smearing a wide streak of grime across his cheek.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_m1d 
SAY ~Er... thanks. You did mean that as a compliment... I hope.~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_m1e 
SAY ~I don't know...~ 
IF ~NumInParty(2)~ THEN + face_m1e1 
IF ~NumInPartyGT(2)~ THEN + face_m1e2 
END 

IF ~~ face_m1e1 
SAY ~Alright...~ 
IF ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ THEN + face_kiss_ra1a 
IF ~Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ THEN + face_kiss_ra1b 
IF ~Global("B!GavRA","GLOBAL",2)~ THEN + face_kiss_ra2 
IF ~Global("B!GavRA","GLOBAL",4)~ THEN + face_kiss_ra4 
END 


IF ~~ face_m1e2 
SAY ~We aren't alone...~ 
IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) 
      !Global("AnomenRomanceActive","GLOBAL",0) 
      !Global("AnomenRomanceActive","GLOBAL",3)~ THEN EXTERN ANOMENJ face_anorom 
IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) 
      OR(2) 
          Global("AnomenRomanceActive","GLOBAL",0) 
          Global("AnomenRomanceActive","GLOBAL",3)~ THEN EXTERN ANOMENJ face_ano 
IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) 
      OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN EXTERN JAHEIRAJ face_jah 
IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID) 
      OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN EXTERN MINSCJ face_min 
IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) 
      OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN EXTERN KORGANJ face_kor 
IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID) 
      OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) 
      OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID) 
      OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN EXTERN IMOEN2J face_imo 
IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID) 
      OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) 
      OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID) 
      OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Imoen2") !InMyArea("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN EXTERN EDWINJ face_edw
IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) 
      OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID) 
      OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Imoen2") !InMyArea("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID) 
      OR(3) !InParty("Edwin") !InMyArea("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN EXTERN YOSHJ face_yos 
IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) 
      OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID) 
      OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Imoen2") !InMyArea("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID) 
      OR(3) !InParty("Edwin") !InMyArea("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID) 
      OR(3) !InParty("Yoshimo") !InMyArea("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN EXTERN JANJ face_jan 
IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) 
      OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) 
      OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID) 
      OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Imoen2") !InMyArea("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID) 
      OR(3) !InParty("Edwin") !InMyArea("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID) 
      OR(3) !InParty("Yoshimo") !InMyArea("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jan") !InMyArea("Jan") StateCheck("Jan",CD_STATE_NOTVALID)~ THEN EXTERN VICONIJ face_vic 
IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) 
      OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) 
      OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID) 
      OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Imoen2") !InMyArea("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID) 
      OR(3) !InParty("Edwin") !InMyArea("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID) 
      OR(3) !InParty("Yoshimo") !InMyArea("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jan") !InMyArea("Jan") StateCheck("Jan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN EXTERN KELDORJ face_kel 
IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) 
      OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) 
      OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID) 
      OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Imoen2") !InMyArea("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID) 
      OR(3) !InParty("Edwin") !InMyArea("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID) 
      OR(3) !InParty("Yoshimo") !InMyArea("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jan") !InMyArea("Jan") StateCheck("Jan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID) 
      OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN EXTERN NALIAJ face_nal 
IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID) 
      OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) 
      OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID) 
      OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Imoen2") !InMyArea("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID) 
      OR(3) !InParty("Edwin") !InMyArea("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID) 
      OR(3) !InParty("Yoshimo") !InMyArea("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jan") !InMyArea("Jan") StateCheck("Jan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID) 
      OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID) 
      OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN EXTERN AERIEJ face_aer 
IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID) 
      OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) 
      OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID) 
      OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Imoen2") !InMyArea("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID) 
      OR(3) !InParty("Edwin") !InMyArea("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID) 
      OR(3) !InParty("Yoshimo") !InMyArea("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jan") !InMyArea("Jan") StateCheck("Jan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID) 
      OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID) 
      OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) 
      OR(3) !InParty("Aerie") !InMyArea("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN EXTERN CERNDJ face_cer 
IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID) 
      OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) 
      OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID) 
      OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Imoen2") !InMyArea("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID) 
      OR(3) !InParty("Edwin") !InMyArea("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID) 
      OR(3) !InParty("Yoshimo") !InMyArea("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jan") !InMyArea("Jan") StateCheck("Jan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID) 
      OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID) 
      OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) 
      OR(3) !InParty("Aerie") !InMyArea("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID) 
      OR(3) !InParty("Cernd") !InMyArea("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN EXTERN MAZZYJ face_maz 
IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) 
      OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) 
      OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID) 
      OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Imoen2") !InMyArea("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID) 
      OR(3) !InParty("Edwin") !InMyArea("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID) 
      OR(3) !InParty("Yoshimo") !InMyArea("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jan") !InMyArea("Jan") StateCheck("Jan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID) 
      OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID) 
      OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) 
      OR(3) !InParty("Aerie") !InMyArea("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID) 
      OR(3) !InParty("Cernd") !InMyArea("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID) 
      OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN EXTERN HAERDAJ face_hae 
IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID) 
      OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) 
      OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID) 
      OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Imoen2") !InMyArea("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID) 
      OR(3) !InParty("Edwin") !InMyArea("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID) 
      OR(3) !InParty("Yoshimo") !InMyArea("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jan") !InMyArea("Jan") StateCheck("Jan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID) 
      OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID) 
      OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) 
      OR(3) !InParty("Aerie") !InMyArea("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID) 
      OR(3) !InParty("Cernd") !InMyArea("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID) 
      OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) 
      OR(3) !InParty("HaerDalis") !InMyArea("HaerDalis") StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN EXTERN VALYGARJ face_val 
IF ~OR(3) !InParty("Valygar") !InMyArea("Valygar") StateCheck("Valygar",CD_STATE_NOTVALID) 
      OR(3) !InParty("Anomen") !InMyArea("Anomen") StateCheck("Anomen",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jaheira") !InMyArea("Jaheira") StateCheck("Jaheira",CD_STATE_NOTVALID) 
      OR(3) !InParty("Minsc") !InMyArea("Minsc") StateCheck("Minsc",CD_STATE_NOTVALID) 
      OR(3) !InParty("Korgan") !InMyArea("Korgan") StateCheck("Korgan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Imoen2") !InMyArea("Imoen2") StateCheck("Imoen2",CD_STATE_NOTVALID) 
      OR(3) !InParty("Edwin") !InMyArea("Edwin") StateCheck("Edwin",CD_STATE_NOTVALID) 
      OR(3) !InParty("Yoshimo") !InMyArea("Yoshimo") StateCheck("Yoshimo",CD_STATE_NOTVALID) 
      OR(3) !InParty("Jan") !InMyArea("Jan") StateCheck("Jan",CD_STATE_NOTVALID) 
      OR(3) !InParty("Viconia") !InMyArea("Viconia") StateCheck("Viconia",CD_STATE_NOTVALID) 
      OR(3) !InParty("Keldorn") !InMyArea("Keldorn") StateCheck("Keldorn",CD_STATE_NOTVALID) 
      OR(3) !InParty("Nalia") !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID) 
      OR(3) !InParty("Aerie") !InMyArea("Aerie") StateCheck("Aerie",CD_STATE_NOTVALID) 
      OR(3) !InParty("Cernd") !InMyArea("Cernd") StateCheck("Cernd",CD_STATE_NOTVALID) 
      OR(3) !InParty("Mazzy") !InMyArea("Mazzy") StateCheck("Mazzy",CD_STATE_NOTVALID) 
      OR(3) !InParty("HaerDalis") !InMyArea("HaerDalis") StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN + face_kiss3  
END 
END 

CHAIN AERIEJ face_aer 
~(giggle) Don't mind me!~ 
EXTERN ~B!GavJ~ face_kiss1 

CHAIN ANOMENJ face_anorom 
~But, my lady! Surely you do not desire a... caress... from this lout!~ 
EXTERN ~B!GavJ~ face_kiss3 

CHAIN ANOMENJ face_ano 
~Bah. I care not.~ 
EXTERN ~B!GavJ~ face_kiss1 

CHAIN CERNDJ face_cer 
~I would pay no heed to whatever you do.~ 
EXTERN ~B!GavJ~ face_kiss2 

CHAIN EDWINJ face_edw 
~Have you cretins no better amusements?~ 
EXTERN ~B!GavJ~ face_kiss3 

CHAIN HAERDAJ face_hae 
~The time we mortals dance upon the plane is fleeting. Seize it while you may!~ 
EXTERN ~B!GavJ~ face_kiss2 

CHAIN IMOEN2J face_imo 
~Aw, how cute!~ 
EXTERN ~B!GavJ~ face_kiss2 

CHAIN JAHEIRAJ face_jah 
~If you have nothing better to do with your lips, cleric, I suggest praying. You need all the divine assistance you can get.~ 
EXTERN ~B!GavJ~ face_kiss3 

CHAIN JANJ face_jan 
~Don't stop on my account!~ 
EXTERN ~B!GavJ~ face_kiss2 

CHAIN KELDORJ face_kel 
~As you no doubt desire privacy, I shall avert my gaze.~ 
EXTERN ~B!GavJ~ face_kiss1 

CHAIN KORGANJ face_kor 
~Har, har! There ye go, lad! Give her all ye got!~ 
EXTERN ~B!GavJ~ face_kiss2 

CHAIN MAZZYJ face_maz 
~I find that my attention is needed elsewhere for several moments.~ 
EXTERN ~B!GavJ~ face_kiss1 

CHAIN MINSCJ face_min 
~Go on, Boo won't mind.~ 
EXTERN ~B!GavJ~ face_kiss2 

CHAIN NALIAJ face_nal 
~Oh, don't mind me!~ 
EXTERN ~B!GavJ~ face_kiss1 

CHAIN VALYGARJ face_val 
~Whatever.~ 
EXTERN ~B!GavJ~ face_kiss2 

CHAIN VICONIJ face_vic 
~Spare me this display of rivvil sentimentality!~ 
EXTERN ~B!GavJ~ face_kiss3 

CHAIN YOSHJ face_yos 
~I would not dream of objecting!~ 
EXTERN ~B!GavJ~ face_kiss2 

APPEND ~B!GavJ~ 

IF ~~ face_kiss1 
SAY ~Alright...~ 
IF ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ THEN + face_kiss_ra1a 
IF ~Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ THEN + face_kiss_ra1b 
IF ~Global("B!GavRA","GLOBAL",2)~ THEN + face_kiss_ra2 
IF ~Global("B!GavRA","GLOBAL",4)~ THEN + face_kiss_ra4 
END 

IF ~~ face_kiss2 
SAY ~Then I don't mind if I do...~ 
IF ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ THEN + face_kiss_ra1a 
IF ~Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ THEN + face_kiss_ra1b 
IF ~Global("B!GavRA","GLOBAL",2)~ THEN + face_kiss_ra2 
IF ~Global("B!GavRA","GLOBAL",4)~ THEN + face_kiss_ra4 
END 

IF ~~ face_kiss3 
SAY ~Ah, hells...~ 
IF ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ THEN + face_kiss_ra1a 
IF ~Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ THEN + face_kiss_ra1b 
IF ~Global("B!GavRA","GLOBAL",2)~ THEN + face_kiss_ra2 
IF ~Global("B!GavRA","GLOBAL",4)~ THEN + face_kiss_ra4 
END 

IF ~~ face_kiss_ra1a 
SAY ~(He embraces you hesitantly, turning you away from the others, then gently lifts your chin with one trembling hand. His lips brush yours and he steps away, his face very, very red.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_kiss_ra1b 
SAY ~(He throws his arms around you, then raises your lips to his. He kisses you soundly, but breaks the embrace before too many heartbeats pass. He looks slightly embarrassed, but he smiles despite himself.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_kiss_ra2 
SAY ~(He embraces you warmly, cradling your chin in his hand. He kisses you deeply, stopping only when the muffled sighs and throat clearings of your companions becomes too frequent to ignore.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_kiss_ra4 
SAY ~(He shrugs and puts his arms around you. Despite his initial indifference, however, he kisses you quite passionately, and by the time you finally pull away from him, he is breathing very heavily indeed.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_m1f 
SAY ~That's something I don't hear often.~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_m2 
SAY ~(He reaches out and strokes your cheek in return.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_m3 
SAY ~(He smiles shyly, though he doesn't quite meet your gaze.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_m4 
SAY ~(He catches your hand in his and kisses it.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_h1 
SAY ~Yes, love?~ 
++ ~You have a sweet face.~ + face_h1a 
++ ~Hold still, you've got a smear of dirt right across your cheek.~ + face_h1b 
++ ~I think you've been getting too much sun. You're a little pink.~ + face_h1c 
++ ~Is that a wrinkle I see?~ + face_h1d 
++ ~I just wanted to touch you.~ + face_h1e 
++ ~I love the way your skin feels when you're freshly shaved.~ + face_h1f 
++ ~May I have a kiss?~ + face_m1e 
END 

IF ~~ face_h1a 
SAY ~I'm glad it pleases you.~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_h1b 
SAY ~If ever I questioned whether you had the makings of a good wife, I would doubt it no longer! You'll keep me tidy and presentable, won't you, love?~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_h1c 
SAY ~Ah, yes, that does happen, doesn't it?~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_h1d 
SAY ~It could be. This will be my thirtieth summer, and I've spent my whole life out of doors.~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_h1e 
SAY ~I am always happy to be touched by you, love.~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_h1f 
SAY ~Then I shall have to shave twice a day!~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_h2 
SAY ~(He catches your hand and gently uncurls you fingers. He brings your hand to his lips and gently kisses your palm.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_h3 
SAY ~(He catches your hand in his and draws you in for a kiss.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_h4 
SAY ~Sweet, beloved <CHARNAME>...~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_c1 
SAY ~Yes? Was there something you wanted?~ 
++ ~When was the last time you shaved?~ + face_c1a 
++ ~Your face is dirty.~ + face_c1b 
++ ~I just wanted to touch you.~ + face_c1c 
+ ~Global("B!GavSex","GLOBAL",1)~ + ~Will you come to my bed later?~ + face_c1d 
++ ~May I have a kiss?~ + face_m1e 
END 

IF ~~ face_c1a 
SAY ~Yesterday, I think.~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_c1b 
SAY ~It gets that way.~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_c1c 
SAY ~Go right ahead.~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_c1d 
SAY ~I can do that.~ 
IF ~~ THEN DO ~SetGlobal("B!GavPCWantsIt","LOCALS",1)~ + pid2 
END 

IF ~~ face_c2 
SAY ~If there's something you want, just ask.~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_c3 
SAY ~(He closes his eyes for a moment and sighs.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ face_c4 
SAY ~(He catches your hand and looks at it for a few heartbeats, then raises it to his lips and kisses it.)~ 
IF ~~ THEN + pid2 
END 

/* Touch chest */ 

IF ~~ chest_l1 
SAY ~(His breath catches and he leaps away from you, obviously startled.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ chest_l2 
SAY ~(gulp) Y-yes... ?~ 
IF ~~ THEN + pid2 
END 

IF ~~ chest_l3 
SAY ~Excuse me, <CHARNAME>, I usually like the attention, but that's a little personal...~ 
IF ~~ THEN + pid2 
END 

IF ~~ chest_l4 
SAY ~(His eyes open wide and he freezes. He relaxes after a heartbeat or two... and after a few deep, steadying breaths.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ chest_m1 
SAY ~Feeling a little naughty, are we?~ 
IF ~~ THEN + pid2 
END 

IF ~~ chest_m2 
SAY ~(He catches your hand in his and presses it lightly to his chest.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ chest_m3 
SAY ~(He inhales sharply, then lets it out slowly as your finger completes its course. He raises his eyes to meet yours. His cheeks are crimson, but his gaze is steady.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ chest_m4 
SAY ~(gulp) <CHARNAME>... what you're doing is making it rather difficult for me to maintain my composure.~ 
IF ~~ THEN + pid2 
END 

IF ~~ chest_h1 
SAY ~(His arm snakes around your waist and he draws you close. He buries his face in your hair and breathes deeply. At last, he releases you, sighing.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ chest_h2 
SAY ~My I do the same to you?~ 
IF ~~ THEN + pid2 
END 

IF ~~ chest_h3 
SAY ~(He seizes your hand and kisses it before pressing it against his heart.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ chest_h4 
SAY ~(Don't stop there, <CHARNAME>. You can have the rest for the asking.)~ 
IF ~~ THEN + pid2 
END 

/* Touch backside */ 

IF ~~ butt_l1 
SAY ~(He draws a quick breath and stares at you wide-eyed, temporarily dumbstruck.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ chain_butt_l1 
SAY ~(You wind up with a handful of armor and Gavin remains oblivious.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_l2 
SAY ~Ooh! <CHARNAME>... did you just... oh my.~ 
IF ~~ THEN + pid2 
END 

IF ~~ chain_butt_l2 
SAY ~(The armor Gavin wears prevents you from getting much of a feel, but Gavin, at least, seems to have noticed. He stops suddenly, a very surprised look on his face.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_l3 
SAY ~<CHARNAME>... I don't know how to react to what you just did.~ 
++ ~You have a nice -~ + butt_l3a 
++ ~Can I touch?~ + butt_l3b 
++ ~You should be pleased. I don't do that to everyone.~ + butt_l3c 
++ ~Was that a little too forward for you?~ + butt_l3d 
++ ~I'm sorry, I didn't mean to offend you.~ + butt_l3e 
END 

IF ~~ butt_l3a 
SAY ~Ahem. Thank you. I think.~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_l3b 
SAY ~Please don't be offended, but I'd rather you didn't.~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_l3c 
SAY ~(gulp) I see.~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_l3d 
SAY ~A bit, aye.~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_l3e 
SAY ~You haven't... I'm just a bit startled.~ 
IF ~~ THEN + pid2 
END 

IF ~~ chain_butt_l3 
SAY ~(Your movement apparently causes the links of Gavin's armor to pinch him. He jumps, and tries to look around to his backside to see what's causing his armor to bind.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_l4 
SAY ~Excuse me, but I'm not sure we know each other well enough for that kind of familiarity.~ 
IF ~~ THEN + pid2 
END 

IF ~~ chain_butt_l4 
SAY ~Did you just... <CHARNAME>!~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_m1 
SAY ~I don't even know how to respond to that.~ 
++ ~Just smile and say you liked it.~ + butt_m1a 
++ ~You could return the favor.~ + butt_m1b 
++ ~You don't have to do anything.~ + butt_m1c 
++ ~Are you offended?~ + butt_m1d 
END 

IF ~~ butt_m1a 
SAY ~Well, I did... but it isn't something I really want to encourage, if you know what I mean.~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_m1b 
SAY ~No, I don't think I could. Not without a really cold lake to jump into afterward.~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_m1c 
SAY ~Um... it's still a bit more forward than I'm used to.~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_m1d 
SAY ~No, but that is a bit... aggressive.~ 
IF ~~ THEN + pid2 
END 

IF ~~ chain_butt_m1 
SAY ~Oh... <CHARNAME>!~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_m2 
SAY ~(Gavin tentatively reaches out and fondles your backside in return... though his cheeks are flaming.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ chain_butt_m2 
SAY ~You aren't going to be able to feel much through the armor, you know.~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_m3 
SAY ~Now how would you feel if I walked up and did that to you? Never mind. Maybe I'd better not know.~ 
IF ~~ THEN + pid2 
END 

IF ~~ chain_butt_m3 
SAY ~Keep that up and people might get the wrong idea.~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_m4 
SAY ~Are you trying to molest me?~ 
++ ~Would you like me to?~ + butt_m4a 
++ ~No, I just wanted to see what your backside felt like.~ + butt_m4b 
++ ~Actually, I'm trying to make you blush.~ + butt_m4c 
++ ~Who me?~ + butt_m4d 
END 

IF ~~ butt_m4a 
SAY ~Well, yes... but this isn't exactly the time or the place.~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_m4b 
SAY ~Now you know.~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_m4c 
SAY ~I'm sure it's working.~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_m4d 
SAY ~What was I thinking? You'd never do anything like that.~ 
IF ~~ THEN + pid2 
END 

IF ~~ chain_butt_m4 
SAY ~If you're trying to make me turn red, I'm sure it's working.~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_h1 
SAY ~(At first, Gavin puts his arm around your waist, but then he slowly, and very deliberately, drops his hand to stroke your rear end in return.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ chain_butt_h1 
SAY ~You might like that better without the armor.~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_h2 
SAY ~Keep that up and I'll stand here all day!~ 
IF ~~ THEN + pid2 
END 

IF ~~ chain_butt_h2 
SAY ~It's a good thing this armor is so thick, or I'd be turning pretty red right about now.~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_h3 
SAY ~Naughty girl!~ 
IF ~~ THEN + pid2 
END 

IF ~~ chain_butt_h3 
SAY ~You know I can't really feel much of anything with the armor and the padding, right?~ 
IF ~~ THEN + pid2 
END 

IF ~~ butt_h4 
SAY ~Let's save that until we're alone, shall we?~ 
IF ~~ THEN + pid2 
END 

IF ~~ chain_butt_h4 
SAY ~(You don't seem to have touched him hard enough for him to feel it.)~ 
IF ~~ THEN + pid2 
END 

/* Stroke Thigh */ 

IF ~~ thigh_l1 
SAY ~(Shocking Grasp could not have produced a more violent jump.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ thigh_l2 
SAY ~Ow! You made me bite my tongue.~ 
IF ~~ THEN + pid2 
END 

IF ~~ thigh_l3 
SAY ~(His breath catches and he jumps several feet backward.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ thigh_l4 
SAY ~(Your audacity is rewarded. You get the impression of a firm, well-muscled thigh beneath his leggings in the heartbeat or two it takes Gavin to snatch your hand away. He looks sternly at you, reproach in his eyes.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ thigh_m1 
SAY ~(His breath catches and he flinches, but he allows your touch... for a moment or two, anyway.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ thigh_m2 
SAY ~That's a bit forward, don't you think?~ 
IF ~~ THEN + pid2 
END 

IF ~~ thigh_m3 
SAY ~(Gavin might not be the most bulky of men, but his legs, at least, are powerfully built.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ thigh_m4 
SAY ~How far were you planning on taking that?~ 
++ ~How far will you let me?~ + thigh_m4a 
++ ~All the way to the top.~ + thigh_m4b 
++ ~I just wanted to touch you.~ + thigh_m4c 
++ ~Sorry, I didn't mean to offend you.~ + thigh_m4d 
END 

IF ~~ thigh_m4a 
SAY ~You've gone far enough.~ 
IF ~~ THEN + pid2 
END 

IF ~~ thigh_m4b 
SAY ~Don't. Please.~ 
IF ~~ THEN + pid2 
END 

IF ~~ thigh_m4c 
SAY ~Well, you have.~ 
IF ~~ THEN + pid2 
END 

IF ~~ thigh_m4d 
SAY ~You haven't, but I'd still be more comfortable if you left it at that.~ 
IF ~~ THEN + pid2 
END 

IF ~~ thigh_h1a 
SAY ~(His breathing deepens and his eyes close as you stroke his thigh. After a moment or two, a grimmace crosses his face.) Sorry, love, but you'd better stop.~ 
IF ~~ THEN + pid2 
END 

IF ~~ thigh_h1b 
SAY ~(His breathing deepens and his eyes close as you stroke his thigh. After a moment or two, a grimmace crosses his face.) That's about enough of that.~ 
IF ~~ THEN + pid2 
END 

IF ~~ thigh_h2 
SAY ~Oh, gods... you're driving me wild with that.~ 
IF ~~ THEN + pid2 
END 

IF ~~ thigh_h3 
SAY ~Keep that up much longer and I'm going to need a cold bath to sit in.~ 
IF ~~ THEN + pid2 
END 

IF ~~ thigh_h4 
SAY ~I hope you'll let me return the favor once we're alone.~ 
IF ~~ THEN + pid2 
END 

/* Give him a massage */ 

IF ~~ neckrub1a 
SAY ~Mmm. That feels wonderful.~ 
IF ~~ THEN + pid2 
END 

IF ~~ neckrub1b 
SAY ~You're the first person that's ever done that. Thank you.~ 
IF ~~ THEN + pid2 
END 

IF ~~ neckrub1c 
SAY ~Careful, <CHARNAME>. I could get used to this.~ 
IF ~~ THEN + pid2 
END 

IF ~~ neckrub2a 
SAY ~Mmm. I'm yours. Oh, that's right, I already am.~ 
IF ~~ THEN + pid2 
END 

IF ~~ neckrub2b 
SAY ~Do you have any idea how good that feels?~ 
IF ~~ THEN + pid2 
END 

IF ~~ neckrub2c 
SAY ~You're too good to me.~ 
IF ~~ THEN + pid2 
END 

IF ~~ neckrub4a 
SAY ~Name your reward and it's yours.~ 
IF ~~ THEN + pid2 
END 

IF ~~ neckrub4b 
SAY ~That's very kind of you.~ 
IF ~~ THEN + pid2 
END 

IF ~~ neckrub4c 
SAY ~You want something, don't you?~ 
IF ~~ THEN + pid2 
END 

/* "Accidental" grope */ 

IF ~~ grope1a 
SAY ~Sorry! I really should learn to watch where I'm walking.~ 
IF ~~ THEN + pid2 
END 

IF ~~ grope1b 
SAY ~Oh, gods... I'm sorry...~ 
IF ~~ THEN + pid2 
END 

IF ~~ grope1c 
SAY ~<CHARNAME>!!!~ 
IF ~~ THEN + pid2 
END 

IF ~~ grope2a 
SAY ~If a certain naughty girl wants to step away from the others for a while, you have only to ask.~ 
IF ~~ THEN + pid2 
END 

IF ~~ grope2b 
SAY ~Careful!~ 
IF ~~ THEN + pid2 
END 

IF ~~ grope2c 
SAY ~Easy there! You don't want to be hitting that too hard.~ 
IF ~~ THEN + pid2 
END 

IF ~~ grope4a 
SAY ~Whoa! Watch the hands!~ 
IF ~~ THEN + pid2 
END 

IF ~~ grope4b 
SAY ~You don't have to try that hard, you know.~ 
IF ~~ THEN + pid2 
END 

IF ~~ grope4c 
SAY ~What in the nine hells do you think you're doing?~ 
IF ~~ THEN + pid2 
END 


/* Mind Games */ 

/* Pout */ 

IF ~~ mgame1 
SAY ~Is something wrong?~ 
+ ~RandomNum(2,1)~ + ~Everything is wrong, Gavin! I never wanted any of this!~ + mgame1.1 
+ ~RandomNum(2,2)~ + ~Everything is wrong, Gavin! I never wanted any of this!~ + mgame1.2 
+ ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ + ~I'm so alone!~ + mgame1.3 
+ ~Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ + ~I'm so alone!~ + mgame1.4 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I'm so alone!~ + mgame1.5 
+ ~Global("B!GavRA","GLOBAL",4)~ + ~I'm so alone!~ + mgame1.6 
++ ~I'll be alright.~ + mgame1.7 
END 

IF ~~ mgame1.1 
SAY ~You're strong, <CHARNAME>. After everything you've already overcome, I know you'll be able to get through this.~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.2 
SAY ~I'm sorry, <CHARNAME>... I wish I knew what to say.~ 
IF ~Global("B!GavRA","GLOBAL",1) 
      GlobalLT("B!GavLove","GLOBAL",12)~ THEN + mgame1.2a  
IF ~Global("B!GavRA","GLOBAL",1) 
      !GlobalLT("B!GavLove","GLOBAL",12)~ THEN + mgame1.2b 
IF ~Global("B!GavRA","GLOBAL",2)~ THEN + mgame1.2c 
IF ~Global("B!GavRA","GLOBAL",4)~ THEN + mgame1.2d 
END 

IF ~~ mgame1.2a 
SAY ~(He embraces you awkwardly and pats your shoulder.)~ 
++ ~(You fling your arms around his neck and sob into his chest.)~ + mgame1.2a1 
++ ~(You pull away from him, sniffing loudly and blinking back your tears.)~ + mgame1.2a2 
++ ~(You burst into tears, break his embrace, and run away from him.)~ + mgame1.2a3 
++ ~(You slide your hands down his back, sneaking a good feel of his backside in the process.)~ + mgame1.2a4 
++ ~I'll be alright, I just needed a moment to collect myself.~ + mgame1.2a5 
++ ~There's nothing you can do. I've got to face this alone. I'm always alone.~ + mgame1.2a6 
END 

IF ~~ mgame1.2a1 
SAY ~There, there... it will all be alright, you'll see.~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.2a2 
SAY ~There's the <CHARNAME> I know! We'll get through this, I swear.~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.2a3 
SAY ~<CHARNAME>! Wait! I'm sorry! Was it something I said?~ 
IF ~~ THEN EXIT 
END 

IF ~~ mgame1.2a4 
SAY ~(He flinches, but he allows your touch. Your audacity is rewarded with the opportunity to explore a firm, well-rounded pair of buttocks.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.2a5 
SAY ~Take as long as you need.~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.2a6 
SAY ~No, <CHARNAME>, that isn't true. I'll help you however I am able.~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.2b 
SAY ~(He folds you into his arms, easing your head to rest against his shoulder.)~ 
++ ~(You fling your arms around his neck and sob into his chest.)~ + mgame1.2b1 
++ ~(You pull away from him, sniffing loudly and blinking back your tears.)~ + mgame1.2a2 
++ ~(You burst into tears, break his embrace, and run away from him.)~ + mgame1.2b3 
++ ~(You slide your hands down his back, sneaking a good feel of his backside in the process.)~ + mgame1.2b4 
++ ~I'll be alright, I just needed a moment to collect myself.~ + mgame1.2b5 
++ ~There's nothing you can do. I've got to face this alone. I'm always alone.~ + mgame1.2b6 
END 

IF ~~ mgame1.2b1
SAY ~Oh, <CHARNAME>, I know this is hard on you. Let it out, if you need to.~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.2b3 
SAY ~<CHARNAME>, wait! Tell me what's wrong! Maybe I can help!~ 
IF ~~ THEN EXIT 
END 

IF ~~ mgame1.2b4 
SAY ~(His breath catches, but he makes no move to break away from you. After a few moments of your caress, however, his composure begins to waver, and he tears himself away.)~ 
= ~Forgive me, <CHARNAME>. I know I've got no right to take advantage of your distress, but I'm only human. Your touch was a little more... familiar than I can comfortably endure.~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.2b5 
SAY ~Take as long as you need, <CHARNAME>. I won't let you go.~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.2b6 
SAY ~You aren't alone. You've got me... and the others, of course. We'll all get through this together.~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.2c 
SAY ~(He embraces you tightly, easing your head to rest against his shoulder.)~ 
++ ~(You fling your arms around his neck and sob into his chest.)~ + mgame1.2c1 
++ ~(You pull away from him, sniffing loudly and blinking back your tears.)~ + mgame1.2c2 
++ ~(You burst into tears, break his embrace, and run away from him.)~ + mgame1.2c3 
++ ~(You slide your hands down his back, sneaking a good feel of his backside in the process.)~ + mgame1.2c4 
++ ~I'll be alright, I just needed a moment to collect myself.~ + mgame1.2c5 
++ ~There's nothing you can do. I've got to face this alone. I'm always alone.~ + mgame1.2c6 
END 

IF ~~ mgame1.2c1 
SAY ~Oh, <CHARNAME>, I know this is hard on you, but you're stronger than this. We can get through this together.~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.2c2 
SAY ~There's my fearless <CHARNAME>!~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.2c3 
SAY ~<CHARNAME>, wait! You know there's nothing we can't talk about! I'll help you get through this, if you'll let me!~ 
IF ~~ THEN EXIT 
END 

IF ~~ mgame1.2c4 
SAY ~(At first, his only reaction is to draw you closer. After a few moments of your attention, however, he pulls away slightly.)~ 
= ~You're upset, love, and I'll hold you as long as you need me to, but if you keep touching me like that, I'm going to have a hard time keeping myself focused on comforting you.~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.2c5 
SAY ~Take as long as you need, <CHARNAME>. I won't let you go... ever.~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.2c6 
SAY ~Not while I'm still living, you won't! We're in this together, love, every step of the way.~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.2d 
SAY ~(He embraces you awkwardly, letting your head rest against his shoulder.)~ 
++ ~(You fling your arms around his neck and sob into his chest.)~ + mgame1.2d1 
++ ~(You pull away from him, sniffing loudly and blinking back your tears.)~ + mgame1.2d2 
++ ~(You burst into tears, break his embrace, and run away from him.)~ + mgame1.2d3 
++ ~(You slide your hands down his back, sneaking a good feel of his backside in the process.)~ + mgame1.2d4 
++ ~I'll be alright, I just needed a moment to collect myself.~ + mgame1.2d5 
++ ~There's nothing you can do. I've got to face this alone. I'm always alone.~ + mgame1.2d6 
END 

IF ~~ mgame1.2d1 
SAY ~Come on, <CHARNAME>, you're tougher than this. You can do it.~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.2d2 
SAY ~There's the fearless <CHARNAME> I know!~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.2d3 
SAY ~<CHARNAME>, wait! Oh, never mind...~ 
IF ~~ THEN EXIT 
END 

IF ~~ mgame1.2d4 
SAY ~If all you wanted was a fistfull of ass, you could have just asked.~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.2d5 
SAY ~Take as long as you need...~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.2d6 
SAY ~We all have to live with the choices we make.~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.3 
SAY ~No, <CHARNAME>, that isn't true. I'll help you however I am able.~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.4 
SAY ~You aren't alone. You've got me... and the others, of course. We'll all get through this together.~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.5 
SAY ~Not while I'm still living, you won't! We're in this together, love, every step of the way.~ 
IF ~~ THEN + pid2 
END 

IF ~~ mgame1.6 
SAY ~We all have to live with the choices we make.~ 
IF ~~ THEN + pid2 
END 


IF ~~ mgame1.7
SAY ~If you say so...~ 
IF ~~ THEN + pid2 
END 

/* Study face without letting him catch you */ 

IF ~~ study_face1 
SAY ~(Few would ever call Gavin handsome, but his face is kind.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ study_face2 
SAY ~(His complexion is fair and a bit sunburned, with a spattering of freckles across his cheeks and forehead.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ study_face3 
SAY ~(The fairness of his skin and the angularity of his features suggest the possibility of Luskan blood somewhere in his ancestry, but his hair and eyes are dark.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ study_face4 
SAY ~(His face seems a little more gaunt than usual, with shadows under his eyes.)~ 
IF ~~ THEN + pid2 
END 

/* Study physique without letting him catch you */ 

IF ~~ study_body1 
SAY ~(Gavin is tall, even for a human, with prominent elbows and knees.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ study_body2 
SAY ~(Nature seems to have intended Gavin to be a heavier man than he is at present. He looks a bit wiry, but he seems healthy enough, and his gait is lively.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ study_body3 
SAY ~(He yawns and stretches, accidentally poking one of his companions.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ study_body4 
SAY ~(As usual, his hair and clothing are clean, but rather disheveled.)~ 
IF ~~ THEN + pid2 
END 

/* Allow him to catch you admiring him */ 

IF ~~ admire1 
SAY ~<CHARNAME>, I... excuse me.~ 
IF ~~ THEN + pid2 
END 

IF ~~ admire2 
SAY ~(He looks around to see who has attracted your attention, then reddens once he realizes that you are looking at him. He turns away, but you cannot help but notice how pleased he looks.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ admire3 
SAY ~(His blush starts on his cheeks, but rapidly expands to include his face, ears, and neck.)~ 
IF ~~ THEN + pid2 
END 

IF ~~ admire4 
SAY ~(He smiles cordially, but surreptitiously checks to be sure that he has fastened all his laces.)~ 
IF ~~ THEN + pid2 
END 

/* Flirt with others in front of Gavin */ 

IF ~~ fwo_gen1 
SAY ~(Gavin shakes his head and turns away.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ fwo_gen2 
SAY ~What odd tastes you have.~ 
IF ~~ THEN EXIT 
END 

IF ~~ fwo_gen3 
SAY ~(Gavin looks baffled, but he says nothing.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ fwo_1ano1 
SAY ~(Gavin sighs dejectedly and turns away.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ fwo_1ano2 
SAY ~<CHARNAME>, here, I think you dropped something.~ 
IF ~~ THEN DO ~GiveItemCreate("b!felsul",Player1,0,0,0)~ EXIT 
END 
END 

CHAIN ~B!GavJ~ fwo_1ano3 
~So, Anomen, how's that rash coming along?~ 
== ANOMENJ ~What rash?~ 
== ~B!GavJ~ ~You know...~ 
== ANOMENJ ~You must be mistaken. My skin is perfectly unblemished.~ 
== ~B!GavJ~ ~Damn. Some people have all the luck.~ 
EXIT 

CHAIN ~B!GavJ~ fwo_1ano4 
~Could I have a word with you, <CHARNAME>?~ 
== ANOMENJ ~She obviously has nothing to say to you, or she would have approached you first.~ 
== ~B!GavJ~ ~(sigh) Aye, true enough.~ 
EXIT 

APPEND ~B!GavJ~ 

IF ~~ fwo_2ano1 
SAY ~(Anomen revels in the attention, but Gavin is obviously seething.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ fwo_2ano2 
SAY ~You and Anomen seem to be rather... close.~ 
IF ~~ THEN EXIT 
END 

IF ~~ fwo_2ano3 
SAY ~(Gavin's face reddens, his hands clench into fists, and he stomps off, muttering to himself.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ fwo_2ano4 
SAY ~(Gavin sweeps you into his arms, tilts your head back, and kisses you passionately... but you cannot help noticing that his eyes remain open and his gaze remains fixed on Anomen.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ fwo_4ano1 
SAY ~So, it's Anomen's turn now, is it?~ 
IF ~~ THEN EXIT 
END 

IF ~~ fwo_4ano2 
SAY ~Here's a hint, <CHARNAME>. All that time he spends polishing his armor? It's a substitute for something else.~ 
IF ~~ THEN EXIT 
END 

IF ~~ fwo_4ano3 
SAY ~(Gavin shrugs and walks away.)~ 
IF ~~ THEN EXIT 
END 

IF ~~ fwo_4ano4 
SAY ~Careful, <CHARNAME>. Anomen takes these things very seriously.~ 
IF ~~ THEN EXIT 
END 
END 

APPEND KELDORJ 

IF ~~ fwo_kel1 
SAY ~This is rather... unseemly.~ 
IF ~~ THEN EXIT 
END 

IF ~~ fwo_kel2 
SAY ~If you are trying to excite jealousy from certain quarters, you might be better off directing your attention elsewhere.~ 
IF ~~ THEN EXIT 
END 
END 

APPEND ~B!GavJ~ 

IF ~~ fwo_kel3 
SAY ~<CHARNAME>, for mercy's sake, leave the poor man alone.~ 
IF ~~ THEN EXIT 
END 
END 

APPEND VALYGARJ 

IF ~~ fwo_val1 
SAY ~I don't know what you're after, <CHARNAME>, but you'll have no luck with me.~ 
IF ~~ THEN EXIT 
END 

IF ~~ fwo_val2 
SAY ~Who's the object of this attention, <CHARNAME>? Gavin or me?~ 
IF ~~ THEN EXIT 
END 
END 

/* Healing stuff */ 
APPEND ~B!GavJ~ 

IF ~~ Heal1a 
SAY ~At once.~ 
IF ~~ THEN DO ~Spell(Player1,CLERIC_CURE_CRITICAL_WOUNDS)~ EXIT 
END 

IF ~~ Heal1b 
SAY ~At once.~ 
IF ~~ THEN DO ~Spell(Player1,CLERIC_CURE_SERIOUS_WOUNDS)~ EXIT 
END 

IF ~~ Heal1c 
SAY ~At once.~ 
IF ~~ THEN DO ~Spell(Player1,CLERIC_CURE_LIGHT_WOUNDS)~ EXIT 
END 


IF ~~ Heal2a 
SAY ~At once.~ 
IF ~~ THEN DO ~Spell(Player2,CLERIC_CURE_CRITICAL_WOUNDS)~ EXIT 
END 

IF ~~ Heal2b 
SAY ~At once.~ 
IF ~~ THEN DO ~Spell(Player2,CLERIC_CURE_SERIOUS_WOUNDS)~ EXIT 
END 

IF ~~ Heal2c 
SAY ~At once.~ 
IF ~~ THEN DO ~Spell(Player2,CLERIC_CURE_LIGHT_WOUNDS)~ EXIT 
END 


IF ~~ Heal3a 
SAY ~At once.~ 
IF ~~ THEN DO ~Spell(Player3,CLERIC_CURE_CRITICAL_WOUNDS)~ EXIT 
END 

IF ~~ Heal3b 
SAY ~At once.~ 
IF ~~ THEN DO ~Spell(Player3,CLERIC_CURE_SERIOUS_WOUNDS)~ EXIT 
END 

IF ~~ Heal3c 
SAY ~At once.~ 
IF ~~ THEN DO ~Spell(Player3,CLERIC_CURE_LIGHT_WOUNDS)~ EXIT 
END 


IF ~~ Heal4a 
SAY ~At once.~ 
IF ~~ THEN DO ~Spell(Player4,CLERIC_CURE_CRITICAL_WOUNDS)~ EXIT 
END 

IF ~~ Heal4b 
SAY ~At once.~ 
IF ~~ THEN DO ~Spell(Player4,CLERIC_CURE_SERIOUS_WOUNDS)~ EXIT 
END 

IF ~~ Heal4c 
SAY ~At once.~ 
IF ~~ THEN DO ~Spell(Player4,CLERIC_CURE_LIGHT_WOUNDS)~ EXIT 
END 


IF ~~ Heal5a 
SAY ~At once.~ 
IF ~~ THEN DO ~Spell(Player5,CLERIC_CURE_CRITICAL_WOUNDS)~ EXIT 
END 

IF ~~ Heal5b 
SAY ~At once.~ 
IF ~~ THEN DO ~Spell(Player5,CLERIC_CURE_SERIOUS_WOUNDS)~ EXIT 
END 

IF ~~ Heal5c 
SAY ~At once.~ 
IF ~~ THEN DO ~Spell(Player5,CLERIC_CURE_LIGHT_WOUNDS)~ EXIT 
END 


IF ~~ Heal6a 
SAY ~At once.~ 
IF ~~ THEN DO ~Spell(Player6,CLERIC_CURE_CRITICAL_WOUNDS)~ EXIT 
END 

IF ~~ Heal6b 
SAY ~At once.~ 
IF ~~ THEN DO ~Spell(Player6,CLERIC_CURE_SERIOUS_WOUNDS)~ EXIT 
END 

IF ~~ Heal6c 
SAY ~At once.~ 
IF ~~ THEN DO ~Spell(Player6,CLERIC_CURE_LIGHT_WOUNDS)~ EXIT 
END 

IF ~~ FamilyNew 
SAY ~You mean my family in Ulgoth's Beard, right? Because you already know about Lanie, and she's the only other family I've got.~ 
++ ~What is Ulgoth's Beard like?~ + UlgothsBeard 
++ ~What are your parents like?~ + Parents 
++ ~How about your brothers and sisters?~ + Siblings 
++ ~Do you miss them?~ + MissFamily 
END 

IF ~~ UlgothsBeard 
SAY ~Ulgoth's Beard is more of a village, really. There aren't even any good roads between it and Baldur's Gate.~ 
= ~It lies half a day north of Baldur's Gate, on the north bank of the Chionthar River, overlooking the coast of the Sea of Swords... and I really do mean overlooking it. The village is at the top of a cliff.~ 
++ ~It's an odd name, though. What's the story behind it?~ + UlgothName 
++ ~What do people do there?~ + UlgothTrades 
++ ~Did you have a lot of friends, growing up?~ + UlgothFriends 
++ ~What made you leave it?~ + LeaveUlgoth 
END 

IF ~~ UlgothName 
SAY ~Ulgoth's Beard is known for its beacon. Whenever potentially hostile ships are sighted on the Sea of Swords, the beacon is lit, and Baldur's Gate gets at least half a day's warning of any potential attacks.~ 
= ~The village got its name because the beacon was said to be so bright that it was said to have singed the whiskers of Ulgoth, a legendary pirate.~ 
IF ~~ THEN + pid2 
END 

IF ~~ UlgothTrades 
SAY ~There isn't much to do there, really. The closest thing it has to a tavern is this one house out on the harbor. The landlord there has it set up as a public house of sorts, so folks go there at the end of the day for a pint of ale and a bit of gossip.~ 
= ~If you're asking what they do for a living, it's about what you would expect in a coastal village. You have fishermen and farmers, and a few craftsmen. My father made sails, though my brother Gordon has mostly taken over the business, now.~ 
IF ~~ THEN + pid2 
END 

IF ~~ UlgothFriends 
SAY ~My younger brother Jolun was probably my closest friend, but there was also Calahan, Hamish, and a few others. Most families in the village had at least a few children, though there were probably only about a dozen families in the village, all told.~ 
IF ~~ THEN + pid2 
END 

IF ~~ LeaveUlgoth 
SAY ~In short, I became a Dawnbringer. In my twelfth summer, my brother Jolun broke his leg in a fall from the cliff, and I was able to stop the bleeding until the village priest could tend it. Since I follow Lathander and the village priest venerated Chauntea, I was sent to study at the Song of the Morning in Beregost.~
IF ~~ THEN + pid2 
END 

IF ~~ Parents 
SAY ~My parents are Darlos and Evie. Dad used to be a sailmaker, but he's getting older and he's mostly deaf, so my brother Gordon runs the business now. My mother is a midwife. She's older, too, of course, but she'd never give that up. She loves babies too much.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Siblings 
SAY ~Well, I've got four, so I hope you're patient. The two oldest, Gordon and Della, settled down. Both have large families, now. Gordon runs my father's sailmaking business and Della keeps the books for him and sells herbs.~ 
= ~My other sister, Reed, became a mage. She's never exactly said that she's an adventurer, but I know she works closely with some paladins. Jolun, my younger brother, is an artist. He's usually in some kind of trouble, so it's probably best not to ask him what he gets up to.~ 
IF ~~ THEN + pid2 
END 

IF ~~ MissFamily 
SAY ~Yes and no. I always enjoy visiting them, but I've got my own life now. It's like that, I guess. I write them when I remember, but that probably isn't as often as my mother would like.~ 
IF ~~ THEN + pid2 
END 

IF ~~ FamilyOld 
SAY ~You mean my family in Ulgoth's Beard? I thought you knew all about them.~ 
++ ~What is Ulgoth's Beard like?~ + UlgothsBeard 
++ ~What are your parents like?~ + Parents 
++ ~How about your brothers and sisters?~ + Siblings 
++ ~Do you miss them?~ + MissFamily 
END 

IF ~~ Lanie 
SAY ~What about Lanie?~ 
+ ~OR(2) Global("B!GavRA","GLOBAL",1) Global("B!GavRA","GLOBAL",2)~ + ~I hate to sound petty, but you give that child altogether too much of your attention.~ + Lanie1 
++ ~When will you need to visit her again?~ + Lanie2 
++ ~I want to reassure myself that your attention is focused on the present task, not back at the Temple of Oghma with her.~ + Lanie3 
++ ~Have you made provisions for her, if something happens to you?~ + Lanie4 
++ ~Sometimes, I wonder if you even know her. You've been separated from her for most of her life.~ + Lanie5 
++ ~You do have options, you know. You could give her over to the temple, and you'd never have to think of her again.~ + Lanie6 
++ ~There are people out there that would pay good gold for a girl like her.~ + Lanie7 
+ ~OR(2) Global("B!GavRA","GLOBAL",1) Global("B!GavRA","GLOBAL",2)~ + ~So much of your heart is given to her, I sometimes wonder if there's room for anyone else.~ + Lanie8 
END 

IF ~~ Lanie1 
SAY ~She's only a child, <CHARNAME>. Her world is small, and contains nothing but parents, teachers, and maybe a few playmates. Taking away any of those things would be cruel.~ 
= ~Don't worry, though. I won't neglect my duties.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Lanie2 
SAY ~I'll let you know when it's time.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Lanie3 
SAY ~I am aware of my obligations, <CHARNAME>... all of them.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Lanie4 
SAY ~If I die, I'd appreciate it if you would tell the monk at the Temple of Oghma, if you could. He knows to send word to my brother Gordon in Ulgoth's Beard. Gordon has a family of his own, and he and his wife would be good foster parents for her.~ 
= ~If you are unable to return, the monks will assume that I am dead if six months go by and I haven't visited or sent other word.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Lanie5 
SAY ~We've been apart for much of the last year, true, but before that, I was still living with her.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Lanie6 
SAY ~No. I would never do that. I could never do that.~ 
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-1)~ EXIT 
END 

IF ~~ Lanie7 
SAY ~How can you even suggest such a thing?! Unthinkable!~ 
IF ~~ THEN DO ~IncrementGlobal("B!GavLove","GLOBAL",-3) IncrementGlobal("B!GavOffend","GLOBAL",1)~ EXIT 
END 

IF ~~ Lanie8 
SAY ~You speak of love like it's a finite thing. It isn't a basket of apples, where giving some to a child leaves less for another.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Miranda 
SAY ~Not my favorite topic of conversation, but go on.~ 
++ ~Are you still in love with her? You seemed very concerned for her wellbeing.~ + Miranda1 
++ ~Do you think she'll be back?~ + Miranda2 
++ ~You should have been more firm with her. You could have forced her to stay and raise Lanie.~ + Miranda3 
++ ~You're too hard on her. I'm sure she wasn't the cruel, unloving parent you made her seem to be.~ + Miranda4 
++ ~All women aren't like her. You do know that, right?~ + Miranda5 
+ ~GlobalGT("CerndBaby","GLOBAL",0)~ + ~What do you think is going to happen to her?~ + Miranda6 
+ ~!GlobalGT("CerndBaby","GLOBAL",0)~ + ~What do you think is going to happen to her?~ + Miranda7 
+ ~Global("B!GavRA","GLOBAL",2)~ + ~I can sympathize with her. I would never want to be burdened with a child.~ + Miranda8 
+ ~!Global("B!GavRA","GLOBAL",2)~ + ~I can sympathize with her. I would never want to be burdened with a child.~ + Miranda9 
++ ~I don't understand how anyone could be so selfish.~ + Miranda10 
END 

IF ~~ Miranda1 
SAY ~I am concerned about her wellbeing. She's the mother of my daughter. I'm not in love with her, but that doesn't mean that I wish her harm.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Miranda2 
SAY ~I don't know. I hope she will, for Lanie's sake, but I don't know what the fates have in store for her.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Miranda3 
SAY ~A resentful person makes a very bad parent. It would be better for Lanie to be raised by just a father than to be raised by a mother who doesn't want her.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Miranda4 
SAY ~No, she wasn't cruel or unloving. There were times when she showed Lanie great affection and tenderness. But Miranda is ambitious, and a bit selfish. I guess the desire to make a better life for herself was stronger than her desire to be a good mother.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Miranda5 
SAY ~I do know that, and I'm glad of it.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Miranda6 
SAY ~I just don't know. After what happened with Cernd and Ahsdale, I'm concerned. Cernd's wife Gaia was driven by some of the same things Miranda is, the desire to find a powerful man to protect her, and in the end, it killed her. I would not want Miranda to share that fate.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Miranda7 
SAY ~I don't know. I hope she finds what she's looking for, but the path she's following is a dangerous one. There are men who would take advantage of a woman with Miranda's ambitions.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Miranda8 
SAY ~That doesn't bode well for our future marriage. If you really feel that way, you'd be better off breaking our engagement, because I'm always going to be a father to Lanie, even if we never have children of our own.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Miranda9 
SAY ~It's good that you know that now, then. You'll just have to make sure you never find yourself in that position.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Miranda10 
SAY ~She wasn't always that selfish, though she was always ambitious. I think you just saw her at her worst, after years of resentment and frustrated dreams made it impossible for her to ignore her own desires any longer.~ 
IF ~~ THEN + pid2 
END 

IF ~~ Hush 
SAY ~I understand. Just let me know when things get calmer.~ 
IF ~~ THEN DO ~SetGlobal("B!GavHush","GLOBAL",1) 
      SetGlobal("B!GavLessInterject","GLOBAL",1)~ EXIT 
END 

IF ~~ NoHush 
SAY ~I'm glad to hear that.~ 
IF ~~ THEN DO ~SetGlobal("B!GavHush","GLOBAL",0) 
      SetGlobal("B!GavLessInterject","GLOBAL",0)~ EXIT 
END 

IF ~~ StringFix 
SAY ~(coughs)~ 
IF ~~ THEN DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("b!gavstr")~ EXIT 
END 

IF ~~ Leave 
SAY ~If that's what you want, I'll be at the Temple of Lathander in Athkatla.~ 
IF ~~ THEN DO ~SetGlobal("B!GavJoin","GLOBAL",0) 
      SetLeavePartyDialogueFile() 
      ChangeAIScript("",DEFAULT) 
      LeaveParty() 
      EscapeAreaMove("AR0902",805,1053,10)~ UNSOLVED_JOURNAL ~Gavin at the Temple of Lathander. 

Gavin has left the group and has gone to the Temple of Lathander in the Temple District.~ EXIT 
END 
END 
