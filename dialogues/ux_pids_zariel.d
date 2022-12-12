BEGIN uxzarj


IF ~Global("ux_zariel_is_bantering", "GLOBAL", 1) Global("ux_zariel_banter_id", "GLOBAL", 0)~ THEN BEGIN label_81
  SAY @333065
  ++  @333066 DO ~IncrementGlobal("ux_zariel_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333071 + label_80
END

IF ~~ THEN BEGIN label_80
  SAY @333067
  ++ @333068 + label_77
  ++ @333069 + label_78
  ++ @333070 + label_79
END

IF ~~ THEN BEGIN label_79
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_78
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_77
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~Global("ux_zariel_is_bantering", "GLOBAL", 1) Global("ux_zariel_banter_id", "GLOBAL", 1)~ THEN BEGIN label_86
  SAY @333072
  ++  @333066 DO ~IncrementGlobal("ux_zariel_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333071 + label_85
END

IF ~~ THEN BEGIN label_85
  SAY @333067
  ++ @333068 + label_82
  ++ @333069 + label_83
  ++ @333070 + label_84
END

IF ~~ THEN BEGIN label_84
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_83
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_82
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_zariel_is_bantering", "GLOBAL", 1) !Global("ux_zariel_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_87
  SAY @333073
  IF ~True()~ DO ~SetGlobal("ux_zariel_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_zariel_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_96
  SAY @333074
  ++ @333078 + label_89
  ++ @333088 + label_95
  ++ @333089 EXIT
END

IF ~~ THEN BEGIN label_95
  SAY @333079
  IF ~OR(2) InParty("imoen2") InParty("imoen1")~ THEN
  REPLY @333081   + label_90
  IF ~InParty("imoen2")~ THEN
  REPLY @333082   + label_91
  IF ~InParty("imoen1")~ THEN
  REPLY @333083   + label_92
  IF ~InParty("uxana")~ THEN
  REPLY @333085   + label_93
  IF ~InParty("uxvoi")~ THEN
  REPLY @333087   + label_94
END

IF ~~ THEN BEGIN label_94
  SAY @333086
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_93
  SAY @333084
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_92
  SAY @333080
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_91
  SAY @333080
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_90
  SAY @333080
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_89
  SAY @333075
  ++ @333077 + label_88
END

IF ~~ THEN BEGIN label_88
  SAY @333076
  IF ~~ THEN EXIT
END