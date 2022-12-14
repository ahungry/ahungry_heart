BEGIN uxzarp


IF ~Global("ux_in_party_uxzar", "GLOBAL", 1)~ THEN BEGIN label_61
  SAY @000044
  ++  @000045 DO ~SetGlobal("ux_in_party_uxzar", "GLOBAL", 0)~   + label_59
  ++  @000047 DO ~JoinParty()~   + label_60
END

IF ~~ THEN BEGIN label_60
  SAY @000046
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_59
  SAY @000016
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_uxzar", "GLOBAL", 0)~ THEN BEGIN label_64
  SAY @000048
  ++  @000050 DO ~SetGlobal("ux_in_party_uxzar", "GLOBAL", 1) JoinParty()~   + label_62
  ++ @000052 + label_63
END

IF ~~ THEN BEGIN label_63
  SAY @000051
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_62
  SAY @000049
  IF ~~ THEN EXIT
END