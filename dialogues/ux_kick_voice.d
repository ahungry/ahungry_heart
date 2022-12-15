BEGIN uxvoip


IF ~GlobalLT("ux_state", "GLOBAL", 51) Global("ux_in_party_uxvoi", "GLOBAL", 1)~ THEN BEGIN label_66
  SAY @000129
  IF ~True()~ DO ~SetGlobal("ux_in_party_uxvoi", "GLOBAL", 0) EscapeAreaObjectMove("%BG_PRE%3900", "North", 2440, 848, 5)~ EXIT
END


IF ~GlobalGT("ux_state", "GLOBAL", 50) Global("ux_in_party_uxvoi", "GLOBAL", 1)~ THEN BEGIN label_69
  SAY @000044
  ++  @000045 DO ~SetGlobal("ux_in_party_uxvoi", "GLOBAL", 0)~   + label_67
  ++  @000053 DO ~JoinParty()~   + label_68
END

IF ~~ THEN BEGIN label_68
  SAY @000046
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_67
  SAY @000016
  IF ~~ THEN EXIT
END


IF ~GlobalGT("ux_state", "GLOBAL", 50) Global("ux_in_party_uxvoi", "GLOBAL", 0)~ THEN BEGIN label_72
  SAY @000048
  ++  @000054 DO ~SetGlobal("ux_in_party_uxvoi", "GLOBAL", 1) JoinParty()~   + label_70
  ++ @000052 + label_71
END

IF ~~ THEN BEGIN label_71
  SAY @000051
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_70
  SAY @000049
  IF ~~ THEN EXIT
END