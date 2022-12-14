BEGIN uxanap


IF ~Global("ux_in_party_anari", "LOCALS", 1)~ THEN BEGIN label_78
  SAY @000044
  ++  @000045 DO ~SetGlobal("ux_in_party_anari", "LOCALS", 0)~   + label_76
  ++  @000059 DO ~JoinParty()~   + label_77
END

IF ~~ THEN BEGIN label_77
  SAY @000046
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_76
  SAY @000016
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_anari", "LOCALS", 0)~ THEN BEGIN label_81
  SAY @000048
  ++  @000060 DO ~SetGlobal("ux_in_party_anari", "LOCALS", 1) JoinParty()~   + label_79
  ++ @000052 + label_80
END

IF ~~ THEN BEGIN label_80
  SAY @000051
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_79
  SAY @000049
  IF ~~ THEN EXIT
END