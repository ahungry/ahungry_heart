BEGIN uxanaj


IF ~Global("ux_anari_is_bantering", "GLOBAL", 1) Global("ux_anari_banter_id", "GLOBAL", 0)~ THEN BEGIN label_130
  SAY @333067
  ++  @333068 DO ~IncrementGlobal("ux_anari_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333073 + label_129
END

IF ~~ THEN BEGIN label_129
  SAY @333069
  ++ @333070 + label_126
  ++ @333071 + label_127
  ++ @333072 + label_128
END

IF ~~ THEN BEGIN label_128
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_127
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_126
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~Global("ux_anari_is_bantering", "GLOBAL", 1) Global("ux_anari_banter_id", "GLOBAL", 1)~ THEN BEGIN label_135
  SAY @333074
  ++  @333068 DO ~IncrementGlobal("ux_anari_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333073 + label_134
END

IF ~~ THEN BEGIN label_134
  SAY @333069
  ++ @333070 + label_131
  ++ @333071 + label_132
  ++ @333072 + label_133
END

IF ~~ THEN BEGIN label_133
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_132
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_131
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_anari_is_bantering", "GLOBAL", 1) !Global("ux_anari_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_136
  SAY @333098
  IF ~True()~ DO ~SetGlobal("ux_anari_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_anari_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_139
  SAY @333099
  ++ @333100 + label_138
  ++ @333091 EXIT
END

IF ~~ THEN BEGIN label_138
  SAY @333077
  ++ @333079 + label_137
END

IF ~~ THEN BEGIN label_137
  SAY @333078
  IF ~~ THEN EXIT
END