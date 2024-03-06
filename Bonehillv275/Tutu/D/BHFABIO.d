BEGIN ~BHFABIO~

IF ~NumberOfTimesTalkedTo(0)
AreaCheck("BH0107")
~ THEN BEGIN 0
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("BHFabioWench","GLOBAL",1)
~ EXTERN ~BHTWEN01~ 3
  IF ~~ THEN REPLY @5 GOTO 2
  IF ~IfValidForPartyDialogue("GARRICK")
~ THEN EXTERN ~_GARRIJ~ FABGAR1
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN EXTERN ~BHTWEN01~ 3
END

IF ~~ THEN BEGIN 3
  SAY @7
  IF ~~ THEN REPLY @8 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @11
  IF ~IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~_IMOEN2~ FABIOCANDLE
  IF ~~ THEN REPLY @12 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @13
  IF ~~ THEN REPLY @14 DO ~SetGlobal("BHFabJoinedOnce","GLOBAL",1)
JoinParty()
~ EXIT
  IF ~~ THEN REPLY @15 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @16
  IF ~~ THEN REPLY @17 GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @18
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @19
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @20
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @21
  IF ~~ THEN REPLY @22 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @23
  IF ~IfValidForPartyDialogue("Dynaheir")
~ THEN EXTERN ~_DYNAHJ~ FABDYNA1
  IF ~IfValidForPartyDialogue("MINSC")
GlobalLT("BHWillard1","BH0107",1)
~ THEN REPLY @24 GOTO 23
  IF ~OR(2)
!IfValidForPartyDialogue("MINSC")
Global("BHWillard1","BH0107",1)
~ THEN REPLY @25 EXIT
END

IF ~NumberOfTimesTalkedTo(1)
AreaCheck("BH0107")
OR(6)
IfValidForPartyDialogue("Imoen2")
IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Sharteel")
IfValidForPartyDialogue("Dynaheir")
IfValidForPartyDialogue("Safana")
IfValidForPartyDialogue("Branwen")
~ THEN BEGIN 13
  SAY @26
  IF ~~ THEN GOTO 16
END

IF ~NumberOfTimesTalkedTo(1)
AreaCheck("BH0107")
!IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Dynaheir")
!IfValidForPartyDialogue("Sharteel")
!IfValidForPartyDialogue("Safana")
!IfValidForPartyDialogue("Branwen")
~ THEN BEGIN 14
  SAY @27
  IF ~~ THEN REPLY @28 GOTO 3
  IF ~IfValidForPartyDialogue("GARRICK")
~ THEN EXTERN ~_GARRIJ~ FABGAR2
END

IF ~NumTimesTalkedToGT(1)
AreaCheck("BH0107")
~ THEN BEGIN 15
  SAY @29
  IF ~~ THEN REPLY @30 DO ~SetGlobal("BHFabJoinedOnce","GLOBAL",1)
JoinParty()
~ EXIT
  IF ~~ THEN REPLY @31 GOTO 7
  IF ~PartyHasItem("BHGHANDN")
~ THEN REPLY @32 GOTO 25
  IF ~OR(2)
PartyHasItem("BHGHANDN")
GlobalGT("BHHandQuest","GLOBAL",2)
~ THEN REPLY @33 GOTO 28
END

IF ~~ THEN BEGIN 16
  SAY @34
  IF ~IfValidForPartyDialogue("Sharteel")
~ THEN EXTERN ~_SHARTJ~ FLIRTSHART
  IF ~IfValidForPartyDialogue("Branwen")
~ THEN EXTERN ~_BRANWJ~ FLIRTBRANW
  IF ~IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~_JAHEIJ~ FLIRTJAHE
  IF ~IfValidForPartyDialogue("Dynaheir")
~ THEN EXTERN ~_DYNAHJ~ FLIRTDYNA
  IF ~IfValidForPartyDialogue("Safana")
~ THEN EXTERN ~_SAFANJ~ FLIRTSAFAN
  IF ~IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~_IMOEN2~ FLIRTIMOEN
END

