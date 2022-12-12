BEGIN uxanaj


IF ~Global("ux_anari_is_bantering", "GLOBAL", 1) Global("ux_anari_banter_id", "GLOBAL", 0)~ THEN BEGIN label_129
  SAY @333065
  ++  @333066 DO ~IncrementGlobal("ux_anari_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333071 + label_128
END

IF ~~ THEN BEGIN label_128
  SAY @333067
  ++ @333068 + label_125
  ++ @333069 + label_126
  ++ @333070 + label_127
END

IF ~~ THEN BEGIN label_127
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_126
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_125
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~Global("ux_anari_is_bantering", "GLOBAL", 1) Global("ux_anari_banter_id", "GLOBAL", 1)~ THEN BEGIN label_134
  SAY @333072
  ++  @333066 DO ~IncrementGlobal("ux_anari_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333071 + label_133
END

IF ~~ THEN BEGIN label_133
  SAY @333067
  ++ @333068 + label_130
  ++ @333069 + label_131
  ++ @333070 + label_132
END

IF ~~ THEN BEGIN label_132
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_131
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_130
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_anari_is_bantering", "GLOBAL", 1) !Global("ux_anari_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_135
  SAY @333096
  IF ~True()~ DO ~SetGlobal("ux_anari_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_anari_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_138
  SAY @333097
  ++ @333098 + label_137
  ++ @333089 EXIT
END

IF ~~ THEN BEGIN label_137
  SAY @333075
  ++ @333077 + label_136
END

IF ~~ THEN BEGIN label_136
  SAY @333076
  IF ~~ THEN EXIT
END