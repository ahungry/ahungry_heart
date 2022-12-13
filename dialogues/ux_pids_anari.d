BEGIN uxanaj


IF ~Global("ux_anari_is_bantering", "GLOBAL", 1) Global("ux_anari_banter_id", "GLOBAL", 0)~ THEN BEGIN label_130
  SAY @000061
  ++  @000062 DO ~IncrementGlobal("ux_anari_banter_id", "GLOBAL", 1)~   EXIT
  ++ @000067 + label_129
END

IF ~~ THEN BEGIN label_129
  SAY @000063
  ++ @000064 + label_126
  ++ @000065 + label_127
  ++ @000066 + label_128
END

IF ~~ THEN BEGIN label_128
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_127
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_126
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~Global("ux_anari_is_bantering", "GLOBAL", 1) Global("ux_anari_banter_id", "GLOBAL", 1)~ THEN BEGIN label_135
  SAY @000068
  ++  @000062 DO ~IncrementGlobal("ux_anari_banter_id", "GLOBAL", 1)~   EXIT
  ++ @000067 + label_134
END

IF ~~ THEN BEGIN label_134
  SAY @000063
  ++ @000064 + label_131
  ++ @000065 + label_132
  ++ @000066 + label_133
END

IF ~~ THEN BEGIN label_133
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_132
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_131
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_anari_is_bantering", "GLOBAL", 1) !Global("ux_anari_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_136
  SAY @000092
  IF ~True()~ DO ~SetGlobal("ux_anari_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_anari_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_139
  SAY @000093
  ++ @000094 + label_138
  ++ @000085 EXIT
END

IF ~~ THEN BEGIN label_138
  SAY @000071
  ++ @000073 + label_137
END

IF ~~ THEN BEGIN label_137
  SAY @000072
  IF ~~ THEN EXIT
END