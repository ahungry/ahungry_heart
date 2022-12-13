BEGIN uxzarp


IF ~Global("ux_in_party_zariel", "LOCALS", 1)~ THEN BEGIN label_50
  SAY @333050
  ++  @333051 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 0)~   + label_48
  ++  @333053 DO ~JoinParty()~   + label_49
END

IF ~~ THEN BEGIN label_49
  SAY @333052
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_48
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_zariel", "LOCALS", 0)~ THEN BEGIN label_53
  SAY @333054
  ++  @333056 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 1) JoinParty()~   + label_51
  ++ @333058 + label_52
END

IF ~~ THEN BEGIN label_52
  SAY @333057
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_51
  SAY @333055
  IF ~~ THEN EXIT
END