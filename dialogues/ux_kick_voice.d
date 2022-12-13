BEGIN uxvoip


IF ~Global("ux_in_party_voice", "LOCALS", 1)~ THEN BEGIN label_56
  SAY @333049
  ++  @333050 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 0)~   + label_54
  ++  @333058 DO ~JoinParty()~   + label_55
END

IF ~~ THEN BEGIN label_55
  SAY @333051
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_54
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_voice", "LOCALS", 0)~ THEN BEGIN label_59
  SAY @333053
  ++  @333059 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 1) JoinParty()~   + label_57
  ++ @333057 + label_58
END

IF ~~ THEN BEGIN label_58
  SAY @333056
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_57
  SAY @333054
  IF ~~ THEN EXIT
END