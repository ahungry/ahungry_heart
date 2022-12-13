BEGIN uxana


IF ~Global("ux_prelude_done", "GLOBAL", 1)~ THEN BEGIN label_21
  SAY @000018
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @000020   + label_16
  IF ~Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @000020   + label_19
  ++ @000022 + label_20
END

IF ~~ THEN BEGIN label_20
  SAY @000012
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_19
  SAY @000021
  IF ~~ THEN GOTO label_18
END

IF ~~ THEN BEGIN label_18
  SAY @000009
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @000010 DO ~SetGlobal("ux_in_party_anari", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 300) JoinParty()~   EXIT
  ++  @000011 DO ~SetGlobal("ux_in_party_anari", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 300) JoinParty()~   EXIT
  ++ @000019 + label_17
END

IF ~~ THEN BEGIN label_17
  SAY @000012
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_16
  SAY @000008
  IF ~~ THEN GOTO label_15
END

IF ~~ THEN BEGIN label_15
  SAY @000009
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @000010 DO ~SetGlobal("ux_in_party_anari", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 300) JoinParty()~   EXIT
  ++  @000011 DO ~SetGlobal("ux_in_party_anari", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 300) JoinParty()~   EXIT
  ++ @000019 + label_14
END

IF ~~ THEN BEGIN label_14
  SAY @000012
  IF ~~ THEN EXIT
END