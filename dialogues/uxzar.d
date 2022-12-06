BEGIN uxzar

IF ~NumTimesTalkedTo(0)~ THEN
  BEGIN FirstMeeting
    SAY ~Hmm, you look interesting.  I am Zariel, lend me your ear.~ [uxzar01]

    IF ~GlobalLT("Chapter","GLOBAL",3)~ THEN
      REPLY ~Hey Zariel, you seen Irenicus around here?~ GOTO InquireIrenicus

    IF ~~ THEN
      REPLY ~Heya.~ GOTO Greet

    IF ~Class(Player1,THIEF)~ THEN
      REPLY ~I know a thief when I see one!~ GOTO BothThiefs

    IF ~~ THEN
      REPLY ~Go away.~ GOTO GoAway
END

IF ~~ THEN
  BEGIN InquireIrenicus
    SAY ~Nope, but I can help you look for him. I'm a thief!~ [uxzar00]

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
    SAY ~So, you need a thief in your group?~ [uxzar00]

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
  BEGIN BothThiefs
    SAY ~Another thief! Hail and well met brother. Let us journey together and smite evil.~ [uxzar00]

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
