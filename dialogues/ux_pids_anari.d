BEGIN uxanaj


IF ~Global("ux_anari_is_bantering", "GLOBAL", 1) Global("ux_anari_banter_id", "GLOBAL", 0)~ THEN BEGIN label_141
  SAY @000061
  ++  @000062 DO ~IncrementGlobal("ux_anari_banter_id", "GLOBAL", 1)~   EXIT
  ++ @000067 + label_140
END

IF ~~ THEN BEGIN label_140
  SAY @000063
  ++ @000064 + label_137
  ++ @000065 + label_138
  ++ @000066 + label_139
END

IF ~~ THEN BEGIN label_139
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_138
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_137
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~Global("ux_anari_is_bantering", "GLOBAL", 1) Global("ux_anari_banter_id", "GLOBAL", 1)~ THEN BEGIN label_146
  SAY @000068
  ++  @000062 DO ~IncrementGlobal("ux_anari_banter_id", "GLOBAL", 1)~   EXIT
  ++ @000067 + label_145
END

IF ~~ THEN BEGIN label_145
  SAY @000063
  ++ @000064 + label_142
  ++ @000065 + label_143
  ++ @000066 + label_144
END

IF ~~ THEN BEGIN label_144
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_143
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_142
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_anari_is_bantering", "GLOBAL", 1) !Global("ux_anari_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_147
  SAY @000092
  IF ~True()~ DO ~SetGlobal("ux_anari_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_anari_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_150
  SAY @000093
  ++ @000094 + label_149
  ++ @000085 EXIT
END

IF ~~ THEN BEGIN label_149
  SAY @000071
  ++ @000073 + label_148
END

IF ~~ THEN BEGIN label_148
  SAY @000072
  IF ~~ THEN EXIT
END