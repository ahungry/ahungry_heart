BEGIN uxolrj


IF ~Global("ux_olrun_is_bantering", "GLOBAL", 1) Global("ux_olrun_banter_id", "GLOBAL", 0)~ THEN BEGIN label_137
  SAY @333069
  ++  @333070 DO ~IncrementGlobal("ux_olrun_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333075 + label_136
END

IF ~~ THEN BEGIN label_136
  SAY @333071
  ++ @333072 + label_133
  ++ @333073 + label_134
  ++ @333074 + label_135
END

IF ~~ THEN BEGIN label_135
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_134
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_133
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~Global("ux_olrun_is_bantering", "GLOBAL", 1) Global("ux_olrun_banter_id", "GLOBAL", 1)~ THEN BEGIN label_142
  SAY @333076
  ++  @333070 DO ~IncrementGlobal("ux_olrun_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333075 + label_141
END

IF ~~ THEN BEGIN label_141
  SAY @333071
  ++ @333072 + label_138
  ++ @333073 + label_139
  ++ @333074 + label_140
END

IF ~~ THEN BEGIN label_140
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_139
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_138
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_olrun_is_bantering", "GLOBAL", 1) !Global("ux_olrun_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_143
  SAY @333093
  IF ~True()~ DO ~SetGlobal("ux_olrun_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_olrun_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_146
  SAY @333094
  ++ @333095 + label_145
  ++ @333083 EXIT
END

IF ~~ THEN BEGIN label_145
  SAY @333079
  ++ @333081 + label_144
END

IF ~~ THEN BEGIN label_144
  SAY @333080
  IF ~~ THEN EXIT
END