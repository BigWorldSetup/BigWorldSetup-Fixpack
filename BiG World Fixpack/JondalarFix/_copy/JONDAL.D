ADD_STATE_TRIGGER JONDAL 0 ~Global("JonHit","GLOBAL",0)~

ADD_STATE_TRIGGER JONDAL 3 ~NumTimesTalkedTo(1)~
  
REPLACE_ACTION_TEXT JONDAL ~EscapeArea()~ ~EscapeAreaDestroy(90)~

APPEND JONDAL
  IF ~NumberOfTimesTalkedTo(0)
	  Global("JonHit","GLOBAL",1)~ THEN BEGIN 4 SAY ~I was going to teach you a thing or two about fighting, but I see you are rather handy with that weapon already.  You should go talk to the Gatewarden if you want some experience in fighting with a group of people.  You can find him just south of here.  Out there it can be pretty important to know how to fight with allies at your side.~
  IF ~~ THEN DO ~SetGlobal("JonHit","GLOBAL",2)
				 ChangeEnemyAlly(Myself,NEUTRAL)
				 ChangeEnemyAlly("Erik",NEUTRAL)
				 ClearAllActions()
				 ActionOverride("Erik",EscapeAreaDestroy(90))
				 EscapeAreaDestroy(90)~ EXIT
  END
END