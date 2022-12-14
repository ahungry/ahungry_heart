BEGIN uxzarj


IF ~Global("ux_zariel_is_bantering", "GLOBAL", 1) Global("ux_zariel_banter_id", "GLOBAL", 0)~ THEN BEGIN label_93
  SAY @000061
  ++  @000062 DO ~IncrementGlobal("ux_zariel_banter_id", "GLOBAL", 1)~   EXIT
  ++ @000067 + label_92
END

IF ~~ THEN BEGIN label_92
  SAY @000063
  ++ @000064 + label_89
  ++ @000065 + label_90
  ++ @000066 + label_91
END

IF ~~ THEN BEGIN label_91
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_90
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_89
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~Global("ux_zariel_is_bantering", "GLOBAL", 1) Global("ux_zariel_banter_id", "GLOBAL", 1)~ THEN BEGIN label_98
  SAY @000068
  ++  @000062 DO ~IncrementGlobal("ux_zariel_banter_id", "GLOBAL", 1)~   EXIT
  ++ @000067 + label_97
END

IF ~~ THEN BEGIN label_97
  SAY @000063
  ++ @000064 + label_94
  ++ @000065 + label_95
  ++ @000066 + label_96
END

IF ~~ THEN BEGIN label_96
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_95
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_94
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_zariel_is_bantering", "GLOBAL", 1) !Global("ux_zariel_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_99
  SAY @000069
  IF ~True()~ DO ~SetGlobal("ux_zariel_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_zariel_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_108
  SAY @000070
  ++ @000074 + label_101
  ++ @000084 + label_107
  ++ @000085 EXIT
END

IF ~~ THEN BEGIN label_107
  SAY @000075
  IF ~OR(2) InParty("imoen2") InParty("imoen1")~ THEN
  REPLY @000077   + label_102
  IF ~InParty("imoen2")~ THEN
  REPLY @000078   + label_103
  IF ~InParty("imoen1")~ THEN
  REPLY @000079   + label_104
  IF ~InParty("uxana")~ THEN
  REPLY @000081   + label_105
  IF ~InParty("uxvoi")~ THEN
  REPLY @000083   + label_106
END

IF ~~ THEN BEGIN label_106
  SAY @000082
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_105
  SAY @000080
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_104
  SAY @000076
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_103
  SAY @000076
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_102
  SAY @000076
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_101
  SAY @000071
  ++ @000073 + label_100
END

IF ~~ THEN BEGIN label_100
  SAY @000072
  IF ~~ THEN EXIT
END