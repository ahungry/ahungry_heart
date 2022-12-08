BEGIN uxath


// BEGIN Prelude segment
IF ~!Global("ux_prelude_athar", "GLOBALS", 1)~ THEN BEGIN prelude
  SAY @0006
  IF ~~ THEN EXIT
END
// END Prelude segment


// BEGIN Party Join
IF ~True()~ THEN BEGIN FirstMeeting
  SAY @0050
  ++ @0052 + Greet
  ++ @0051 + GoAway
END

IF ~~ THEN BEGIN Greet
  SAY @0053
  ++ @0054 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 1)
               SetGlobal("ux_request_group_join", "GLOBALS", 1)
               JoinParty()~ EXIT
  ++ @0057 DO ~SetGlobal("ux_in_party_athar", "LOCALS", 1)
               SetGlobal("ux_group_join_deny", "GLOBALS", 1)
               JoinParty()~ EXIT
  ++ @0055 + GoAway
END

IF ~~ THEN BEGIN GoAway
  SAY @0056
  IF ~~ THEN EXIT
END
// END Party Join
