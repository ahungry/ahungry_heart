BEGIN uxvoip


IF ~Global("ux_in_party_voice", "LOCALS", 1)~ THEN BEGIN label_55
  SAY @333052
  ++  @333053 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 0)~   + label_53
  ++  @333061 DO ~JoinParty()~   + label_54
END

IF ~~ THEN BEGIN label_54
  SAY @333054
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_53
  SAY @333027
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_voice", "LOCALS", 0)~ THEN BEGIN label_58
  SAY @333056
  ++  @333062 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 1) JoinParty()~   + label_56
  ++ @333060 + label_57
END

IF ~~ THEN BEGIN label_57
  SAY @333059
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_56
  SAY @333057
  IF ~~ THEN EXIT
END