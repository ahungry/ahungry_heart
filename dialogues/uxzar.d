BEGIN uxzar

IF ~NumTimesTalkedTo(0)~ THEN
  BEGIN FirstMeeting
    SAY ~You there, hero.  I have an important message for you.  I'm Zariel and I seek your assistance~ [uxzar01]

    IF ~GlobalLT("Chapter","GLOBAL",3)~ THEN
      REPLY ~Hey Zariel, you seen Irenicus around here?~ GOTO InquireIrenicus

    IF ~~ THEN
      REPLY ~Heya.~ GOTO Greet

    IF ~Class(Player1,RANGER)~ THEN
      REPLY ~I know a ranger when I see one!~ GOTO BothRangers

    IF ~~ THEN
      REPLY ~Go away.~ GOTO GoAway
END

IF ~~ THEN
  BEGIN InquireIrenicus
    SAY ~Nope, but I can help you look for him. I'm a ranger!~ [uxzar00]

    IF ~~ THEN
      REPLY ~Sure. Join the party~
        DO ~
          SetGlobal("ZarielJoined","LOCALS",1)
          JoinParty()
        ~ EXIT

    IF ~~ THEN
      REPLY ~Nah, go away.~ EXIT
END

IF ~~ THEN
  BEGIN Greet
    SAY ~So, you need a ranger in your group?~ [uxzar00]

    IF ~~ THEN
      REPLY ~Yes, as a matter of fact we do.~
        DO ~
          SetGlobal("ZarielJoined","LOCALS",1)
          JoinParty()
        ~ EXIT

    IF ~~ THEN
      REPLY ~Nah, go away.~ EXIT
END

IF ~~ THEN
  BEGIN BothRangers
    SAY ~Another ranger! Hail and well met brother. Let us journey together and smite evil.~ [uxzar00]

    IF ~~ THEN
      REPLY ~Sounds like a plan.~
      DO ~
        SetGlobal("ZarielJoined","LOCALS",1)
        JoinParty()
      ~ EXIT

     IF ~~ THEN
       REPLY ~Nah, go away.~ EXIT
END

IF ~~ THEN
  BEGIN GoAway
    SAY ~Very well my <LADYLORD>, I will await the day when you return, so that we might smite evil!~ [uxzar00]

  IF ~~ THEN EXIT
END
