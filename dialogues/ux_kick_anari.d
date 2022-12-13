BEGIN uxanap


IF ~Global("ux_in_party_anari", "LOCALS", 1)~ THEN BEGIN label_74
  SAY @333050
  ++  @333051 DO ~SetGlobal("ux_in_party_anari", "LOCALS", 0)~   + label_72
  ++  @333065 DO ~JoinParty()~   + label_73
END

IF ~~ THEN BEGIN label_73
  SAY @333052
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_72
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_anari", "LOCALS", 0)~ THEN BEGIN label_77
  SAY @333054
  ++  @333066 DO ~SetGlobal("ux_in_party_anari", "LOCALS", 1) JoinParty()~   + label_75
  ++ @333058 + label_76
END

IF ~~ THEN BEGIN label_76
  SAY @333057
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_75
  SAY @333055
  IF ~~ THEN EXIT
END