BEGIN uxzarj

IF ~IsGabber(Player1)~ uxAnaPID
  SAY ~What's up?~
  ++ ~Zariel, what brings you to our quest?~ + quest
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
