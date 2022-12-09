BEGIN uxana

// BEGIN Party Join
IF ~Global("ux_prelude_done", "GLOBAL", 1)~ THEN BEGIN FirstMeeting
  SAY @0040
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @0042 + BigGreet
  IF ~Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @0042 + Greet
  ++ @0041 + GoAway
END

IF ~~ THEN BEGIN BigGreet
  SAY @0043
  IF ~~ THEN GOTO Recruit
END

IF ~~ THEN BEGIN Greet
  SAY @0048
  IF ~~ THEN GOTO Recruit
END

IF ~~ THEN BEGIN Recruit
  SAY @0049
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @0044 DO ~SetGlobal("ux_in_party_anari", "LOCALS", 1)
               SetGlobal("ux_request_group_join", "GLOBAL", 1)
               JoinParty()~ EXIT
  ++ @0047 DO ~SetGlobal("ux_in_party_anari", "LOCALS", 1)
               SetGlobal("ux_group_join_deny", "GLOBAL", 1)
               JoinParty()~ EXIT
  ++ @0045 + GoAway
END

IF ~~ THEN BEGIN GoAway
  SAY @0046
  IF ~~ THEN EXIT
END
// END Party Join
