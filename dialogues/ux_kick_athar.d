BEGIN uxathp


IF ~Global("ux_in_party_athar", "LOCALS", 1)~ THEN BEGIN label_61
  SAY @333052
  ++  @333053 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 0)~   + label_59
  ++  @333063 DO ~JoinParty()~   + label_60
END

IF ~~ THEN BEGIN label_60
  SAY @333054
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_59
  SAY @333027
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_athar", "LOCALS", 0)~ THEN BEGIN label_64
  SAY @333056
  ++  @333064 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 1) JoinParty()~   + label_62
  ++ @333060 + label_63
END

IF ~~ THEN BEGIN label_63
  SAY @333059
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_62
  SAY @333057
  IF ~~ THEN EXIT
END