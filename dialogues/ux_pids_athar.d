BEGIN uxathj


IF ~Global("ux_athar_is_bantering", "GLOBAL", 1) Global("ux_athar_banter_id", "GLOBAL", 0)~ THEN BEGIN label_101
  SAY @333065
  ++  @333066 DO ~IncrementGlobal("ux_athar_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333071 + label_100
END

IF ~~ THEN BEGIN label_100
  SAY @333067
  ++ @333068 + label_97
  ++ @333069 + label_98
  ++ @333070 + label_99
END

IF ~~ THEN BEGIN label_99
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_98
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_97
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~Global("ux_athar_is_bantering", "GLOBAL", 1) Global("ux_athar_banter_id", "GLOBAL", 1)~ THEN BEGIN label_106
  SAY @333072
  ++  @333066 DO ~IncrementGlobal("ux_athar_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333071 + label_105
END

IF ~~ THEN BEGIN label_105
  SAY @333067
  ++ @333068 + label_102
  ++ @333069 + label_103
  ++ @333070 + label_104
END

IF ~~ THEN BEGIN label_104
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_103
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_102
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_athar_is_bantering", "GLOBAL", 1) !Global("ux_athar_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_107
  SAY @333090
  IF ~True()~ DO ~SetGlobal("ux_athar_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_athar_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_110
  SAY @333091
  ++ @333092 + label_109
  ++ @333089 EXIT
END

IF ~~ THEN BEGIN label_109
  SAY @333075
  ++ @333077 + label_108
END

IF ~~ THEN BEGIN label_108
  SAY @333076
  IF ~~ THEN EXIT
END