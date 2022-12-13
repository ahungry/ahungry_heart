BEGIN uxvoij


IF ~Global("ux_voice_is_bantering", "GLOBAL", 1) Global("ux_voice_banter_id", "GLOBAL", 0)~ THEN BEGIN label_116
  SAY @333067
  ++  @333068 DO ~IncrementGlobal("ux_voice_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333073 + label_115
END

IF ~~ THEN BEGIN label_115
  SAY @333069
  ++ @333070 + label_112
  ++ @333071 + label_113
  ++ @333072 + label_114
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
  SAY @333074
  ++  @333068 DO ~IncrementGlobal("ux_voice_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333073 + label_120
END

IF ~~ THEN BEGIN label_120
  SAY @333069
  ++ @333070 + label_117
  ++ @333071 + label_118
  ++ @333072 + label_119
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
  SAY @333095
  IF ~True()~ DO ~SetGlobal("ux_voice_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_voice_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_125
  SAY @333096
  ++ @333097 + label_124
  ++ @333091 EXIT
END

IF ~~ THEN BEGIN label_124
  SAY @333077
  ++ @333079 + label_123
END

IF ~~ THEN BEGIN label_123
  SAY @333078
  IF ~~ THEN EXIT
END