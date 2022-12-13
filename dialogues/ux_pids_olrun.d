BEGIN uxolrj


IF ~Global("ux_olrun_is_bantering", "GLOBAL", 1) Global("ux_olrun_banter_id", "GLOBAL", 0)~ THEN BEGIN label_144
  SAY @333067
  ++  @333068 DO ~IncrementGlobal("ux_olrun_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333073 + label_143
END

IF ~~ THEN BEGIN label_143
  SAY @333069
  ++ @333070 + label_140
  ++ @333071 + label_141
  ++ @333072 + label_142
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
  SAY @333074
  ++  @333068 DO ~IncrementGlobal("ux_olrun_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333073 + label_148
END

IF ~~ THEN BEGIN label_148
  SAY @333069
  ++ @333070 + label_145
  ++ @333071 + label_146
  ++ @333072 + label_147
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
  SAY @333101
  IF ~True()~ DO ~SetGlobal("ux_olrun_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_olrun_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_153
  SAY @333102
  ++ @333103 + label_152
  ++ @333091 EXIT
END

IF ~~ THEN BEGIN label_152
  SAY @333077
  ++ @333079 + label_151
END

IF ~~ THEN BEGIN label_151
  SAY @333078
  IF ~~ THEN EXIT
END