
REPLACE_TRANS_ACTION ILLASERA // target DLG file name
BEGIN 8 END // state number (can be more than one)
BEGIN 0 END // transition number (can be more than one; zero is first)
// list of change pairs
  ~Enemy()~ // keep original action - used to find append position
  // begin replacement
~Enemy()
ActionOverride("zilmag01",Enemy())/* BP */
ActionOverride("zilarc01",Enemy())/* BP */
ActionOverride("zilfgt01",Enemy())/* BP */
ActionOverride("zilfgt01",Enemy())/* BP */~
  // end replacement
  IF  ~SetGlobal("IllaseraHostile","GLOBAL",1)~  // safety check for original action
// REPLACE_TRANS_ACTION

/*
 * Original dialogue:
 *
IF ~~ THEN BEGIN 8 // from: 6.3 6.2 6.1 6.0
  SAY #63987 // ~We shall see, <CHARNAME>.  ~ [ILLASE12]
  IF ~~ THEN DO ~SetGlobal("IllaseraHostile","GLOBAL",1)
Enemy()~ EXIT
END
*/
