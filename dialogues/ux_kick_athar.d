BEGIN uxathp


IF ~Global("ux_in_party_athar", "LOCALS", 1)~ THEN BEGIN label_62
  SAY @000044
  ++  @000045 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 0)~   + label_60
  ++  @000055 DO ~JoinParty()~   + label_61
END

IF ~~ THEN BEGIN label_61
  SAY @000046
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_60
  SAY @000016
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_athar", "LOCALS", 0)~ THEN BEGIN label_65
  SAY @000048
  ++  @000056 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 1) JoinParty()~   + label_63
  ++ @000052 + label_64
END

IF ~~ THEN BEGIN label_64
  SAY @000051
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_63
  SAY @000049
  IF ~~ THEN EXIT
END