BEGIN uxanaj

// This is where main dialogue after joining the party belongs
// This includes PIDS + NIDS (npc initiated dialogue)

IF ~Global("ux_anari_is_bantering", "GLOBAL", 1)
    Global("ux_anari_banter_id", "GLOBAL", 1)~ anari_banter1 // THEN BEGIN anari_banter1
SAY ~This is our first banter~
++ ~Cool!~ EXIT
END

IF ~Global("ux_anari_is_bantering", "GLOBAL", 1)
    Global("ux_anari_banter_id", "GLOBAL", 2)~ anari_banter2 // THEN BEGIN anari_banter1
SAY ~This is second first banter~
++ ~Oooh, neat!~ EXIT
END

IF ~IsGabber(Player1)
   !Global("ux_anari_is_pidding", "GLOBAL", 1)
   !Global("ux_anari_is_bantering", "GLOBAL", 1)~ apid0
  SAY ~( Anari turns to you )~
  IF ~True()~ DO ~SetGlobal("ux_anari_wishes_to_pid", "GLOBAL", 1)~ EXIT
END

IF ~IsGabber(Player1)
   !Global("ux_anari_is_bantering", "GLOBAL", 1)~ apid1
  SAY ~What can I do for you?~ [uxana56]
  ++ ~Anari, what brings you to our quest?~ + quest
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
