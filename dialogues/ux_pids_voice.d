BEGIN uxvoij

// This is where main dialogue after joining the party belongs
// This includes PIDS + NIDS (npc initiated dialogue)

IF ~Global("ux_voice_is_bantering", "GLOBAL", 1)
    Global("ux_voice_banter_id", "GLOBAL", 1)~ THEN BEGIN voice_banter1
SAY ~This is our first banter~
++ ~Cool!~ EXIT
END

IF ~Global("ux_voice_is_bantering", "GLOBAL", 1)
    Global("ux_voice_banter_id", "GLOBAL", 2)~ THEN BEGIN voice_banter1
SAY ~This is second first banter~
++ ~Oooh, neat!~ EXIT
END

IF ~IsGabber(Player1)
   !Global("ux_voice_is_pidding", "GLOBAL", 1)
   !Global("ux_voice_is_bantering", "GLOBAL", 1)~ vpid0
  SAY ~( The Voice turns to you )~
  IF ~True()~ DO ~SetGlobal("ux_voice_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1)
   !Global("ux_voice_is_bantering", "GLOBAL", 1)~ vpid1
  SAY ~What is it you seek?~ [uxvoi56]
  ++ ~The Voice, what brings you to our quest?~ + quest
  ++ ~Nevermind~ EXIT
END

IF ~~ quest
  SAY ~I have come to join your party on this noble mission. I have long been defending Baldur’s Gate and its surrounding forests against the forces of evil, and I do not intend to waiver in my dedication now.~
  ++ ~We are fortunate to have you with us.~ + quest2
END

IF ~~ quest2
  SAY ~It is my pleasure. In the face of such danger, it is comforting to have companions to rely upon. I will fight to protect both of you, even in the darkest of times.~
  IF ~~ EXIT
END
