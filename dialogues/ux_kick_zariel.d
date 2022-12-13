BEGIN uxzarp


IF ~Global("ux_in_party_zariel", "LOCALS", 1)~ THEN BEGIN label_50
  SAY @000044
  ++  @000045 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 0)~   + label_48
  ++  @000047 DO ~JoinParty()~   + label_49
END

IF ~~ THEN BEGIN label_49
  SAY @000046
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_48
  SAY @000016
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_zariel", "LOCALS", 0)~ THEN BEGIN label_53
  SAY @000048
  ++  @000050 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 1) JoinParty()~   + label_51
  ++ @000052 + label_52
END

IF ~~ THEN BEGIN label_52
  SAY @000051
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_51
  SAY @000049
  IF ~~ THEN EXIT
END