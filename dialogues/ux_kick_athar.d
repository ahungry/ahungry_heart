BEGIN uxathp


IF ~Global("ux_in_party_athar", "LOCALS", 1)~ THEN BEGIN label_61
  SAY @333048
  ++  @333049 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 0)~   + label_59
  ++  @333059 DO ~JoinParty()~   + label_60
END

IF ~~ THEN BEGIN label_60
  SAY @333050
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_59
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_athar", "LOCALS", 0)~ THEN BEGIN label_64
  SAY @333052
  ++  @333060 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 1) JoinParty()~   + label_62
  ++ @333056 + label_63
END

IF ~~ THEN BEGIN label_63
  SAY @333055
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_62
  SAY @333053
  IF ~~ THEN EXIT
END