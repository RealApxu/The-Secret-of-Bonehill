BEGIN ~BHBESS~

IF ~True()
~ THEN BEGIN 0
  SAY @1
  IF ~GlobalLT("BHTalkedToBess","Global",1)
~ THEN REPLY @2 GOTO 1
  IF ~Global("BHWaterMonsters","GLOBAL",1)
Global("BHTalkedToBess","GLOBAL",1)
Dead("BHLIZKNG")
~ THEN REPLY @3 GOTO 7
  IF ~!NumberOfTimesTalkedTo(0)
~ THEN REPLY @4 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @5
  IF ~~ THEN REPLY @6 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @11
  IF ~~ THEN REPLY @12 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @13
  IF ~~ THEN REPLY @14 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @15
  IF ~~ THEN REPLY @17 DO ~SetGlobal("BHTalkedToBess","GLOBAL",1)
SetGlobal("BHWaterMonsters","GLOBAL",1)
~ UNSOLVED_JOURNAL @16 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @18
  IF ~~ THEN REPLY @19 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @22
  IF ~~ THEN DO ~SetGlobal("BHTalkedToBess","GLOBAL",2)
AddExperienceParty(1000)
~ EXIT
END
