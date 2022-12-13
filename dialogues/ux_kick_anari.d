BEGIN uxanap


IF ~Global("ux_in_party_anari", "LOCALS", 1)~ THEN BEGIN label_74
  SAY @333049
  ++  @333050 DO ~SetGlobal("ux_in_party_anari", "LOCALS", 0)~   + label_72
  ++  @333064 DO ~JoinParty()~   + label_73
END

IF ~~ THEN BEGIN label_73
  SAY @333051
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_72
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_anari", "LOCALS", 0)~ THEN BEGIN label_77
  SAY @333053
  ++  @333065 DO ~SetGlobal("ux_in_party_anari", "LOCALS", 1) JoinParty()~   + label_75
  ++ @333057 + label_76
END

IF ~~ THEN BEGIN label_76
  SAY @333056
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_75
  SAY @333054
  IF ~~ THEN EXIT
END