BEGIN uxathp


IF ~Global("ux_in_party_athar", "LOCALS", 1)~ THEN BEGIN label_62
  SAY @333050
  ++  @333051 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 0)~   + label_60
  ++  @333061 DO ~JoinParty()~   + label_61
END

IF ~~ THEN BEGIN label_61
  SAY @333052
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_60
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_athar", "LOCALS", 0)~ THEN BEGIN label_65
  SAY @333054
  ++  @333062 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 1) JoinParty()~   + label_63
  ++ @333058 + label_64
END

IF ~~ THEN BEGIN label_64
  SAY @333057
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_63
  SAY @333055
  IF ~~ THEN EXIT
END