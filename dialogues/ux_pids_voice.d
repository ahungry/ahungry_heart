BEGIN uxvoij


IF ~Global("ux_voice_is_bantering", "GLOBAL", 1) Global("ux_voice_banter_id", "GLOBAL", 0)~ THEN BEGIN label_159
  SAY @000061
  ++  @000062 DO ~IncrementGlobal("ux_voice_banter_id", "GLOBAL", 1)~   EXIT
  ++ @000067 + label_158
END

IF ~~ THEN BEGIN label_158
  SAY @000063
  ++ @000064 + label_155
  ++ @000065 + label_156
  ++ @000066 + label_157
END

IF ~~ THEN BEGIN label_157
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_156
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_155
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~Global("ux_voice_is_bantering", "GLOBAL", 1) Global("ux_voice_banter_id", "GLOBAL", 1)~ THEN BEGIN label_164
  SAY @000068
  ++  @000062 DO ~IncrementGlobal("ux_voice_banter_id", "GLOBAL", 1)~   EXIT
  ++ @000067 + label_163
END

IF ~~ THEN BEGIN label_163
  SAY @000063
  ++ @000064 + label_160
  ++ @000065 + label_161
  ++ @000066 + label_162
END

IF ~~ THEN BEGIN label_162
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_161
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_160
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_voice_is_bantering", "GLOBAL", 1) !Global("ux_voice_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_165
  SAY @000089
  IF ~True()~ DO ~SetGlobal("ux_voice_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_voice_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_168
  SAY @000090
  ++ @000091 + label_167
  ++ @000085 EXIT
END

IF ~~ THEN BEGIN label_167
  SAY @000071
  ++ @000073 + label_166
END

IF ~~ THEN BEGIN label_166
  SAY @000072
  IF ~~ THEN EXIT
END