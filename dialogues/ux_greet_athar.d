BEGIN uxath


IF ~Global("ux_prelude_done", "GLOBAL", 1)~ THEN BEGIN label_46
  SAY @333047
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333049   + label_41
  IF ~Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333049   + label_44
  ++ @333051 + label_45
END

IF ~~ THEN BEGIN label_45
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_44
  SAY @333050
  IF ~~ THEN GOTO label_43
END

IF ~~ THEN BEGIN label_43
  SAY @333020
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333021 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) SetGlobal("ux_athar_banter_timer", "GLOBAL", 5) JoinParty()~   EXIT
  ++  @333022 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) SetGlobal("ux_athar_banter_timer", "GLOBAL", 5) JoinParty()~   EXIT
  ++ @333048 + label_42
END

IF ~~ THEN BEGIN label_42
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_41
  SAY @333019
  IF ~~ THEN GOTO label_40
END

IF ~~ THEN BEGIN label_40
  SAY @333020
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333021 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) SetGlobal("ux_athar_banter_timer", "GLOBAL", 5) JoinParty()~   EXIT
  ++  @333022 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) SetGlobal("ux_athar_banter_timer", "GLOBAL", 5) JoinParty()~   EXIT
  ++ @333048 + label_39
END

IF ~~ THEN BEGIN label_39
  SAY @333023
  IF ~~ THEN EXIT
END