IF ~~ THEN BEGIN 17
  SAY @35
  IF ~~ THEN REPLY @36 GOTO 18
  IF ~~ THEN REPLY @37 EXIT
  IF ~~ THEN REPLY @38 EXIT
  IF ~~ THEN REPLY @39 EXIT
  IF ~~ THEN REPLY @40 EXIT
  IF ~~ THEN REPLY @41 EXIT
  IF ~~ THEN REPLY @42 EXIT
  IF ~~ THEN REPLY @43 EXIT
  IF ~~ THEN REPLY @44 EXIT
  IF ~~ THEN REPLY @45 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @46
  IF ~~ THEN REPLY @47 GOTO 19
  IF ~~ THEN REPLY @48 EXIT
  IF ~~ THEN REPLY @49 EXIT
  IF ~~ THEN REPLY @50 EXIT
  IF ~~ THEN REPLY @51 EXIT
  IF ~~ THEN REPLY @52 EXIT
  IF ~~ THEN REPLY @53 EXIT
  IF ~~ THEN REPLY @54 EXIT
  IF ~~ THEN REPLY @55 EXIT
  IF ~~ THEN REPLY @56 EXIT
  IF ~~ THEN REPLY @57 EXIT
  IF ~~ THEN REPLY @58 EXIT
  IF ~~ THEN REPLY @59 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @60
  IF ~~ THEN REPLY @61 EXIT
  IF ~~ THEN REPLY @62 EXIT
  IF ~~ THEN REPLY @63 EXIT
  IF ~~ THEN REPLY @64 EXIT
  IF ~~ THEN REPLY @65 EXIT
  IF ~~ THEN REPLY @66 EXIT
  IF ~~ THEN REPLY @67 EXIT
  IF ~~ THEN REPLY @68 EXIT
  IF ~~ THEN REPLY @69 EXIT
  IF ~~ THEN REPLY @70 EXIT
  IF ~~ THEN REPLY @71 EXIT
  IF ~~ THEN REPLY @72 EXIT
  IF ~~ THEN REPLY @73 EXIT
  IF ~~ THEN REPLY @74 EXIT
  IF ~~ THEN REPLY @75 EXIT
  IF ~~ THEN REPLY @76 EXIT
  IF ~~ THEN REPLY @77 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @78
  IF ~~ THEN REPLY @5 GOTO 2
END

IF ~~ THEN BEGIN 21
  SAY @79
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @80
  IF ~~ THEN EXTERN ~_MINSCJ~ FABMINGAR
END

IF ~IfValidForPartyDialogue("MINSC")
AreaCheck("BH0107")
~ THEN BEGIN 23
  SAY @81
  IF ~~ THEN EXTERN ~_MINSCJ~ FABIOMIN
END

IF ~~ THEN BEGIN 24
  SAY @82
  IF ~~ THEN DO ~SetGlobal("BHWillard1","BH0107",1)
~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY @83
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @84
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @85
  IF ~~ THEN REPLY @86 GOTO 30
END

IF ~~ THEN BEGIN 28
  SAY @87
  IF ~~ THEN REPLY @88 GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @89
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 30
  SAY @90
  IF ~~ THEN JOURNAL @91 EXIT
END

IF ~~ THEN BEGIN 31
  SAY @92
  IF ~~ THEN EXTERN ~BHTWEN01~ 4
END

IF ~AreaCheck("FW2626") Global("BHToldOfDeath","GLOBAL",1)~ THEN BEGIN 32
  SAY @93
  IF ~~ THEN REPLY @94 GOTO 33
  IF ~~ THEN REPLY @95 GOTO 34
END

