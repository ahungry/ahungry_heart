BEGIN uxzarj


IF ~Global("ux_zariel_is_bantering", "GLOBAL", 1) Global("ux_zariel_banter_id", "GLOBAL", 0)~ THEN BEGIN label_98
  SAY @000061
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

IF ~Global("ux_zariel_is_bantering", "GLOBAL", 1) Global("ux_zariel_banter_id", "GLOBAL", 1)~ THEN BEGIN label_103
  SAY @000068
  ++  @000062 DO ~IncrementGlobal("ux_zariel_banter_id", "GLOBAL", 1)~   EXIT
  ++ @000067 + label_102
END

IF ~~ THEN BEGIN label_102
  SAY @000063
  ++ @000064 + label_99
  ++ @000065 + label_100
  ++ @000066 + label_101
END

IF ~~ THEN BEGIN label_101
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 1)~ EXIT
END

IF ~~ THEN BEGIN label_100
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 3600)~ EXIT
END

IF ~~ THEN BEGIN label_99
  SAY @000016
  IF ~True()~ DO ~RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 180)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_zariel_is_bantering", "GLOBAL", 1) !Global("ux_zariel_is_pidding", "GLOBAL", 1)~ THEN BEGIN label_104
  SAY @000069
  IF ~True()~ DO ~SetGlobal("ux_zariel_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1) !Global("ux_zariel_is_bantering", "GLOBAL", 1)~ THEN BEGIN label_113
  SAY @000070
  ++ @000074 + label_106
  ++ @000084 + label_112
  ++ @000085 EXIT
END

IF ~~ THEN BEGIN label_112
  SAY @000075
  IF ~OR(2) InParty("imoen2") InParty("imoen1")~ THEN
  REPLY @000077   + label_107
  IF ~InParty("imoen2")~ THEN
  REPLY @000078   + label_108
  IF ~InParty("imoen1")~ THEN
  REPLY @000079   + label_109
  IF ~InParty("uxana")~ THEN
  REPLY @000081   + label_110
  IF ~InParty("uxvoi")~ THEN
  REPLY @000083   + label_111
END

IF ~~ THEN BEGIN label_111
  SAY @000082
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_110
  SAY @000080
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_109
  SAY @000076
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_108
  SAY @000076
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_107
  SAY @000076
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_106
  SAY @000071
  ++ @000073 + label_105
END

IF ~~ THEN BEGIN label_105
  SAY @000072
  IF ~~ THEN EXIT
END