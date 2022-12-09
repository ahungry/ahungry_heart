BEGIN uxolr

// BEGIN Prelude segment
IF ~!Global("ux_prelude_done", "GLOBAL", 1)~ THEN BEGIN prelude
  SAY @110001
  ++ @980002 + prelude2
  ++ @980003 + prelude3
END

IF ~~ THEN BEGIN prelude2
  SAY @110004
  IF ~~ THEN GOTO prelude4
  // IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN prelude3
  SAY @110005
  IF ~~ THEN GOTO prelude4
  // IF ~~ THEN EXIT
END

// Stub for INTERJECT_COPY_TRANS to be inserted
IF ~~ THEN BEGIN prelude4
  SAY @110060
  IF ~~ THEN EXIT
END
// END Prelude segment


// BEGIN Party Join
IF ~True()~ THEN BEGIN FirstMeeting
  SAY @110020
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @980022 + BigGreet
  IF ~Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @980022 + Greet
  ++ @980021 + GoAway
END

IF ~~ THEN BEGIN BigGreet
  SAY @0023
  IF ~~ THEN GOTO Recruit
END

IF ~~ THEN BEGIN Greet
  SAY @0028
  IF ~~ THEN GOTO Recruit
END

IF ~~ THEN BEGIN Recruit
  SAY @0029
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @0024 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 1)
               SetGlobal("ux_request_group_join", "GLOBAL", 1)
               SetGlobal("ux_olrun_banter_timer", "GLOBAL", 5)
               JoinParty()~ EXIT
  ++ @0027 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 1)
               SetGlobal("ux_group_join_deny", "GLOBAL", 1)
               SetGlobal("ux_olrun_banter_timer", "GLOBAL", 5)
               JoinParty()~ EXIT
  ++ @0025 + GoAway
END

IF ~~ THEN BEGIN GoAway
  SAY @0026
  IF ~~ THEN EXIT
END
// END Party Join
