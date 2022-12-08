BEGIN uxolr

// BEGIN Prelude segment
IF ~!Global("uxolrunPrelude", "GLOBALS", 1)~ THEN BEGIN prelude
  SAY @0001
  ++ @0002 + prelude2
  ++ @0003 + prelude3
END

IF ~~ THEN BEGIN prelude2
  SAY @0004
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN prelude3
  SAY @0005
  IF ~~ THEN EXIT
END
// END Prelude segment


// BEGIN Party Join
IF ~True()~ THEN BEGIN FirstMeeting
  SAY @0020
  IF ~!Global("ux_group_join_deny", "GLOBALS", 1)~ THEN
  REPLY @0022 + BigGreet
  IF ~Global("ux_group_join_deny", "GLOBALS", 1)~ THEN
  REPLY @0022 + Greet
  ++ @0021 + GoAway
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
  IF ~!Global("ux_group_join_deny", "GLOBALS", 1)~ THEN
  REPLY @0024 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 1)
               SetGlobal("ux_request_group_join", "GLOBALS", 1)
               JoinParty()~ EXIT
  ++ @0027 DO ~SetGlobal("ux_in_party_olrun", "LOCALS", 1)
               SetGlobal("ux_group_join_deny", "GLOBALS", 1)
               JoinParty()~ EXIT
  ++ @0025 + GoAway
END

IF ~~ THEN BEGIN GoAway
  SAY @0026
  IF ~~ THEN EXIT
END
// END Party Join
