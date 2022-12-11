BEGIN uxanaj


IF ~Global("ux_anari_is_bantering", "GLOBAL", 1) Global("ux_anari_banter_id", "GLOBAL", 0)~ THEN BEGIN label_123
  SAY @333069
  ++  @333070 DO ~IncrementGlobal("ux_anari_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333075 + label_122
END

IF ~~ THEN BEGIN label_122
  SAY @333071
  ++ @333072 + label_119
  ++ @333073 + label_120
  ++ @333074 + label_121
END

IF ~~ THEN BEGIN label_121
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_120
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_119
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~Global("ux_anari_is_bantering", "GLOBAL", 1) Global("ux_anari_banter_id", "GLOBAL", 1)~ THEN BEGIN label_128
  SAY @333076
  ++  @333070 DO ~IncrementGlobal("ux_anari_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333075 + label_127
END

IF ~~ THEN BEGIN label_127
  SAY @333071
  ++ @333072 + label_124
  ++ @333073 + label_125
  ++ @333074 + label_126
END

IF ~~ THEN BEGIN label_126
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_125
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_124
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_anari_is_bantering", "GLOBAL", 1) !Global("ux_anari_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_129
  SAY @333090
  IF ~True()~ DO ~SetGlobal("ux_anari_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_anari_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_132
  SAY @333091
  ++ @333092 + label_131
  ++ @333083 EXIT
END

IF ~~ THEN BEGIN label_131
  SAY @333079
  ++ @333081 + label_130
END

IF ~~ THEN BEGIN label_130
  SAY @333080
  IF ~~ THEN EXIT
END