BEGIN uxana25p

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
