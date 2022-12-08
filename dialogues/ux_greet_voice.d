BEGIN uxvoi

// BEGIN Prelude segment
// IF ~!Global("ux_prelude_voice", "GLOBAL", 1)~ THEN BEGIN prelude
//   SAY @0008
//   IF ~~ THEN EXIT
// END
// END Prelude segment


// BEGIN Party Join
IF ~Global("ux_prelude_voice", "GLOBAL", 1)~ THEN BEGIN FirstMeeting
  SAY @0030
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @0032 + BigGreet
  IF ~Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @0032 + Greet
  ++ @0031 + GoAway
END

IF ~~ THEN BEGIN BigGreet
  SAY @0033
  IF ~~ THEN GOTO Recruit
END

IF ~~ THEN BEGIN Greet
  SAY @0038
  IF ~~ THEN GOTO Recruit
END

IF ~~ THEN BEGIN Recruit
  SAY @0039
  IF ~!Global("ux_group_join_deny", "GLOBAL", 1)~ THEN
  REPLY @0034 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 1)
               SetGlobal("ux_request_group_join", "GLOBAL", 1)
               JoinParty()~ EXIT
  ++ @0037 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 1)
               SetGlobal("ux_group_join_deny", "GLOBAL", 1)
               JoinParty()~ EXIT
  ++ @0035 + GoAway
END

IF ~~ THEN BEGIN GoAway
  SAY @0036
  IF ~~ THEN EXIT
END
// END Party Join
