BEGIN uxvoij


IF ~Global("ux_voice_is_bantering", "GLOBAL", 1) Global("ux_voice_banter_id", "GLOBAL", 0)~ THEN BEGIN label_127
  SAY @000061
  ++  @000062 DO ~IncrementGlobal("ux_voice_banter_id", "GLOBAL", 1)~   EXIT
  ++ @000067 + label_126
END

IF ~~ THEN BEGIN label_126
  SAY @000063
  ++ @000064 + label_123
  ++ @000065 + label_124
  ++ @000066 + label_125
END

IF ~~ THEN BEGIN label_125
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_124
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_123
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~Global("ux_voice_is_bantering", "GLOBAL", 1) Global("ux_voice_banter_id", "GLOBAL", 1)~ THEN BEGIN label_132
  SAY @000068
  ++  @000062 DO ~IncrementGlobal("ux_voice_banter_id", "GLOBAL", 1)~   EXIT
  ++ @000067 + label_131
END

IF ~~ THEN BEGIN label_131
  SAY @000063
  ++ @000064 + label_128
  ++ @000065 + label_129
  ++ @000066 + label_130
END

IF ~~ THEN BEGIN label_130
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_129
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_128
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_voice_is_bantering", "GLOBAL", 1) !Global("ux_voice_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_133
  SAY @000089
  IF ~True()~ DO ~SetGlobal("ux_voice_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_voice_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_136
  SAY @000090
  ++ @000091 + label_135
  ++ @000085 EXIT
END

IF ~~ THEN BEGIN label_135
  SAY @000071
  ++ @000073 + label_134
END

IF ~~ THEN BEGIN label_134
  SAY @000072
  IF ~~ THEN EXIT
END