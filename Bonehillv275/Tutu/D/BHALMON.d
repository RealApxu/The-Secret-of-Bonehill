BEGIN ~BHALMON~

IF ~OR(2)
NumberOfTimesTalkedTo(0)
GlobalLT("BHAlmonCheckQual","GLOBAL",2)
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~GlobalLT("BHAlmonSpokeOfPhaulkon","GLOBAL",1)
~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~Global("BHQualtonIll","GLOBAL",1)
~ THEN REPLY @5 GOTO 6
END

IF ~~ THEN BEGIN 1
  SAY @6
  IF ~~ THEN DO ~StartStore("BHCleric",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @7
  IF ~~ THEN DO ~SetGlobal("BHAlmonSpokeOfPhaulkon","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY @8 DO ~SetGlobal("BHAlmonSpokeOfPhaulkon","GLOBAL",1)
~ GOTO 4
  IF ~IfValidForPartyDialogue("Minsc")
~ THEN DO ~SetGlobal("BHAlmonSpokeOfPhaulkon","GLOBAL",1)
~ EXTERN ~_MINSCJ~ CLERICMINSC1
END

IF ~~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 1
END

IF ~~ THEN BEGIN 4
  SAY @11
  IF ~~ THEN EXIT
END

IF ~Global("BHAlmonCheckQual","GLOBAL",2)
~ THEN BEGIN 5
  SAY @12
  IF ~~ THEN DO ~SetGlobal("BHAlmonCheckQual","GLOBAL",3)
~ GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN DO ~SetGlobal("BHAlmonCheckQual","GLOBAL",1)
SetGlobal("BHQualtonIll","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @14
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~!NumberOfTimesTalkedTo(0)
~ THEN BEGIN 8
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
  IF ~~ THEN REPLY @4 GOTO 4
END

IF ~Dead("BHQUAL")
~ THEN BEGIN 9
  SAY @15
  IF ~~ THEN REPLY @16 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @17
  IF ~PartyHasItem("BHNOTE1")
~ THEN REPLY @18 GOTO 11
  IF ~~ THEN REPLY @19 GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @20
  IF ~~ THEN REPLY @21 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @22
  IF ~~ THEN REPLY @21 EXIT
END

APPEND ~_MINSCJ~

IF ~~ THEN BEGIN CLERICMINSC1
  SAY @23 
  IF ~~ THEN EXTERN ~BHALMON~ 3
END

END

