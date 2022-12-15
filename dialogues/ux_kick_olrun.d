BEGIN uxolrp


IF ~GlobalGT("ux_state", "GLOBAL", 50) Global("ux_in_party_uxolr", "GLOBAL", 1)~ THEN BEGIN label_83
  SAY @000044
  ++  @000045 DO ~SetGlobal("ux_in_party_uxolr", "GLOBAL", 0)~   + label_81
  ++  @000057 DO ~JoinParty()~   + label_82
END

IF ~~ THEN BEGIN label_82
  SAY @000046
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_81
  SAY @000016
  IF ~~ THEN EXIT
END

IF ~GlobalGT("ux_state", "GLOBAL", 50) Global("ux_in_party_uxolr", "GLOBAL", 0)~ THEN BEGIN label_86
  SAY @000048
  ++  @000058 DO ~SetGlobal("ux_in_party_uxolr", "GLOBAL", 1) JoinParty()~   + label_84
  ++ @000052 + label_85
END

IF ~~ THEN BEGIN label_85
  SAY @000051
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_84
  SAY @000049
  IF ~~ THEN EXIT
END