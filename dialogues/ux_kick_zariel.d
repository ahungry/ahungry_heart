BEGIN uxzarp


IF ~Global("ux_in_party_zariel", "LOCALS", 1)~ THEN BEGIN label_49
  SAY @333048
  ++  @333049 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 0)~   + label_47
  ++  @333051 DO ~JoinParty()~   + label_48
END

IF ~~ THEN BEGIN label_48
  SAY @333050
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_47
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_zariel", "LOCALS", 0)~ THEN BEGIN label_52
  SAY @333052
  ++  @333054 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 1) JoinParty()~   + label_50
  ++ @333056 + label_51
END

IF ~~ THEN BEGIN label_51
  SAY @333055
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_50
  SAY @333053
  IF ~~ THEN EXIT
END