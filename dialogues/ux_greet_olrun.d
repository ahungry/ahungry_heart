BEGIN uxolr


IF ~Global("ux_state", "GLOBAL", 0)~ THEN BEGIN label_5
  SAY @000001
  ++ @000004 + label_2
  ++ @000006 + label_4
END

IF ~~ THEN BEGIN label_4
  SAY @000005
  IF ~~ THEN GOTO label_3
END

IF ~~ THEN BEGIN label_3
  SAY @000003
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_2
  SAY @000002
  IF ~~ THEN GOTO label_1
END

IF ~~ THEN BEGIN label_1
  SAY @000003
  IF ~~ THEN EXIT
END


IF ~Global("ux_state", "GLOBAL", 10)~ THEN BEGIN label_6
  SAY @000109
  IF ~~ THEN EXIT
END


IF ~GlobalGT("ux_state", "GLOBAL", 19)~ THEN BEGIN label_14
  SAY @000007
  IF ~Global("ux_state", "GLOBAL", 20)~ THEN
  REPLY @000014   + label_9
  IF ~!Global("ux_state", "GLOBAL", 20)~ THEN
  REPLY @000014   + label_12
  ++ @000017 + label_13
END

IF ~~ THEN BEGIN label_13
  SAY @000016
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_12
  SAY @000015
  IF ~~ THEN GOTO label_11
END

IF ~~ THEN BEGIN label_11
  SAY @000009
  IF ~Global("ux_state", "GLOBAL", 20)~ THEN
  REPLY @000110 DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 300) RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 300) RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 300) RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 300) RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 300) ActionOverride("uxana", JoinParty()) ActionOverride("uxath", JoinParty()) ActionOverride("uxzar", JoinParty()) ActionOverride("uxolr", JoinParty()) ActionOverride("uxvoi", JoinParty()) IncrementGlobal("ux_state", "GLOBAL", 10)~   EXIT
  ++  @000011 DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 300) JoinParty() IncrementGlobal("ux_state", "GLOBAL", 10)~   EXIT
  ++ @000013 + label_10
END

IF ~~ THEN BEGIN label_10
  SAY @000012
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_9
  SAY @000008
  IF ~~ THEN GOTO label_8
END

IF ~~ THEN BEGIN label_8
  SAY @000009
  IF ~Global("ux_state", "GLOBAL", 20)~ THEN
  REPLY @000110 DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 300) RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 300) RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 300) RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 300) RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 300) ActionOverride("uxana", JoinParty()) ActionOverride("uxath", JoinParty()) ActionOverride("uxzar", JoinParty()) ActionOverride("uxolr", JoinParty()) ActionOverride("uxvoi", JoinParty()) IncrementGlobal("ux_state", "GLOBAL", 10)~   EXIT
  ++  @000011 DO ~RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 300) JoinParty() IncrementGlobal("ux_state", "GLOBAL", 10)~   EXIT
  ++ @000013 + label_7
END

IF ~~ THEN BEGIN label_7
  SAY @000012
  IF ~~ THEN EXIT
END