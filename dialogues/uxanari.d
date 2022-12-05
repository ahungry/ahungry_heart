BEGIN uxanari

IF ~NumTimesTalkedTo(0)~ THEN
  BEGIN FirstMeeting
    SAY ~Greetings good <SIRMAAM>! My name is Anari the Just.~

    IF ~GlobalLT("Chapter","GLOBAL",3)~ THEN
      REPLY ~Hey Anari, you seen Irenicus around here?~ GOTO InquireIrenicus

    IF ~~ THEN
      REPLY ~Heya.~ GOTO Greet

    IF ~Class(Player1,PALADIN)~ THEN
      REPLY ~I know a paladin when I see one!~ GOTO BothPaladins

    IF ~~ THEN
      REPLY ~Go away.~ GOTO GoAway
END

IF ~~ THEN
  BEGIN InquireIrenicus
    SAY ~Nope, but I can help you look for him. I'm a paladin!~

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
    SAY ~So, you need a paladin in your group?~

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
  BEGIN BothPaladins
    SAY ~Another paladin! Hail and well met brother. Let us journey together and smite evil.~

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
    SAY ~Very well my <LADYLORD>, I will await the day when you return, so that we might smite evil!~

  IF ~~ THEN EXIT
END


BEGIN uxanariP

IF ~Global("AnariJoined","LOCALS",1)~ THEN
  BEGIN KickOut
    SAY ~You are now kicking me out.~

    IF ~~ THEN
      REPLY ~Oops, I meant to boot that twit Anomen, not you. Sorry~
        DO ~
          JoinParty()
        ~ EXIT

    IF ~~ THEN
      REPLY ~That's right, I don't want you in the party.~
        DO ~
          SetGlobal("AnariJoined","LOCALS",0)
        ~ EXIT
END

IF ~Global("AnariJoined","LOCALS",0)~ THEN
  BEGIN Rejoin
    SAY ~You want me to rejoin?~

    IF ~~ THEN
      REPLY ~That's right Anari, get back in formation.~
      DO ~
        SetGlobal("AnariJoined","LOCALS",1)
        JoinParty()
      ~ EXIT

    IF ~~ THEN
      REPLY ~That's right, I don't want you in the party.~ EXIT
END
