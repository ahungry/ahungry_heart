BEGIN uxolrp


IF ~Global("ux_in_party_uxolr", "GLOBAL", 1)~ THEN BEGIN label_79
  SAY @000044
  ++  @000045 DO ~SetGlobal("ux_in_party_uxolr", "GLOBAL", 0)~   + label_77
  ++  @000057 DO ~JoinParty()~   + label_78
END

IF ~~ THEN BEGIN label_78
  SAY @000046
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_77
  SAY @000016
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_uxolr", "GLOBAL", 0)~ THEN BEGIN label_82
  SAY @000048
  ++  @000058 DO ~SetGlobal("ux_in_party_uxolr", "GLOBAL", 1) JoinParty()~   + label_80
  ++ @000052 + label_81
END

IF ~~ THEN BEGIN label_81
  SAY @000051
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_80
  SAY @000049
  IF ~~ THEN EXIT
END