BEGIN uxvoip


IF ~Global("ux_in_party_voice", "LOCALS", 1)~ THEN BEGIN label_56
  SAY @000044
  ++  @000045 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 0)~   + label_54
  ++  @000053 DO ~JoinParty()~   + label_55
END

IF ~~ THEN BEGIN label_55
  SAY @000046
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_54
  SAY @000016
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_voice", "LOCALS", 0)~ THEN BEGIN label_59
  SAY @000048
  ++  @000054 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 1) JoinParty()~   + label_57
  ++ @000052 + label_58
END

IF ~~ THEN BEGIN label_58
  SAY @000051
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_57
  SAY @000049
  IF ~~ THEN EXIT
END