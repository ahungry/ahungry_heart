BEGIN uxath


IF ~Global("ux_prelude_done", "GLOBAL", 1)~ THEN BEGIN label_46
  SAY @333043
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333045   + label_41
  IF ~Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333045   + label_44
  ++ @333047 + label_45
END

IF ~~ THEN BEGIN label_45
  SAY @333019
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_44
  SAY @333046
  IF ~~ THEN GOTO label_43
END

IF ~~ THEN BEGIN label_43
  SAY @333016
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333017 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) SetGlobal("ux_athar_banter_timer", "GLOBAL", 5) JoinParty()~   EXIT
  ++  @333018 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) SetGlobal("ux_athar_banter_timer", "GLOBAL", 5) JoinParty()~   EXIT
  ++ @333044 + label_42
END

IF ~~ THEN BEGIN label_42
  SAY @333019
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_41
  SAY @333015
  IF ~~ THEN GOTO label_40
END

IF ~~ THEN BEGIN label_40
  SAY @333016
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333017 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) SetGlobal("ux_athar_banter_timer", "GLOBAL", 5) JoinParty()~   EXIT
  ++  @333018 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) SetGlobal("ux_athar_banter_timer", "GLOBAL", 5) JoinParty()~   EXIT
  ++ @333044 + label_39
END

IF ~~ THEN BEGIN label_39
  SAY @333019
  IF ~~ THEN EXIT
END