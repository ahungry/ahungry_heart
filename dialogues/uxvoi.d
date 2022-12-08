BEGIN uxvoi

// BEGIN Prelude segment
IF ~!Global("ux_prelude_voice", "GLOBALS", 1)~ THEN BEGIN prelude
  SAY @0008
  IF ~~ THEN EXIT
END
// END Prelude segment


// BEGIN Party Join
IF ~True()~ THEN BEGIN FirstMeeting
  SAY @0030
  ++ @0032 + Greet
  ++ @0031 + GoAway
END

IF ~~ THEN BEGIN Greet
  SAY @0033
  IF ~!Global("ux_group_join_deny", "GLOBALS", 1)~ THEN
  REPLY @0034 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 1)
               SetGlobal("ux_request_group_join", "GLOBALS", 1)
               JoinParty()~ EXIT
  ++ @0037 DO ~SetGlobal("ux_in_party_voice", "LOCALS", 1)
               SetGlobal("ux_group_join_deny", "GLOBALS", 1)
               JoinParty()~ EXIT
  ++ @0035 + GoAway
END

IF ~~ THEN BEGIN GoAway
  SAY @0036
  IF ~~ THEN EXIT
END
// END Party Join
