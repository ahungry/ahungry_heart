BEGIN uxanaj

// This is where main dialogue after joining the party belongs
// This includes PIDS + NIDS (npc initiated dialogue)

IF ~Global("ux_anari_is_bantering", "GLOBAL", 1)
    Global("ux_anari_banter_id", "GLOBAL", 0)~ anari_banter1 // THEN BEGIN anari_banter1
SAY ~This is our first banter~
++ ~Cool!~ DO ~IncrementGlobal("ux_anari_banter_id", "GLOBAL", 1)~ EXIT
++ ~Not now...~ + npc_mute
END

IF ~Global("ux_anari_is_bantering", "GLOBAL", 1)
    Global("ux_anari_banter_id", "GLOBAL", 1)~ anari_banter2 // THEN BEGIN anari_banter1
SAY ~This is second first banter~
++ ~Yippie!~ DO ~IncrementGlobal("ux_anari_banter_id", "GLOBAL", 1)~ EXIT
++ ~Not now...~ + npc_mute
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

IF ~~ npc_mute
  SAY @990004
  ++ @990001 + npc_mute_short
  ++ @990002 + npc_mute_long
  ++ @990003 + npc_mute_undo
END

IF ~~ npc_mute_short
  SAY @990005
  IF ~~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 10)~ EXIT
END

IF ~~ npc_mute_long
  SAY @990005
  IF ~~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 30)~ EXIT
END

IF ~~ npc_mute_undo
  SAY @990006
  IF ~~ DO ~RealSetGlobalTimer("ux_anari_banter_timer", "GLOBAL", 1)~ EXIT
END
