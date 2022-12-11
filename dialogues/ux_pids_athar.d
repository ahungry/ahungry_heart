BEGIN uxathj


IF ~Global("ux_athar_is_bantering", "GLOBAL", 1) Global("ux_athar_banter_id", "GLOBAL", 0)~ THEN BEGIN label_101
  SAY @333069
  ++  @333070 DO ~IncrementGlobal("ux_athar_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333075 + label_100
END

IF ~~ THEN BEGIN label_100
  SAY @333071
  ++ @333072 + label_97
  ++ @333073 + label_98
  ++ @333074 + label_99
END

IF ~~ THEN BEGIN label_99
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_98
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_97
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~Global("ux_athar_is_bantering", "GLOBAL", 1) Global("ux_athar_banter_id", "GLOBAL", 1)~ THEN BEGIN label_106
  SAY @333076
  ++  @333070 DO ~IncrementGlobal("ux_athar_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333075 + label_105
END

IF ~~ THEN BEGIN label_105
  SAY @333071
  ++ @333072 + label_102
  ++ @333073 + label_103
  ++ @333074 + label_104
END

IF ~~ THEN BEGIN label_104
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_103
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_102
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_athar_is_bantering", "GLOBAL", 1) !Global("ux_athar_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_107
  SAY @333094
  IF ~True()~ DO ~SetGlobal("ux_athar_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_athar_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_110
  SAY @333095
  ++ @333096 + label_109
  ++ @333093 EXIT
END

IF ~~ THEN BEGIN label_109
  SAY @333079
  ++ @333081 + label_108
END

IF ~~ THEN BEGIN label_108
  SAY @333080
  IF ~~ THEN EXIT
END