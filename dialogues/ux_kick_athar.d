BEGIN uxathp


IF ~Global("ux_in_party_uxath", "GLOBAL", 1)~ THEN BEGIN label_73
  SAY @000044
  ++  @000045 DO ~SetGlobal("ux_in_party_uxath", "GLOBAL", 0)~   + label_71
  ++  @000055 DO ~JoinParty()~   + label_72
END

IF ~~ THEN BEGIN label_72
  SAY @000046
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_71
  SAY @000016
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_uxath", "GLOBAL", 0)~ THEN BEGIN label_76
  SAY @000048
  ++  @000056 DO ~SetGlobal("ux_in_party_uxath", "GLOBAL", 1) JoinParty()~   + label_74
  ++ @000052 + label_75
END

IF ~~ THEN BEGIN label_75
  SAY @000051
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_74
  SAY @000049
  IF ~~ THEN EXIT
END