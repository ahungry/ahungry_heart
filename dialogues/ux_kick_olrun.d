BEGIN uxolrp


IF ~Global("ux_in_party_olrun", "LOCALS", 1)~ THEN BEGIN label_68
  SAY @333050
  ++  @333051 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 0)~   + label_66
  ++  @333063 DO ~JoinParty()~   + label_67
END

IF ~~ THEN BEGIN label_67
  SAY @333052
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_66
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_olrun", "LOCALS", 0)~ THEN BEGIN label_71
  SAY @333054
  ++  @333064 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 1) JoinParty()~   + label_69
  ++ @333058 + label_70
END

IF ~~ THEN BEGIN label_70
  SAY @333057
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_69
  SAY @333055
  IF ~~ THEN EXIT
END