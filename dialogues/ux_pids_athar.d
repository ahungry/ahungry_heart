BEGIN uxathj


IF ~Global("ux_athar_is_bantering", "GLOBAL", 1) Global("ux_athar_banter_id", "GLOBAL", 0)~ THEN BEGIN label_102
  SAY @333068
  ++  @333069 DO ~IncrementGlobal("ux_athar_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333074 + label_101
END

IF ~~ THEN BEGIN label_101
  SAY @333070
  ++ @333071 + label_98
  ++ @333072 + label_99
  ++ @333073 + label_100
END

IF ~~ THEN BEGIN label_100
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_99
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_98
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~Global("ux_athar_is_bantering", "GLOBAL", 1) Global("ux_athar_banter_id", "GLOBAL", 1)~ THEN BEGIN label_107
  SAY @333075
  ++  @333069 DO ~IncrementGlobal("ux_athar_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333074 + label_106
END

IF ~~ THEN BEGIN label_106
  SAY @333070
  ++ @333071 + label_103
  ++ @333072 + label_104
  ++ @333073 + label_105
END

IF ~~ THEN BEGIN label_105
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_104
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_103
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_athar_is_bantering", "GLOBAL", 1) !Global("ux_athar_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_108
  SAY @333093
  IF ~True()~ DO ~SetGlobal("ux_athar_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_athar_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_111
  SAY @333094
  ++ @333095 + label_110
  ++ @333092 EXIT
END

IF ~~ THEN BEGIN label_110
  SAY @333078
  ++ @333080 + label_109
END

IF ~~ THEN BEGIN label_109
  SAY @333079
  IF ~~ THEN EXIT
END