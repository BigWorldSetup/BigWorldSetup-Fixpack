
REPLACE_TRANS_ACTION YAGA01 // target DLG file name
BEGIN 5 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one; zero is first)
// list of change pairs
  ~SetGlobalTimer("YagaReturnTimer","AR5203",15)~          // original action
  ~SetGlobalTimer("YagaReturnTimer","AR5203",100)/* BP */~ // replacement
// REPLACE_TRANS_ACTION

/*
 * Original dialogue:
 *
IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #66167 // ~Yaga-Shura cannot be defeated!!  Men...men, destroy them!  Rip the hearts from their chests and make them suffer!!  I will return with reinforcements!~ [YAGA13]
  IF ~~ THEN DO ~SetGlobal("YagaShuraHeart","GLOBAL",3)
SetGlobalTimer("YagaReturnTimer","AR5203",15)
CreateVisualEffectObject("ICFIRSDI",Myself)
DisplayStringHead(Myself,46150)
EscapeArea()
~ EXIT
END
*/
