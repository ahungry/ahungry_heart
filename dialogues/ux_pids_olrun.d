BEGIN uxolrj


IF ~Global("ux_olrun_is_bantering", "GLOBAL", 1) Global("ux_olrun_banter_id", "GLOBAL", 0)~ THEN BEGIN label_148
  SAY @000061
  ++  @000062 DO ~IncrementGlobal("ux_olrun_banter_id", "GLOBAL", 1)~   EXIT
  ++ @000067 + label_147
END

IF ~~ THEN BEGIN label_147
  SAY @000063
  ++ @000064 + label_144
  ++ @000065 + label_145
  ++ @000066 + label_146
END

IF ~~ THEN BEGIN label_146
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_145
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_144
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~Global("ux_olrun_is_bantering", "GLOBAL", 1) Global("ux_olrun_banter_id", "GLOBAL", 1)~ THEN BEGIN label_153
  SAY @000068
  ++  @000062 DO ~IncrementGlobal("ux_olrun_banter_id", "GLOBAL", 1)~   EXIT
  ++ @000067 + label_152
END

IF ~~ THEN BEGIN label_152
  SAY @000063
  ++ @000064 + label_149
  ++ @000065 + label_150
  ++ @000066 + label_151
END

IF ~~ THEN BEGIN label_151
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_150
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_149
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_olrun_is_bantering", "GLOBAL", 1) !Global("ux_olrun_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_154
  SAY @000095
  IF ~True()~ DO ~SetGlobal("ux_olrun_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_olrun_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_157
  SAY @000096
  ++ @000097 + label_156
  ++ @000085 EXIT
END

IF ~~ THEN BEGIN label_156
  SAY @000071
  ++ @000073 + label_155
END

IF ~~ THEN BEGIN label_155
  SAY @000072
  IF ~~ THEN EXIT
END