BEGIN uxana


IF ~!Global("uxanaPrelude", "GLOBALS", 1)~ THEN BEGIN prelude
  SAY @0009
  IF ~~ THEN EXIT
END

IF ~True()~ THEN
  BEGIN FirstMeeting
    SAY ~You there, hero.  I have an important message for you.  I'm Anari and I seek your assistance~ [uxana01]

    IF ~GlobalLT("Chapter","GLOBAL",3)~ THEN
      REPLY ~Hey Anari, you seen Irenicus around here?~ GOTO InquireIrenicus

    IF ~~ THEN
      REPLY ~Heya.~ GOTO Greet

    IF ~Class(Player1,RANGER)~ THEN
      REPLY ~I know a ranger when I see one!~ GOTO BothRangers

    IF ~~ THEN
      REPLY ~Go away.~ GOTO GoAway
END

IF ~~ THEN
  BEGIN InquireIrenicus
    SAY ~Nope, but I can help you look for him. I'm a ranger!~ [uxana00]

    IF ~~ THEN
      REPLY ~Sure. Join the party~
        DO ~
          SetGlobal("AnariJoined","LOCALS",1)
          JoinParty()
        ~ EXIT

    IF ~~ THEN
      REPLY ~Nah, go away.~ EXIT
END

IF ~~ THEN
  BEGIN Greet
    SAY ~So, you need a ranger in your group?~ [uxana00]

    IF ~~ THEN
      REPLY ~Yes, as a matter of fact we do.~
        DO ~
          SetGlobal("AnariJoined","LOCALS",1)
          JoinParty()
        ~ EXIT

    IF ~~ THEN
      REPLY ~Nah, go away.~ EXIT
END

IF ~~ THEN
  BEGIN BothRangers
    SAY ~Another ranger! Hail and well met brother. Let us journey together and smite evil.~ [uxana00]

    IF ~~ THEN
      REPLY ~Sounds like a plan.~
      DO ~
        SetGlobal("AnariJoined","LOCALS",1)
        JoinParty()
      ~ EXIT

     IF ~~ THEN
       REPLY ~Nah, go away.~ EXIT
END

IF ~~ THEN
  BEGIN GoAway
    SAY ~Very well my <LADYLORD>, I will await the day when you return, so that we might smite evil!~ [uxana00]

  IF ~~ THEN EXIT
END
