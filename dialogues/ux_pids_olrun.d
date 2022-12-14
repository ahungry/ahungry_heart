BEGIN uxolrj


IF ~Global("ux_olrun_is_bantering", "GLOBAL", 1) Global("ux_olrun_banter_id", "GLOBAL", 0)~ THEN BEGIN label_155
  SAY @000061
  ++  @000062 DO ~IncrementGlobal("ux_olrun_banter_id", "GLOBAL", 1)~   EXIT
  ++ @000067 + label_154
END

IF ~~ THEN BEGIN label_154
  SAY @000063
  ++ @000064 + label_151
  ++ @000065 + label_152
  ++ @000066 + label_153
END

IF ~~ THEN BEGIN label_153
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_152
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_151
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~Global("ux_olrun_is_bantering", "GLOBAL", 1) Global("ux_olrun_banter_id", "GLOBAL", 1)~ THEN BEGIN label_160
  SAY @000068
  ++  @000062 DO ~IncrementGlobal("ux_olrun_banter_id", "GLOBAL", 1)~   EXIT
  ++ @000067 + label_159
END

IF ~~ THEN BEGIN label_159
  SAY @000063
  ++ @000064 + label_156
  ++ @000065 + label_157
  ++ @000066 + label_158
END

IF ~~ THEN BEGIN label_158
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_157
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_156
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_olrun_is_bantering", "GLOBAL", 1) !Global("ux_olrun_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_161
  SAY @000095
  IF ~True()~ DO ~SetGlobal("ux_olrun_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_olrun_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_164
  SAY @000096
  ++ @000097 + label_163
  ++ @000085 EXIT
END

IF ~~ THEN BEGIN label_163
  SAY @000071
  ++ @000073 + label_162
END

IF ~~ THEN BEGIN label_162
  SAY @000072
  IF ~~ THEN EXIT
END