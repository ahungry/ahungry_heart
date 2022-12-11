BEGIN uxzarp


IF ~Global("ux_in_party_zariel", "LOCALS", 1)~ THEN BEGIN label_49
  SAY @333052
  ++  @333053 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 0)~   + label_47
  ++  @333055 DO ~JoinParty()~   + label_48
END

IF ~~ THEN BEGIN label_48
  SAY @333054
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_47
  SAY @333027
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_zariel", "LOCALS", 0)~ THEN BEGIN label_52
  SAY @333056
  ++  @333058 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 1) JoinParty()~   + label_50
  ++ @333060 + label_51
END

IF ~~ THEN BEGIN label_51
  SAY @333059
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_50
  SAY @333057
  IF ~~ THEN EXIT
END