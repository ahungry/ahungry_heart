BEGIN uxvoij


IF ~Global("ux_voice_is_bantering", "GLOBAL", 1) Global("ux_voice_banter_id", "GLOBAL", 0)~ THEN BEGIN label_109
  SAY @333069
  ++  @333070 DO ~IncrementGlobal("ux_voice_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333075 + label_108
END

IF ~~ THEN BEGIN label_108
  SAY @333071
  ++ @333072 + label_105
  ++ @333073 + label_106
  ++ @333074 + label_107
END

IF ~~ THEN BEGIN label_107
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_106
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_105
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~Global("ux_voice_is_bantering", "GLOBAL", 1) Global("ux_voice_banter_id", "GLOBAL", 1)~ THEN BEGIN label_114
  SAY @333076
  ++  @333070 DO ~IncrementGlobal("ux_voice_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333075 + label_113
END

IF ~~ THEN BEGIN label_113
  SAY @333071
  ++ @333072 + label_110
  ++ @333073 + label_111
  ++ @333074 + label_112
END

IF ~~ THEN BEGIN label_112
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_111
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_110
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_voice_is_bantering", "GLOBAL", 1) !Global("ux_voice_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_115
  SAY @333087
  IF ~True()~ DO ~SetGlobal("ux_voice_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_voice_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_118
  SAY @333088
  ++ @333089 + label_117
  ++ @333083 EXIT
END

IF ~~ THEN BEGIN label_117
  SAY @333079
  ++ @333081 + label_116
END

IF ~~ THEN BEGIN label_116
  SAY @333080
  IF ~~ THEN EXIT
END