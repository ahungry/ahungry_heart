BEGIN uxanaj


IF ~Global("ux_anari_is_bantering", "GLOBAL", 1) Global("ux_anari_banter_id", "GLOBAL", 0)~ THEN BEGIN label_126
  SAY @333069
  ++  @333070 DO ~IncrementGlobal("ux_anari_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333075 + label_125
END

IF ~~ THEN BEGIN label_125
  SAY @333071
  ++ @333072 + label_122
  ++ @333073 + label_123
  ++ @333074 + label_124
END

IF ~~ THEN BEGIN label_124
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_123
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_122
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~Global("ux_anari_is_bantering", "GLOBAL", 1) Global("ux_anari_banter_id", "GLOBAL", 1)~ THEN BEGIN label_131
  SAY @333076
  ++  @333070 DO ~IncrementGlobal("ux_anari_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333075 + label_130
END

IF ~~ THEN BEGIN label_130
  SAY @333071
  ++ @333072 + label_127
  ++ @333073 + label_128
  ++ @333074 + label_129
END

IF ~~ THEN BEGIN label_129
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_128
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_127
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_anari_is_bantering", "GLOBAL", 1) !Global("ux_anari_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_132
  SAY @333096
  IF ~True()~ DO ~SetGlobal("ux_anari_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_anari_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_135
  SAY @333097
  ++ @333098 + label_134
  ++ @333089 EXIT
END

IF ~~ THEN BEGIN label_134
  SAY @333079
  ++ @333081 + label_133
END

IF ~~ THEN BEGIN label_133
  SAY @333080
  IF ~~ THEN EXIT
END