BEGIN uxolr

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

// IF ~NumTimesTalkedTo(0)
// IF ~Global("uxolrunPrelude", "GLOBALS", 1)~ THEN BEGIN FirstMeeting
IF ~True()~ THEN BEGIN FirstMeeting
  SAY ~Hail friend, it is I, Olrun.  Have you a moment?~ [uxolr01]

  IF ~GlobalLT("Chapter","GLOBAL",3)~ THEN
    REPLY ~Hey Olrun, you seen Irenicus around here?~ GOTO InquireIrenicus

  IF ~~ THEN
    REPLY ~Heya.~ GOTO Greet

  IF ~Class(Player1,FIGHTER)~ THEN
    REPLY ~I know a fighter when I see one!~ GOTO BothFighters

  IF ~~ THEN
    REPLY ~Go away.~ GOTO GoAway
END

IF ~~ THEN
  BEGIN InquireIrenicus
    SAY ~Nope, but I can help you look for him. I'm a fighter!~ [uxolr00]

    IF ~~ THEN
      REPLY ~Sure. Join the party~
        DO ~
          SetGlobal("OlrunJoined","LOCALS",1)
          JoinParty()
        ~ EXIT

    IF ~~ THEN
      REPLY ~Nah, go away.~ EXIT
END

IF ~~ THEN
  BEGIN Greet
    SAY ~So, you need a fighter in your group?~ [uxolr00]

    IF ~~ THEN
      REPLY ~Yes, as a matter of fact we do.~
        DO ~
          SetGlobal("OlrunJoined","LOCALS",1)
          JoinParty()
        ~ EXIT

    IF ~~ THEN
      REPLY ~Nah, go away.~ EXIT
END

IF ~~ THEN
  BEGIN BothFighters
    SAY ~Another fighter! Hail and well met brother. Let us journey together and smite evil.~ [uxolr00]

    IF ~~ THEN
      REPLY ~Sounds like a plan.~
      DO ~
        SetGlobal("OlrunJoined","LOCALS",1)
        JoinParty()
      ~ EXIT

     IF ~~ THEN
       REPLY ~Nah, go away.~ EXIT
END

IF ~~ THEN
  BEGIN GoAway
    SAY ~Very well my <LADYLORD>, I will await the day when you return, so that we might smite evil!~ [uxolr00]

  IF ~~ THEN EXIT
END
