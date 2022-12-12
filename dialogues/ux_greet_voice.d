BEGIN uxvoi


IF ~Global("ux_prelude_done", "GLOBAL", 1)~ THEN BEGIN label_29
  SAY @333030
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333032   + label_24
  IF ~Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333032   + label_27
  ++ @333034 + label_28
END

IF ~~ THEN BEGIN label_28
  SAY @333019
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_27
  SAY @333033
  IF ~~ THEN GOTO label_26
END

IF ~~ THEN BEGIN label_26
  SAY @333016
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333017 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) SetGlobal("ux_voice_banter_timer", "GLOBAL", 5) JoinParty()~   EXIT
  ++  @333018 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) SetGlobal("ux_voice_banter_timer", "GLOBAL", 5) JoinParty()~   EXIT
  ++ @333031 + label_25
END

IF ~~ THEN BEGIN label_25
  SAY @333019
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_24
  SAY @333015
  IF ~~ THEN GOTO label_23
END

IF ~~ THEN BEGIN label_23
  SAY @333016
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @333017 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 1) SetGlobal("ux_request_group_join", "GLOBAL", 1) SetGlobal("ux_voice_banter_timer", "GLOBAL", 5) JoinParty()~   EXIT
  ++  @333018 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 1) SetGlobal("ux_group_join_deny", "GLOBAL", 1) SetGlobal("ux_voice_banter_timer", "GLOBAL", 5) JoinParty()~   EXIT
  ++ @333031 + label_22
END

IF ~~ THEN BEGIN label_22
  SAY @333019
  IF ~~ THEN EXIT
END