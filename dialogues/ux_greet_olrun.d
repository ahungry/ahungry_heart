BEGIN uxolr


IF ~!Global("ux_prelude_done", "GLOBAL", 1)~ THEN BEGIN label_5
  SAY @333008
  ++ @333011 + label_2
  ++ @333013 + label_4
END

IF ~~ THEN BEGIN label_4
  SAY @333012
  IF ~~ THEN GOTO label_3
END

IF ~~ THEN BEGIN label_3
  SAY @333010
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_2
  SAY @333009
  IF ~~ THEN GOTO label_1
END

IF ~~ THEN BEGIN label_1
  SAY @333010
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN label_13
  SAY @333014
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333021   + label_8
  IF ~Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333021   + label_11
  ++ @333024 + label_12
END

IF ~~ THEN BEGIN label_12
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_11
  SAY @333022
  IF ~~ THEN GOTO label_10
END

IF ~~ THEN BEGIN label_10
  SAY @333016
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333017 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) SetGlobal("ux_olrun_banter_timer", "GLOBAL", 5) JoinParty() CreateCreature("uxpea")~   EXIT
  ++  @333018 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) SetGlobal("ux_olrun_banter_timer", "GLOBAL", 5) JoinParty() CreateCreature("uxpea")~   EXIT
  ++ @333020 + label_9
END

IF ~~ THEN BEGIN label_9
  SAY @333019
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_8
  SAY @333015
  IF ~~ THEN GOTO label_7
END

IF ~~ THEN BEGIN label_7
  SAY @333016
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333017 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) SetGlobal("ux_olrun_banter_timer", "GLOBAL", 5) JoinParty() CreateCreature("uxpea")~   EXIT
  ++  @333018 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) SetGlobal("ux_olrun_banter_timer", "GLOBAL", 5) JoinParty() CreateCreature("uxpea")~   EXIT
  ++ @333020 + label_6
END

IF ~~ THEN BEGIN label_6
  SAY @333019
  IF ~~ THEN EXIT
END