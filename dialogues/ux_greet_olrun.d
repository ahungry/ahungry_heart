BEGIN uxolr


IF ~!Global("ux_prelude_done", "GLOBAL", 1)~ THEN BEGIN label_5
  SAY @333012
  ++ @333015 + label_2
  ++ @333017 + label_4
END

IF ~~ THEN BEGIN label_4
  SAY @333016
  IF ~~ THEN GOTO label_3
END

IF ~~ THEN BEGIN label_3
  SAY @333014
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_2
  SAY @333013
  IF ~~ THEN GOTO label_1
END

IF ~~ THEN BEGIN label_1
  SAY @333014
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN label_13
  SAY @333018
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333025   + label_8
  IF ~Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333025   + label_11
  ++ @333028 + label_12
END

IF ~~ THEN BEGIN label_12
  SAY @333027
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_11
  SAY @333026
  IF ~~ THEN GOTO label_10
END

IF ~~ THEN BEGIN label_10
  SAY @333020
  ++  @333021 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) SetGlobal("ux_olrun_banter_timer", "GLOBAL", 5) JoinParty()~ EXIT 
  ++  @333022 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) SetGlobal("ux_olrun_banter_timer", "GLOBAL", 5) JoinParty()~ EXIT 
  ++ @333024 + label_9
END

IF ~~ THEN BEGIN label_9
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_8
  SAY @333019
  IF ~~ THEN GOTO label_7
END

IF ~~ THEN BEGIN label_7
  SAY @333020
  ++  @333021 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) SetGlobal("ux_olrun_banter_timer", "GLOBAL", 5) JoinParty()~ EXIT 
  ++  @333022 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) SetGlobal("ux_olrun_banter_timer", "GLOBAL", 5) JoinParty()~ EXIT 
  ++ @333024 + label_6
END

IF ~~ THEN BEGIN label_6
  SAY @333023
  IF ~~ THEN EXIT
END