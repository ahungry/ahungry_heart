BEGIN uxvoij


IF ~Global("ux_voice_is_bantering", "GLOBAL", 1) Global("ux_voice_banter_id", "GLOBAL", 0)~ THEN BEGIN label_116
  SAY @333068
  ++  @333069 DO ~IncrementGlobal("ux_voice_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333074 + label_115
END

IF ~~ THEN BEGIN label_115
  SAY @333070
  ++ @333071 + label_112
  ++ @333072 + label_113
  ++ @333073 + label_114
END

IF ~~ THEN BEGIN label_114
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_113
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_112
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~Global("ux_voice_is_bantering", "GLOBAL", 1) Global("ux_voice_banter_id", "GLOBAL", 1)~ THEN BEGIN label_121
  SAY @333075
  ++  @333069 DO ~IncrementGlobal("ux_voice_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333074 + label_120
END

IF ~~ THEN BEGIN label_120
  SAY @333070
  ++ @333071 + label_117
  ++ @333072 + label_118
  ++ @333073 + label_119
END

IF ~~ THEN BEGIN label_119
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_118
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_117
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_voice_is_bantering", "GLOBAL", 1) !Global("ux_voice_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_122
  SAY @333096
  IF ~True()~ DO ~SetGlobal("ux_voice_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_voice_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_125
  SAY @333097
  ++ @333098 + label_124
  ++ @333092 EXIT
END

IF ~~ THEN BEGIN label_124
  SAY @333078
  ++ @333080 + label_123
END

IF ~~ THEN BEGIN label_123
  SAY @333079
  IF ~~ THEN EXIT
END