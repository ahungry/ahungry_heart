BEGIN uxzar


IF ~Global("ux_zariel_sleeping", "LOCALS", 1)~ THEN BEGIN label_30
  SAY @333039
  ++  @333040 DO ~SetGlobal("ux_zariel_sleeping", "LOCALS", 0)~   EXIT
  ++ @333041 EXIT
END

IF ~Global("ux_prelude_done", "GLOBAL", 1)~ THEN BEGIN label_38
  SAY @333042
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333044   + label_33
  IF ~Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333044   + label_36
  ++ @333046 + label_37
END

IF ~~ THEN BEGIN label_37
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_36
  SAY @333045
  IF ~~ THEN GOTO label_35
END

IF ~~ THEN BEGIN label_35
  SAY @333020
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333021 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) SetGlobal("ux_zariel_banter_timer", "GLOBAL", 5) JoinParty()~   EXIT
  ++  @333022 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) SetGlobal("ux_zariel_banter_timer", "GLOBAL", 5) JoinParty()~   EXIT
  ++ @333043 + label_34
END

IF ~~ THEN BEGIN label_34
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_33
  SAY @333019
  IF ~~ THEN GOTO label_32
END

IF ~~ THEN BEGIN label_32
  SAY @333020
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333021 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) SetGlobal("ux_zariel_banter_timer", "GLOBAL", 5) JoinParty()~   EXIT
  ++  @333022 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) SetGlobal("ux_zariel_banter_timer", "GLOBAL", 5) JoinParty()~   EXIT
  ++ @333043 + label_31
END

IF ~~ THEN BEGIN label_31
  SAY @333023
  IF ~~ THEN EXIT
END