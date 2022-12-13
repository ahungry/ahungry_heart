BEGIN uxvoi


IF ~Global("ux_prelude_done", "GLOBAL", 1)~ THEN BEGIN label_29
  SAY @000023
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @000025   + label_24
  IF ~Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @000025   + label_27
  ++ @000027 + label_28
END

IF ~~ THEN BEGIN label_28
  SAY @000012
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_27
  SAY @000026
  IF ~~ THEN GOTO label_26
END

IF ~~ THEN BEGIN label_26
  SAY @000009
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @000010 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 300) JoinParty()~   EXIT
  ++  @000011 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 300) JoinParty()~   EXIT
  ++ @000024 + label_25
END

IF ~~ THEN BEGIN label_25
  SAY @000012
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_24
  SAY @000008
  IF ~~ THEN GOTO label_23
END

IF ~~ THEN BEGIN label_23
  SAY @000009
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @000010 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 300) JoinParty()~   EXIT
  ++  @000011 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 300) JoinParty()~   EXIT
  ++ @000024 + label_22
END

IF ~~ THEN BEGIN label_22
  SAY @000012
  IF ~~ THEN EXIT
END