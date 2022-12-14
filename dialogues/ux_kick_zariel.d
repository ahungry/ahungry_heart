BEGIN uxzarp


IF ~Global("ux_in_party_zariel", "LOCALS", 1)~ THEN BEGIN label_54
  SAY @000044
  ++  @000045 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 0)~   + label_52
  ++  @000047 DO ~JoinParty()~   + label_53
END

IF ~~ THEN BEGIN label_53
  SAY @000046
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_52
  SAY @000016
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_zariel", "LOCALS", 0)~ THEN BEGIN label_57
  SAY @000048
  ++  @000050 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 1) JoinParty()~   + label_55
  ++ @000052 + label_56
END

IF ~~ THEN BEGIN label_56
  SAY @000051
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_55
  SAY @000049
  IF ~~ THEN EXIT
END