BEGIN uxolrp


IF ~Global("ux_in_party_olrun", "LOCALS", 1)~ THEN BEGIN label_67
  SAY @333048
  ++  @333049 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 0)~   + label_65
  ++  @333061 DO ~JoinParty()~   + label_66
END

IF ~~ THEN BEGIN label_66
  SAY @333050
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_65
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_olrun", "LOCALS", 0)~ THEN BEGIN label_70
  SAY @333052
  ++  @333062 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 1) JoinParty()~   + label_68
  ++ @333056 + label_69
END

IF ~~ THEN BEGIN label_69
  SAY @333055
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_68
  SAY @333053
  IF ~~ THEN EXIT
END