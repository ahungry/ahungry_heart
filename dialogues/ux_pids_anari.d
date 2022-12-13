BEGIN uxanaj


IF ~Global("ux_anari_is_bantering", "GLOBAL", 1) Global("ux_anari_banter_id", "GLOBAL", 0)~ THEN BEGIN label_130
  SAY @333068
  ++  @333069 DO ~IncrementGlobal("ux_anari_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333074 + label_129
END

IF ~~ THEN BEGIN label_129
  SAY @333070
  ++ @333071 + label_126
  ++ @333072 + label_127
  ++ @333073 + label_128
END

IF ~~ THEN BEGIN label_128
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_127
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_126
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~Global("ux_anari_is_bantering", "GLOBAL", 1) Global("ux_anari_banter_id", "GLOBAL", 1)~ THEN BEGIN label_135
  SAY @333075
  ++  @333069 DO ~IncrementGlobal("ux_anari_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333074 + label_134
END

IF ~~ THEN BEGIN label_134
  SAY @333070
  ++ @333071 + label_131
  ++ @333072 + label_132
  ++ @333073 + label_133
END

IF ~~ THEN BEGIN label_133
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_132
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_131
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_anari_is_bantering", "GLOBAL", 1) !Global("ux_anari_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_136
  SAY @333099
  IF ~True()~ DO ~SetGlobal("ux_anari_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_anari_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_139
  SAY @333100
  ++ @333101 + label_138
  ++ @333092 EXIT
END

IF ~~ THEN BEGIN label_138
  SAY @333078
  ++ @333080 + label_137
END

IF ~~ THEN BEGIN label_137
  SAY @333079
  IF ~~ THEN EXIT
END