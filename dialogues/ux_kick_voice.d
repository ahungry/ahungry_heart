BEGIN uxvoip


IF ~Global("ux_in_party_voice", "LOCALS", 1)~ THEN BEGIN label_55
  SAY @333048
  ++  @333049 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 0)~   + label_53
  ++  @333057 DO ~JoinParty()~   + label_54
END

IF ~~ THEN BEGIN label_54
  SAY @333050
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_53
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_voice", "LOCALS", 0)~ THEN BEGIN label_58
  SAY @333052
  ++  @333058 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 1) JoinParty()~   + label_56
  ++ @333056 + label_57
END

IF ~~ THEN BEGIN label_57
  SAY @333055
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_56
  SAY @333053
  IF ~~ THEN EXIT
END