BEGIN uxathj


IF ~Global("ux_athar_is_bantering", "GLOBAL", 1) Global("ux_athar_banter_id", "GLOBAL", 0)~ THEN BEGIN label_102
  SAY @333066
  ++  @333067 DO ~IncrementGlobal("ux_athar_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333072 + label_101
END

IF ~~ THEN BEGIN label_101
  SAY @333068
  ++ @333069 + label_98
  ++ @333070 + label_99
  ++ @333071 + label_100
END

IF ~~ THEN BEGIN label_100
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_99
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_98
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~Global("ux_athar_is_bantering", "GLOBAL", 1) Global("ux_athar_banter_id", "GLOBAL", 1)~ THEN BEGIN label_107
  SAY @333073
  ++  @333067 DO ~IncrementGlobal("ux_athar_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333072 + label_106
END

IF ~~ THEN BEGIN label_106
  SAY @333068
  ++ @333069 + label_103
  ++ @333070 + label_104
  ++ @333071 + label_105
END

IF ~~ THEN BEGIN label_105
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_104
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_103
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_athar_is_bantering", "GLOBAL", 1) !Global("ux_athar_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_108
  SAY @333091
  IF ~True()~ DO ~SetGlobal("ux_athar_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_athar_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_111
  SAY @333092
  ++ @333093 + label_110
  ++ @333090 EXIT
END

IF ~~ THEN BEGIN label_110
  SAY @333076
  ++ @333078 + label_109
END

IF ~~ THEN BEGIN label_109
  SAY @333077
  IF ~~ THEN EXIT
END