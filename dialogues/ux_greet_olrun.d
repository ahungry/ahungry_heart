BEGIN uxolr


IF ~!Global("ux_prelude_done", "GLOBAL", 1)~ THEN BEGIN label_5
  SAY @000001
  ++ @000004 + label_2
  ++ @000006 + label_4
END

IF ~~ THEN BEGIN label_4
  SAY @000005
  IF ~~ THEN GOTO label_3
END

IF ~~ THEN BEGIN label_3
  SAY @000003
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_2
  SAY @000002
  IF ~~ THEN GOTO label_1
END

IF ~~ THEN BEGIN label_1
  SAY @000003
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN label_13
  SAY @000007
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @000014   + label_8
  IF ~Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @000014   + label_11
  ++ @000017 + label_12
END

IF ~~ THEN BEGIN label_12
  SAY @000016
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_11
  SAY @000015
  IF ~~ THEN GOTO label_10
END

IF ~~ THEN BEGIN label_10
  SAY @000009
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @000010 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 300) JoinParty()~   EXIT
  ++  @000011 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 300) JoinParty()~   EXIT
  ++ @000013 + label_9
END

IF ~~ THEN BEGIN label_9
  SAY @000012
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_8
  SAY @000008
  IF ~~ THEN GOTO label_7
END

IF ~~ THEN BEGIN label_7
  SAY @000009
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @000010 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 300) JoinParty()~   EXIT
  ++  @000011 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 300) JoinParty()~   EXIT
  ++ @000013 + label_6
END

IF ~~ THEN BEGIN label_6
  SAY @000012
  IF ~~ THEN EXIT
END