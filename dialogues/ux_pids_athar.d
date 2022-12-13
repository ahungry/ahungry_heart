BEGIN uxathj


IF ~Global("ux_athar_is_bantering", "GLOBAL", 1) Global("ux_athar_banter_id", "GLOBAL", 0)~ THEN BEGIN label_102
  SAY @000061
  ++  @000062 DO ~IncrementGlobal("ux_athar_banter_id", "GLOBAL", 1)~   EXIT
  ++ @000067 + label_101
END

IF ~~ THEN BEGIN label_101
  SAY @000063
  ++ @000064 + label_98
  ++ @000065 + label_99
  ++ @000066 + label_100
END

IF ~~ THEN BEGIN label_100
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_99
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_98
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~Global("ux_athar_is_bantering", "GLOBAL", 1) Global("ux_athar_banter_id", "GLOBAL", 1)~ THEN BEGIN label_107
  SAY @000068
  ++  @000062 DO ~IncrementGlobal("ux_athar_banter_id", "GLOBAL", 1)~   EXIT
  ++ @000067 + label_106
END

IF ~~ THEN BEGIN label_106
  SAY @000063
  ++ @000064 + label_103
  ++ @000065 + label_104
  ++ @000066 + label_105
END

IF ~~ THEN BEGIN label_105
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_104
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_103
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_athar_is_bantering", "GLOBAL", 1) !Global("ux_athar_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_108
  SAY @000086
  IF ~True()~ DO ~SetGlobal("ux_athar_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_athar_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_111
  SAY @000087
  ++ @000088 + label_110
  ++ @000085 EXIT
END

IF ~~ THEN BEGIN label_110
  SAY @000071
  ++ @000073 + label_109
END

IF ~~ THEN BEGIN label_109
  SAY @000072
  IF ~~ THEN EXIT
END