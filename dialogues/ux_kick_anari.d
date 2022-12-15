BEGIN uxanap


IF ~GlobalGT("ux_state", "GLOBAL", 50) Global("ux_in_party_uxana", "GLOBAL", 1)~ THEN BEGIN label_90
  SAY @000044
  ++  @000045 DO ~SetGlobal("ux_in_party_uxana", "GLOBAL", 0)~   + label_88
  ++  @000059 DO ~JoinParty()~   + label_89
END

IF ~~ THEN BEGIN label_89
  SAY @000046
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_88
  SAY @000016
  IF ~~ THEN EXIT
END

IF ~GlobalGT("ux_state", "GLOBAL", 50) Global("ux_in_party_uxana", "GLOBAL", 0)~ THEN BEGIN label_93
  SAY @000048
  ++  @000060 DO ~SetGlobal("ux_in_party_uxana", "GLOBAL", 1) JoinParty()~   + label_91
  ++ @000052 + label_92
END

IF ~~ THEN BEGIN label_92
  SAY @000051
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_91
  SAY @000049
  IF ~~ THEN EXIT
END