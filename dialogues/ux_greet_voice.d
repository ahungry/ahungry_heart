BEGIN uxvoi


IF ~Global("ux_prelude_done", "GLOBAL", 1)~ THEN BEGIN label_29
  SAY @333034
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333036   + label_24
  IF ~Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333036   + label_27
  ++ @333038 + label_28
END

IF ~~ THEN BEGIN label_28
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_27
  SAY @333037
  IF ~~ THEN GOTO label_26
END

IF ~~ THEN BEGIN label_26
  SAY @333020
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333021 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) SetGlobal("ux_voice_banter_timer", "GLOBAL", 5) JoinParty()~   EXIT
  ++  @333022 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) SetGlobal("ux_voice_banter_timer", "GLOBAL", 5) JoinParty()~   EXIT
  ++ @333035 + label_25
END

IF ~~ THEN BEGIN label_25
  SAY @333023
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_24
  SAY @333019
  IF ~~ THEN GOTO label_23
END

IF ~~ THEN BEGIN label_23
  SAY @333020
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333021 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) SetGlobal("ux_voice_banter_timer", "GLOBAL", 5) JoinParty()~   EXIT
  ++  @333022 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) SetGlobal("ux_voice_banter_timer", "GLOBAL", 5) JoinParty()~   EXIT
  ++ @333035 + label_22
END

IF ~~ THEN BEGIN label_22
  SAY @333023
  IF ~~ THEN EXIT
END