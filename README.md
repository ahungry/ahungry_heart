# Ahungry - The Heart of Baldur's Gate

## Characters

![Characters](https://github.com/ahungry/ahungry_heart/blob/master/docs/thumbs/characters.png)

Anari / Athar / Olrun / The Voice / Zariel

This is (the first?) AI Generated Baldur's Gate mod (well, story
elements, items, and images - the coding still has to be done by hand
in 2022).

Gibberlings3 post:

https://www.gibberlings3.net/forums/topic/36224-the-first-ai-designed-mod-the-heart-of-baldurs-gate/


# TODO

## DONE(ish) Add the Characters

- Anari (added and voiced) - DONE
- Olrun (added and voiced) - DONE
- Athar - (added and voiced) - DONE
- Zariel (added and voiced )- DONE
- The Voice (added and voiced) - DONE
- The Guardian - pending
- Horvath - pending
- Viconia - pending

## DONE Add the Items

## TODO Add the Quests

## Add (reuse?) the Areas

# Dev Notes

## Why the "ux" prefix on mod elements?

Per community registry here: http://www.blackwyrmlair.net/prefixes/ I
have the "ux" prefix, so each mod asset/script etc. needs to start
with it (mirror: https://dark0dave.github.io/bg_mod_prefixes_mirror/).

## Dependencies for building

- Janet 1.3 https://janet-lang.org/

## Building

Preferably after `make local-install` or `make install` if the
`dialogues` directory is missing.

```
make regen
```

## What's the Janet stuff?

I wrote a custom dialogue tree DSL in Janet (as well as convenience
functions) so that I didn't have to code in the BASIC like language
that is tp2.  The building command produces the proper output for a
standard Infinity Engine mod from it.

# License

## Source code:

GPLv3 or later (like weidu itself), see LICENSE

## Art/audio/dialogue/story etc. (creative assets):

CC-BY-NC-SA-4.0 (https://creativecommons.org/licenses/by-nc-sa/4.0/)

This means you're free to:
- Share/adapt/remix the material
- but NOT for commercial purposes
- and you must share-alike your derivatives under this same
  CC-BY-NC-SA-4.0 license
