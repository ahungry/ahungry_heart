BEGIN uxzarj


IF ~Global("ux_zariel_is_bantering", "GLOBAL", 1) Global("ux_zariel_banter_id", "GLOBAL", 0)~ THEN BEGIN label_81
  SAY @333069
  ++  @333070 DO ~IncrementGlobal("ux_zariel_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333075 + label_80
END

IF ~~ THEN BEGIN label_80
  SAY @333071
  ++ @333072 + label_77
  ++ @333073 + label_78
  ++ @333074 + label_79
END

IF ~~ THEN BEGIN label_79
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_78
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_77
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~Global("ux_zariel_is_bantering", "GLOBAL", 1) Global("ux_zariel_banter_id", "GLOBAL", 1)~ THEN BEGIN label_86
  SAY @333076
  ++  @333070 DO ~IncrementGlobal("ux_zariel_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333075 + label_85
END

IF ~~ THEN BEGIN label_85
  SAY @333071
  ++ @333072 + label_82
  ++ @333073 + label_83
  ++ @333074 + label_84
END

IF ~~ THEN BEGIN label_84
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_83
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_82
  SAY @333027
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_zariel_is_bantering", "GLOBAL", 1) !Global("ux_zariel_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_87
  SAY @333077
  IF ~True()~ DO ~SetGlobal("ux_zariel_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_zariel_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_96
  SAY @333078
  ++ @333082 + label_89
  ++ @333092 + label_95
  ++ @333093 EXIT
END

IF ~~ THEN BEGIN label_95
  SAY @333083
  IF ~OR(2) InParty("imoen2") InParty("imoen1")~ THEN
  REPLY @333085   + label_90
  IF ~InParty("imoen2")~ THEN
  REPLY @333086   + label_91
  IF ~InParty("imoen1")~ THEN
  REPLY @333087   + label_92
  IF ~InParty("uxana")~ THEN
  REPLY @333089   + label_93
  IF ~InParty("uxvoi")~ THEN
  REPLY @333091   + label_94
END

IF ~~ THEN BEGIN label_94
  SAY @333090
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_93
  SAY @333088
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_92
  SAY @333084
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_91
  SAY @333084
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_90
  SAY @333084
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_89
  SAY @333079
  ++ @333081 + label_88
END

IF ~~ THEN BEGIN label_88
  SAY @333080
  IF ~~ THEN EXIT
END