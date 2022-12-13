BEGIN uxanap


IF ~Global("ux_in_party_anari", "LOCALS", 1)~ THEN BEGIN label_74
  SAY @333051
  ++  @333052 DO ~SetGlobal("ux_in_party_anari", "LOCALS", 0)~   + label_72
  ++  @333066 DO ~JoinParty()~   + label_73
END

IF ~~ THEN BEGIN label_73
  SAY @333053
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_72
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~Global("ux_in_party_anari", "LOCALS", 0)~ THEN BEGIN label_77
  SAY @333055
  ++  @333067 DO ~SetGlobal("ux_in_party_anari", "LOCALS", 1) JoinParty()~   + label_75
  ++ @333059 + label_76
END

IF ~~ THEN BEGIN label_76
  SAY @333058
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_75
  SAY @333056
  IF ~~ THEN EXIT
END