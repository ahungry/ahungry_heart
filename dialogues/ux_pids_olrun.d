BEGIN uxolrj


IF ~Global("ux_olrun_is_bantering", "GLOBAL", 1) Global("ux_olrun_banter_id", "GLOBAL", 0)~ THEN BEGIN label_144
  SAY @333068
  ++  @333069 DO ~IncrementGlobal("ux_olrun_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333074 + label_143
END

IF ~~ THEN BEGIN label_143
  SAY @333070
  ++ @333071 + label_140
  ++ @333072 + label_141
  ++ @333073 + label_142
END

IF ~~ THEN BEGIN label_142
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_141
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_140
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~Global("ux_olrun_is_bantering", "GLOBAL", 1) Global("ux_olrun_banter_id", "GLOBAL", 1)~ THEN BEGIN label_149
  SAY @333075
  ++  @333069 DO ~IncrementGlobal("ux_olrun_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333074 + label_148
END

IF ~~ THEN BEGIN label_148
  SAY @333070
  ++ @333071 + label_145
  ++ @333072 + label_146
  ++ @333073 + label_147
END

IF ~~ THEN BEGIN label_147
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_146
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_145
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_olrun_is_bantering", "GLOBAL", 1) !Global("ux_olrun_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_150
  SAY @333102
  IF ~True()~ DO ~SetGlobal("ux_olrun_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_olrun_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_153
  SAY @333103
  ++ @333104 + label_152
  ++ @333092 EXIT
END

IF ~~ THEN BEGIN label_152
  SAY @333078
  ++ @333080 + label_151
END

IF ~~ THEN BEGIN label_151
  SAY @333079
  IF ~~ THEN EXIT
END