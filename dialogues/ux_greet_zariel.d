BEGIN uxzar


IF ~Global("ux_zariel_sleeping", "LOCALS", 1)~ THEN BEGIN label_30
  SAY @333035
  ++  @333036 DO ~SetGlobal("ux_zariel_sleeping", "LOCALS", 0)~   EXIT
  ++ @333037 EXIT
END

IF ~Global("ux_prelude_done", "GLOBAL", 1)~ THEN BEGIN label_38
  SAY @333038
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333040   + label_33
  IF ~Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333040   + label_36
  ++ @333042 + label_37
END

IF ~~ THEN BEGIN label_37
  SAY @333019
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_36
  SAY @333041
  IF ~~ THEN GOTO label_35
END

IF ~~ THEN BEGIN label_35
  SAY @333016
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333017 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) SetGlobal("ux_zariel_banter_timer", "GLOBAL", 5) JoinParty() CreateCreature("uxpea")~   EXIT
  ++  @333018 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) SetGlobal("ux_zariel_banter_timer", "GLOBAL", 5) JoinParty() CreateCreature("uxpea")~   EXIT
  ++ @333039 + label_34
END

IF ~~ THEN BEGIN label_34
  SAY @333019
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_33
  SAY @333015
  IF ~~ THEN GOTO label_32
END

IF ~~ THEN BEGIN label_32
  SAY @333016
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333017 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) SetGlobal("ux_zariel_banter_timer", "GLOBAL", 5) JoinParty() CreateCreature("uxpea")~   EXIT
  ++  @333018 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) SetGlobal("ux_zariel_banter_timer", "GLOBAL", 5) JoinParty() CreateCreature("uxpea")~   EXIT
  ++ @333039 + label_31
END

IF ~~ THEN BEGIN label_31
  SAY @333019
  IF ~~ THEN EXIT
END