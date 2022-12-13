BEGIN uxvoip


IF ~Global("ux_in_party_voice", "LOCALS", 1)~ THEN BEGIN label_56
  SAY @333051
  ++  @333052 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 0)~   + label_54
  ++  @333060 DO ~JoinParty()~   + label_55
END

IF ~~ THEN BEGIN label_55
  SAY @333053
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_54
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_voice", "LOCALS", 0)~ THEN BEGIN label_59
  SAY @333055
  ++  @333061 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 1) JoinParty()~   + label_57
  ++ @333059 + label_58
END

IF ~~ THEN BEGIN label_58
  SAY @333058
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_57
  SAY @333056
  IF ~~ THEN EXIT
END