BEGIN uxana


IF ~Global("ux_prelude_done", "GLOBAL", 1)~ THEN BEGIN label_21
  SAY @333029
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333031   + label_16
  IF ~Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333031   + label_19
  ++ @333033 + label_20
END

IF ~~ THEN BEGIN label_20
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_19
  SAY @333032
  IF ~~ THEN GOTO label_18
END

IF ~~ THEN BEGIN label_18
  SAY @333020
  ++  @333021 DO ~SetGlobal("ux_in_party_anari", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) SetGlobal("ux_anari_banter_timer", "GLOBAL", 5) JoinParty()~ EXIT 
  ++  @333022 DO ~SetGlobal("ux_in_party_anari", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) SetGlobal("ux_anari_banter_timer", "GLOBAL", 5) JoinParty()~ EXIT 
  ++ @333030 + label_17
END

IF ~~ THEN BEGIN label_17
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_16
  SAY @333019
  IF ~~ THEN GOTO label_15
END

IF ~~ THEN BEGIN label_15
  SAY @333020
  ++  @333021 DO ~SetGlobal("ux_in_party_anari", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) SetGlobal("ux_anari_banter_timer", "GLOBAL", 5) JoinParty()~ EXIT 
  ++  @333022 DO ~SetGlobal("ux_in_party_anari", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) SetGlobal("ux_anari_banter_timer", "GLOBAL", 5) JoinParty()~ EXIT 
  ++ @333030 + label_14
END

IF ~~ THEN BEGIN label_14
  SAY @333023
  IF ~~ THEN EXIT
END