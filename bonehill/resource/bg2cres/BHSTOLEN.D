BEGIN BHSTOLEN

IF ~RandomNum(3,1)~ THEN BEGIN 0 // from:
  SAY @809
  IF ~~ THEN DO ~ReputationInc(-2) Enemy()~ EXIT
END

IF ~RandomNum(3,2)~ THEN BEGIN 1 // from:
  SAY @810
  IF ~~ THEN DO ~ReputationInc(-2) Enemy()~ EXIT
END

IF ~RandomNum(3,3)~ THEN BEGIN 2 // from:
  SAY @811
  IF ~~ THEN DO ~ReputationInc(-2) Enemy()~ EXIT
END