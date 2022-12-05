// Branwen is summoned via Fate Spirit. This code is taken directly from the game.
// #2 means that Branwen's line(summoning Branwen) will be placed right after the first two lines, Anomen's and Aerie's. Unfortunately, we can't account for all NPCs like Adrian and Arath, but at least it's best to have an option to summon Branwen right after Yoshimo.
// Lots of lines here, I know.

EXTEND_TOP FATESP 6 #2
+ ~!Dead("uxana") !InMyArea("uxana") Global("uxAnaSummoned","GLOBAL",0)~ + @0 /* Bring me Branwen, the priestess of Tempus. */
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
CreateCreature("uxana25",[1999.1228],0)
SetGlobal("uxAnaSummoned","GLOBAL",1)~ GOTO 8
+ ~!Dead("uxana") !InMyArea("uxana") Global("uxAnaSummoned","GLOBAL",0)
Gender(Player1,MALE) OR(4) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Race(Player1,HALFORC)~ + @1 /* Bring me my lover, Branwen. */
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
SetGlobal("uxAnaRomanceActive","GLOBAL",2)
CreateCreature("uxana25",[1999.1228],0)
SetGlobal("uxAnaSummoned","GLOBAL",1)~ GOTO 8
END
