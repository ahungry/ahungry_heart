BEGIN uxath


IF ~Global("ux_prelude_done", "GLOBAL", 1)~ THEN BEGIN label_46
  SAY @000036
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @000038   + label_41
  IF ~Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @000038   + label_44
  ++ @000040 + label_45
END

IF ~~ THEN BEGIN label_45
  SAY @000012
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_44
  SAY @000039
  IF ~~ THEN GOTO label_43
END

IF ~~ THEN BEGIN label_43
  SAY @000009
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @000010 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 300) JoinParty()~   EXIT
  ++  @000011 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 300) JoinParty()~   EXIT
  ++ @000037 + label_42
END

IF ~~ THEN BEGIN label_42
  SAY @000012
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_41
  SAY @000008
  IF ~~ THEN GOTO label_40
END

IF ~~ THEN BEGIN label_40
  SAY @000009
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @000010 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 300) JoinParty()~   EXIT
  ++  @000011 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 300) JoinParty()~   EXIT
  ++ @000037 + label_39
END

IF ~~ THEN BEGIN label_39
  SAY @000012
  IF ~~ THEN EXIT
END