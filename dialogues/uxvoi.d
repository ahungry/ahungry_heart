BEGIN uxvoi

IF ~!Global("uxvoicePrelude", "GLOBALS", 1)~ THEN BEGIN prelude
  SAY ~May he rest among the Gods.~
  IF ~~ THEN EXIT
END

IF ~True()~ THEN
  BEGIN FirstMeeting
    SAY ~Some call me The Voice, you may call me friend.  Well met traveller.~ [uxvoi01]

    IF ~GlobalLT("Chapter","GLOBAL",3)~ THEN
      REPLY ~Hey The Voice, you seen Irenicus around here?~ GOTO InquireIrenicus

    IF ~~ THEN
      REPLY ~Heya.~ GOTO Greet

    IF ~Class(Player1,CLERIC)~ THEN
      REPLY ~I know a cleric when I see one!~ GOTO BothClerics

    IF ~~ THEN
      REPLY ~Go away.~ GOTO GoAway
END

IF ~~ THEN
  BEGIN InquireIrenicus
    SAY ~Nope, but I can help you look for him. I'm a cleric!~ [uxvoi00]

    IF ~~ THEN
      REPLY ~Sure. Join the party~
        DO ~
          SetGlobal("TheVoiceJoined","LOCALS",1)
          JoinParty()
        ~ EXIT

    IF ~~ THEN
      REPLY ~Nah, go away.~ EXIT
END

IF ~~ THEN
  BEGIN Greet
    SAY ~So, you need a cleric in your group?~ [uxvoi00]

    IF ~~ THEN
      REPLY ~Yes, as a matter of fact we do.~
        DO ~
          SetGlobal("TheVoiceJoined","LOCALS",1)
          JoinParty()
        ~ EXIT

    IF ~~ THEN
      REPLY ~Nah, go away.~ EXIT
END

IF ~~ THEN
  BEGIN BothClerics
    SAY ~Another cleric! Hail and well met brother. Let us journey together and smite evil.~ [uxvoi00]

    IF ~~ THEN
      REPLY ~Sounds like a plan.~
      DO ~
        SetGlobal("TheVoiceJoined","LOCALS",1)
        JoinParty()
      ~ EXIT

     IF ~~ THEN
       REPLY ~Nah, go away.~ EXIT
END

IF ~~ THEN
  BEGIN GoAway
    SAY ~Very well my <LADYLORD>, I will await the day when you return, so that we might smite evil!~ [uxvoi00]

  IF ~~ THEN EXIT
END
