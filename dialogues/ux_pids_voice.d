BEGIN uxvoij


IF ~Global("ux_voice_is_bantering", "GLOBAL", 1) Global("ux_voice_banter_id", "GLOBAL", 0)~ THEN BEGIN label_116
  SAY @333066
  ++  @333067 DO ~IncrementGlobal("ux_voice_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333072 + label_115
END

IF ~~ THEN BEGIN label_115
  SAY @333068
  ++ @333069 + label_112
  ++ @333070 + label_113
  ++ @333071 + label_114
END

IF ~~ THEN BEGIN label_114
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_113
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_112
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~Global("ux_voice_is_bantering", "GLOBAL", 1) Global("ux_voice_banter_id", "GLOBAL", 1)~ THEN BEGIN label_121
  SAY @333073
  ++  @333067 DO ~IncrementGlobal("ux_voice_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333072 + label_120
END

IF ~~ THEN BEGIN label_120
  SAY @333068
  ++ @333069 + label_117
  ++ @333070 + label_118
  ++ @333071 + label_119
END

IF ~~ THEN BEGIN label_119
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_118
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_117
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_voice_is_bantering", "GLOBAL", 1) !Global("ux_voice_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_122
  SAY @333094
  IF ~True()~ DO ~SetGlobal("ux_voice_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_voice_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_125
  SAY @333095
  ++ @333096 + label_124
  ++ @333090 EXIT
END

IF ~~ THEN BEGIN label_124
  SAY @333076
  ++ @333078 + label_123
END

IF ~~ THEN BEGIN label_123
  SAY @333077
  IF ~~ THEN EXIT
END