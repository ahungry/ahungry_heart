BEGIN uxolrj


IF ~Global("ux_olrun_is_bantering", "GLOBAL", 1) Global("ux_olrun_banter_id", "GLOBAL", 0)~ THEN BEGIN label_144
  SAY @333066
  ++  @333067 DO ~IncrementGlobal("ux_olrun_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333072 + label_143
END

IF ~~ THEN BEGIN label_143
  SAY @333068
  ++ @333069 + label_140
  ++ @333070 + label_141
  ++ @333071 + label_142
END

IF ~~ THEN BEGIN label_142
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_141
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_140
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~Global("ux_olrun_is_bantering", "GLOBAL", 1) Global("ux_olrun_banter_id", "GLOBAL", 1)~ THEN BEGIN label_149
  SAY @333073
  ++  @333067 DO ~IncrementGlobal("ux_olrun_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333072 + label_148
END

IF ~~ THEN BEGIN label_148
  SAY @333068
  ++ @333069 + label_145
  ++ @333070 + label_146
  ++ @333071 + label_147
END

IF ~~ THEN BEGIN label_147
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_146
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_145
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_olrun_is_bantering", "GLOBAL", 1) !Global("ux_olrun_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_150
  SAY @333100
  IF ~True()~ DO ~SetGlobal("ux_olrun_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_olrun_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_153
  SAY @333101
  ++ @333102 + label_152
  ++ @333090 EXIT
END

IF ~~ THEN BEGIN label_152
  SAY @333076
  ++ @333078 + label_151
END

IF ~~ THEN BEGIN label_151
  SAY @333077
  IF ~~ THEN EXIT
END