IF ~~ THEN BEGIN 33
  SAY @96
  IF ~~ THEN REPLY @97 DO ~SetGlobal("BHToldOfDeath","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("BHCUTBAR")
~ EXIT
  IF ~~ THEN REPLY @98 GOTO 35
END

IF ~~ THEN BEGIN 34
  SAY @99
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 35
  SAY @100
  IF ~~ THEN REPLY @101 GOTO 36
  IF ~~ THEN REPLY @102 GOTO 37
END

IF ~~ THEN BEGIN 36
  SAY @103
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 37
  SAY @104
  IF ~~ THEN REPLY @105 DO ~SetGlobal("BHToldOfDeath","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("BHCUTBAR")
~ EXIT
END

IF ~Global("BHToldOfDeath","GLOBAL",3) AreaCheck("FW2626")~ THEN BEGIN 38
  SAY @106
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @107
  IF ~~ THEN REPLY @28 DO ~SetGlobal("BHToldOfDeath","GLOBAL",4)
~ EXIT
  IF ~~ THEN REPLY @108 GOTO 36
END

IF ~Global("BHToldOfDeath","GLOBAL",6)
~ THEN BEGIN 40
  SAY @109
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY @110
  IF ~~ THEN DO ~SetGlobal("BHFabToldBar","GLOBAL",1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @111
  IF ~~ THEN REPLY @112 GOTO 47
  IF ~~ THEN REPLY @113 DO ~SetGlobal("BHToldOfDeath","GLOBAL",7)
SetGlobal("IWasKickedOut","LOCALS",0)
SetGlobal("BHFabJoinedOnce","GLOBAL",1)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 43
  SAY @114
  IF ~~ THEN EXTERN ~BHPELL~ 55
END

IF ~~ THEN BEGIN 44
  SAY @115
  IF ~~ THEN EXTERN ~BHPELL~ 60
END

IF ~AreaCheck("BH0500")
Global("BHToldOfDeath","GLOBAL",6)
~ THEN BEGIN 45
  SAY @116
  IF ~~ THEN REPLY @117 GOTO 46
  IF ~~ THEN REPLY @118 DO ~SetGlobal("BHToldOfDeath","GLOBAL",7)
SetGlobal("IWasKickedOut","LOCALS",0)
SetGlobal("BHFabJoinedOnce","GLOBAL",1)
JoinParty()
~ EXIT
END

IF ~~ THEN BEGIN 46
  SAY @119
  IF ~~ THEN DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 47
  SAY @120
  IF ~~ THEN DO ~SetGlobal("BHToldOfDeath","GLOBAL",7)
EscapeArea()
~ EXIT
END


APPEND ~_IMOEN2~

IF ~~ THEN BEGIN FLIRTIMOEN 
  SAY @121 
  IF ~~ THEN EXTERN ~BHFABIO~ 3
END

IF ~~ THEN BEGIN FABIOCANDLE 
  SAY @122 
  IF ~~ THEN EXTERN ~BHFABIO~ 6
END

END

APPEND ~_GARRIJ~

IF ~~ THEN BEGIN FABGAR1 
  SAY @123 
  IF ~~ THEN EXTERN ~BHFABIO~ 20
END

IF ~~ THEN BEGIN FABGAR2 
  SAY @124 
  IF ~~ THEN EXTERN ~BHFABIO~ 21
END

IF ~~ THEN BEGIN FABMINGAR2 
  SAY @125 
  IF ~~ THEN DO ~ActionOverride("GARRICK",RandomWalk())~ EXIT
END

END

APPEND ~_DYNAHJ~

IF ~~ THEN BEGIN FLIRTDYNA 
  SAY @126 
  IF ~~ THEN EXTERN ~BHFABIO~ 3
END

IF ~~ THEN BEGIN FABDYNA1 
  SAY @127 
  IF ~~ THEN EXIT
END

END

APPEND ~_SAFANJ~

IF ~~ THEN BEGIN FLIRTSAFAN 
  SAY @128 
  IF ~~ THEN EXTERN ~BHFABIO~ 3
END

END

APPEND ~_JAHEIJ~

IF ~~ THEN BEGIN FLIRTJAHE 
  SAY @129 
  IF ~~ THEN EXTERN ~BHFABIO~ 3
END

END

APPEND ~_SHARTJ~

IF ~~ THEN BEGIN FLIRTSHART 
  SAY @130 
  IF ~~ THEN EXTERN ~BHFABIO~ 3
END

END

APPEND ~_BRANWJ~

IF ~~ THEN BEGIN FLIRTBRANW 
  SAY @131 
  IF ~~ THEN EXTERN ~BHFABIO~ 3
END

END

APPEND ~_MINSCJ~

IF ~~ THEN BEGIN FABIOMIN 
  SAY @132 
  IF ~~ THEN EXTERN ~BHFABIO~ 24
END

IF ~~ THEN BEGIN FABMINGAR 
  SAY @133 
  IF ~~ THEN EXTERN ~_GARRIJ~ FABMINGAR2
END

END

