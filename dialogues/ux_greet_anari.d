BEGIN uxana


IF ~Global("ux_state", "GLOBAL", 10)~ THEN BEGIN label_15
  SAY @000111
  IF ~~ THEN EXIT
END


IF ~GlobalGT("ux_state", "GLOBAL", 19)~ THEN BEGIN label_23
  SAY @000018
  IF ~Global("ux_state", "GLOBAL", 20)~ THEN
  REPLY @000020   + label_18
  IF ~!Global("ux_state", "GLOBAL", 20)~ THEN
  REPLY @000020   + label_21
  ++ @000022 + label_22
END

IF ~~ THEN BEGIN label_22
  SAY @000012
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_21
  SAY @000021
  IF ~~ THEN GOTO label_20
END

IF ~~ THEN BEGIN label_20
  SAY @000009
  IF ~Global("ux_state", "GLOBAL", 20)~ THEN
  REPLY @000110 DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 300) RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 300) RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 300) RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 300) RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 300) ActionOverride("uxana", JoinParty()) ActionOverride("uxath", JoinParty()) ActionOverride("uxzar", JoinParty()) ActionOverride("uxolr", JoinParty()) ActionOverride("uxvoi", JoinParty()) IncrementGlobal("ux_state", "GLOBAL", 10)~   EXIT
  ++  @000011 DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 300) JoinParty() IncrementGlobal("ux_state", "GLOBAL", 10)~   EXIT
  ++ @000019 + label_19
END

IF ~~ THEN BEGIN label_19
  SAY @000012
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN label_18
  SAY @000008
  IF ~~ THEN GOTO label_17
END

IF ~~ THEN BEGIN label_17
  SAY @000009
  IF ~Global("ux_state", "GLOBAL", 20)~ THEN
  REPLY @000110 DO ~RealSetGlobalTimer("ux_athar_banter_timer", "GLOBAL", 300) RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 300) RealSetGlobalTimer("ux_voice_banter_timer", "GLOBAL", 300) RealSetGlobalTimer("ux_olrun_banter_timer", "GLOBAL", 300) RealSetGlobalTimer("ux_zariel_banter_timer", "GLOBAL", 300) ActionOverride("uxana", JoinParty()) ActionOverride("uxath", JoinParty()) ActionOverride("uxzar", JoinParty()) ActionOverride("uxolr", JoinParty()) ActionOverride("uxvoi", JoinParty()) IncrementGlobal("ux_state", "GLOBAL", 10)~   EXIT
  ++  @000011 DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 300) JoinParty() IncrementGlobal("ux_state", "GLOBAL", 10)~   EXIT
  ++ @000019 + label_16
END

IF ~~ THEN BEGIN label_16
  SAY @000012
  IF ~~ THEN EXIT
END