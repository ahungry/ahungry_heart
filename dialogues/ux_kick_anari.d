BEGIN uxanap


IF ~Global("ux_in_party_anari", "LOCALS", 1)~ THEN BEGIN label_73
  SAY @333052
  ++  @333053 DO ~SetGlobal("ux_in_party_anari", "LOCALS", 0)~   + label_71
  ++  @333067 DO ~JoinParty()~   + label_72
END

IF ~~ THEN BEGIN label_72
  SAY @333054
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_71
  SAY @333027
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_anari", "LOCALS", 0)~ THEN BEGIN label_76
  SAY @333056
  ++  @333068 DO ~SetGlobal("ux_in_party_anari", "LOCALS", 1) JoinParty()~   + label_74
  ++ @333060 + label_75
END

IF ~~ THEN BEGIN label_75
  SAY @333059
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_74
  SAY @333057
  IF ~~ THEN EXIT
END