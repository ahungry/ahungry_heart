BEGIN uxolrp


IF ~Global("ux_in_party_olrun", "LOCALS", 1)~ THEN BEGIN label_72
  SAY @000044
  ++  @000045 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 0)~   + label_70
  ++  @000057 DO ~JoinParty()~   + label_71
END

IF ~~ THEN BEGIN label_71
  SAY @000046
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_70
  SAY @000016
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_olrun", "LOCALS", 0)~ THEN BEGIN label_75
  SAY @000048
  ++  @000058 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 1) JoinParty()~   + label_73
  ++ @000052 + label_74
END

IF ~~ THEN BEGIN label_74
  SAY @000051
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_73
  SAY @000049
  IF ~~ THEN EXIT
END