
REPLACE_TRANS_ACTION GROMNIR // target DLG file name
BEGIN 7 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one; zero is first)
// list of change pairs
  ~ActionOverride("gromg03",Shout(151))~ // replace original action - ALERT_151 in SHOUTIDS.IDS
  //begin replacement
~ActionOverride("gromg03",Shout(125))/* BP */
SetGlobalTimer("reinfg","GLOBAL",10)/* BP */
ActionOverride("gromg05",Enemy())/* BP */
ActionOverride("gromg08",Enemy())/* BP */
ActionOverride("gromg09",Enemy())/* BP */
ActionOverride("gromg10",Enemy())/* BP */~
  // end replacement
// REPLACE_TRANS_ACTION

/*
 * Original dialogue:
 *
IF ~NumTimesTalkedTo(0)
~ THEN BEGIN 7 // from:
  SAY #65079 // ~So the assassin is here!  Ha ha!  <CHARNAME> has come to kill Gromnir, eh?  HAH!!  Good fun!~ [GROM13]
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
EraseJournalEntry(64995)
EraseJournalEntry(65001)
EraseJournalEntry(65003)
Enemy()
CreateCreature("GROMG03",[781.596],4)
CreateCreature("GROMG09",[832.609],4)
CreateCreature("GROMG10",[778.636],4)
EndCutSceneMode()
ActionOverride("gromg03",Shout(151))
ActionOverride("gromg03",Enemy())
Shout(151)
~ SOLVED_JOURNAL #65062 // ~Dealing With Gromnir

I managed to get into the castle, finally, and encountered the mad General.
Whatever chance there might have been for a peaceful resolution was dashed as soon as I met Gromnir...he was obviously as mad as Melissan claimed.
Regardless, he is dead now and his tyranny and his rampaging men will no longer be a problem for Saradush.
There is, of course, still the problem of Yaga-Shura's army around the city...~ EXIT
END
*/
