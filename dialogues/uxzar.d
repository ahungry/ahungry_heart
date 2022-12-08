BEGIN uxzar

IF ~!Global("ux_prelude_zariel", "GLOBALS", 1)~ THEN BEGIN prelude
  SAY @0007
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN FirstMeeting
  SAY @0010
  ++ @0012 + Greet
  ++ @0011 + GoAway
END

IF ~~ THEN BEGIN Greet
  SAY @0013
  ++ @0014 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 1)
               SetGlobal("ux_request_group_join", "GLOBALS", 1)
               JoinParty()~ EXIT
  ++ @0017 DO ~SetGlobal("ux_in_party_zariel", "LOCALS", 1)
               JoinParty()~ EXIT
  ++ @0015 + GoAway
END

IF ~~ THEN BEGIN GoAway
  SAY @0016
  IF ~~ THEN EXIT
END
