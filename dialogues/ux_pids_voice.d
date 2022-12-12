BEGIN uxvoij


IF ~Global("ux_voice_is_bantering", "GLOBAL", 1) Global("ux_voice_banter_id", "GLOBAL", 0)~ THEN BEGIN label_115
  SAY @333065
  ++  @333066 DO ~IncrementGlobal("ux_voice_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333071 + label_114
END

IF ~~ THEN BEGIN label_114
  SAY @333067
  ++ @333068 + label_111
  ++ @333069 + label_112
  ++ @333070 + label_113
END

IF ~~ THEN BEGIN label_113
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_112
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_111
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~Global("ux_voice_is_bantering", "GLOBAL", 1) Global("ux_voice_banter_id", "GLOBAL", 1)~ THEN BEGIN label_120
  SAY @333072
  ++  @333066 DO ~IncrementGlobal("ux_voice_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333071 + label_119
END

IF ~~ THEN BEGIN label_119
  SAY @333067
  ++ @333068 + label_116
  ++ @333069 + label_117
  ++ @333070 + label_118
END

IF ~~ THEN BEGIN label_118
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_117
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_116
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_voice_is_bantering", "GLOBAL", 1) !Global("ux_voice_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_121
  SAY @333093
  IF ~True()~ DO ~SetGlobal("ux_voice_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_voice_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_124
  SAY @333094
  ++ @333095 + label_123
  ++ @333089 EXIT
END

IF ~~ THEN BEGIN label_123
  SAY @333075
  ++ @333077 + label_122
END

IF ~~ THEN BEGIN label_122
  SAY @333076
  IF ~~ THEN EXIT
END