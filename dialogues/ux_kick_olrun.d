BEGIN uxolrp


IF ~Global("ux_in_party_olrun", "LOCALS", 1)~ THEN BEGIN label_68
  SAY @333051
  ++  @333052 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 0)~   + label_66
  ++  @333064 DO ~JoinParty()~   + label_67
END

IF ~~ THEN BEGIN label_67
  SAY @333053
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_66
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_olrun", "LOCALS", 0)~ THEN BEGIN label_71
  SAY @333055
  ++  @333065 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 1) JoinParty()~   + label_69
  ++ @333059 + label_70
END

IF ~~ THEN BEGIN label_70
  SAY @333058
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_69
  SAY @333056
  IF ~~ THEN EXIT
END