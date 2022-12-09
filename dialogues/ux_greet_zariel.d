BEGIN uxzar

// BEGIN Party Join
IF ~!Global("ux_awaken_zariel", "LOCALS", 1)~ THEN BEGIN WakeUp
  SAY @1010
  ++ @1011 DO ~SetGlobal("ux_awaken_zariel", "LOCALS", 1)~ EXIT
  ++ @1012 EXIT
END

IF ~Global("ux_prelude_done", "GLOBAL", 1)~ THEN BEGIN FirstMeeting
  SAY @0010
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @0012 + BigGreet
  IF ~Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @0012 + Greet
  ++ @0011 + GoAway
END

IF ~~ THEN BEGIN BigGreet
  SAY @0013
  IF ~~ THEN GOTO Recruit
END

IF ~~ THEN BEGIN Greet
  SAY @0018
  IF ~~ THEN GOTO Recruit
END

IF ~~ THEN BEGIN Recruit
  SAY @0019
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @0014 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 1)
               SetGlobal("ux_request_group_join", "GLOBAL", 1)
               JoinParty()~ EXIT
  ++ @0017 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 1)
               SetGlobal("ux_group_join_deny", "GLOBAL", 1)
               JoinParty()~ EXIT
  ++ @0015 + GoAway
END

IF ~~ THEN BEGIN GoAway
  SAY @0016
  IF ~~ THEN EXIT
END
// END Party Join
