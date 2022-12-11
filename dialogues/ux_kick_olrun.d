BEGIN uxolrp


IF ~Global("ux_in_party_olrun", "LOCALS", 1)~ THEN BEGIN label_67
  SAY @333052
  ++  @333053 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 0)~   + label_65
  ++  @333065 DO ~JoinParty()~   + label_66
END

IF ~~ THEN BEGIN label_66
  SAY @333054
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_65
  SAY @333027
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_olrun", "LOCALS", 0)~ THEN BEGIN label_70
  SAY @333056
  ++  @333066 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 1) JoinParty()~   + label_68
  ++ @333060 + label_69
END

IF ~~ THEN BEGIN label_69
  SAY @333059
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_68
  SAY @333057
  IF ~~ THEN EXIT
END