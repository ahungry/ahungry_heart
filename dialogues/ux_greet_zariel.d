BEGIN uxzar


IF ~Global("ux_zariel_sleeping", "LOCALS", 1)~ THEN BEGIN label_30
  SAY @000028
  ++  @000029 DO ~SetGlobal("ux_zariel_sleeping", "LOCALS", 0)~   EXIT
  ++ @000030 EXIT
END

IF ~Global("ux_prelude_done", "GLOBAL", 1)~ THEN BEGIN label_38
  SAY @000031
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @000033   + label_33
  IF ~Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @000033   + label_36
  ++ @000035 + label_37
END

IF ~~ THEN BEGIN label_37
  SAY @000012
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_36
  SAY @000034
  IF ~~ THEN GOTO label_35
END

IF ~~ THEN BEGIN label_35
  SAY @000009
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @000010 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 300) JoinParty()~   EXIT
  ++  @000011 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 300) JoinParty()~   EXIT
  ++ @000032 + label_34
END

IF ~~ THEN BEGIN label_34
  SAY @000012
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_33
  SAY @000008
  IF ~~ THEN GOTO label_32
END

IF ~~ THEN BEGIN label_32
  SAY @000009
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @000010 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 300) JoinParty()~   EXIT
  ++  @000011 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 300) JoinParty()~   EXIT
  ++ @000032 + label_31
END

IF ~~ THEN BEGIN label_31
  SAY @000012
  IF ~~ THEN EXIT
END