BEGIN uxzarj


IF ~Global("ux_zariel_is_bantering", "GLOBAL", 1) Global("ux_zariel_banter_id", "GLOBAL", 0)~ THEN BEGIN label_82
  SAY @333067
  ++  @333068 DO ~IncrementGlobal("ux_zariel_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333073 + label_81
END

IF ~~ THEN BEGIN label_81
  SAY @333069
  ++ @333070 + label_78
  ++ @333071 + label_79
  ++ @333072 + label_80
END

IF ~~ THEN BEGIN label_80
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_79
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_78
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~Global("ux_zariel_is_bantering", "GLOBAL", 1) Global("ux_zariel_banter_id", "GLOBAL", 1)~ THEN BEGIN label_87
  SAY @333074
  ++  @333068 DO ~IncrementGlobal("ux_zariel_banter_id", "GLOBAL", 1)~   EXIT
  ++ @333073 + label_86
END

IF ~~ THEN BEGIN label_86
  SAY @333069
  ++ @333070 + label_83
  ++ @333071 + label_84
  ++ @333072 + label_85
END

IF ~~ THEN BEGIN label_85
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_84
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ THEN BEGIN label_83
  SAY @333023
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_zariel_is_bantering", "GLOBAL", 1) !Global("ux_zariel_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_88
  SAY @333075
  IF ~True()~ DO ~SetGlobal("ux_zariel_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_zariel_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_97
  SAY @333076
  ++ @333080 + label_90
  ++ @333090 + label_96
  ++ @333091 EXIT
END

IF ~~ THEN BEGIN label_96
  SAY @333081
  IF ~OR(2) InParty("imoen2") InParty("imoen1")~ THEN
  REPLY @333083   + label_91
  IF ~InParty("imoen2")~ THEN
  REPLY @333084   + label_92
  IF ~InParty("imoen1")~ THEN
  REPLY @333085   + label_93
  IF ~InParty("uxana")~ THEN
  REPLY @333087   + label_94
  IF ~InParty("uxvoi")~ THEN
  REPLY @333089   + label_95
END

IF ~~ THEN BEGIN label_95
  SAY @333088
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_94
  SAY @333086
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_93
  SAY @333082
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_92
  SAY @333082
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_91
  SAY @333082
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_90
  SAY @333077
  ++ @333079 + label_89
END

IF ~~ THEN BEGIN label_89
  SAY @333078
  IF ~~ THEN EXIT
END