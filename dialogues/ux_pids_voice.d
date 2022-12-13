BEGIN uxvoij


IF ~Global("ux_voice_is_bantering", "GLOBAL", 1) Global("ux_voice_banter_id", "GLOBAL", 0)~ THEN BEGIN label_116
  SAY @000061
  ++  @000062 DO ~IncrementGlobal("ux_voice_banter_id", "GLOBAL", 1)~   EXIT
  ++ @000067 + label_115
END

IF ~~ THEN BEGIN label_115
  SAY @000063
  ++ @000064 + label_112
  ++ @000065 + label_113
  ++ @000066 + label_114
END

IF ~~ THEN BEGIN label_114
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_113
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_112
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~Global("ux_voice_is_bantering", "GLOBAL", 1) Global("ux_voice_banter_id", "GLOBAL", 1)~ THEN BEGIN label_121
  SAY @000068
  ++  @000062 DO ~IncrementGlobal("ux_voice_banter_id", "GLOBAL", 1)~   EXIT
  ++ @000067 + label_120
END

IF ~~ THEN BEGIN label_120
  SAY @000063
  ++ @000064 + label_117
  ++ @000065 + label_118
  ++ @000066 + label_119
END

IF ~~ THEN BEGIN label_119
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_118
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_117
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_voice_is_bantering", "GLOBAL", 1) !Global("ux_voice_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_122
  SAY @000089
  IF ~True()~ DO ~SetGlobal("ux_voice_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_voice_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_125
  SAY @000090
  ++ @000091 + label_124
  ++ @000085 EXIT
END

IF ~~ THEN BEGIN label_124
  SAY @000071
  ++ @000073 + label_123
END

IF ~~ THEN BEGIN label_123
  SAY @000072
  IF ~~ THEN EXIT
END