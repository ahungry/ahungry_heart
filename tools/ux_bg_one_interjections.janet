(use ./lib/dialog)
(load-imports)

# DONE: Abstract this concept, an interjection chain with priority, and possibly
# build/release time randomization, so we can avoid overloading the player with ICT,
# while still ensuring our mod gives some fun one liners throughout the course of the game.
# (defn joia [slot]
#   (ict
#    :joia slot
#    (=== :uxzarj "Oh boy, a ring, shiny!" [(nip :uxath)])
#    (=== :joia "Ok, so anyways... will you help?" [])))

# (defn joia2 [slot]
#   (ict
#    :joia slot
#    (=== :uxathj "<CHARNAME>, where are your manners?" [])
#    (=== :joia "Ok, so anyways... will you help?" [])))

# BEG: FAI
(defn joia [slot]
  (ict-once :joia slot
             [[athar "<CHARNAME>, let us help this poor woman."]
              [anari "That sounds horrid, I hate the hobgoblins!"]
              [voice "The audacity of some fiends cannot be understated."]
              [olrun "The only good hobgoblin is a dead hobgoblin."]
              [zariel "Oh boy, a ring, shiny!"]]
             "Ok, so anyways... will you help?"))

(defn commoner [slot]
  (ict-once :mtowfr slot
            [[athar "Conversing with the yeoman, a noble path."]
             [anari "Some are not as informative as others."]
             [zariel "You can't beat a good gossip."]
             [olrun "That's some good info right there!"]
             [voice "I believe that information could be useful."]
             ]))

(defn fcommoner [slot]
  (ict-once :ftowfr slot
            [[athar "She seems a bit stressed out."]
             [anari "Not that friendly of a lady."]
             [zariel "She's quite the character."]
             [olrun "Sometimes chatting with strangers isn't a great idea."]
             [voice "Well, that was an interesting chat."]
             ]))

(defn cook [slot]
  (ict-once :mcook2 slot
            [[athar "I could have went for a nice bite..."]
             [anari "I was just passing through, your meal is alright, but nothing to compare to home."]
             [olrun "Hah!  Best watch your tone with me mister!"]
             [voice "I apologize for intruding."]
             [zariel "Hey, I just wanted a snack, gimme a break!"]]
            "Scram!"
            "Git!"))

(defn whelp-cordial [slot]
  (ict-once :whelp slot
            [[athar "Quite a rude fellow, best to give drunks a wide berth."]
             [anari "What a jerk, steer clear of those drowning in their tankards."]
             [olrun "That one can't hold his liquor, he's close to holding my fist to his face though."]
             [voice "This one will likely get what's coming to him."]
             [zariel "Get off your lazy arse and get your own ale ya bum!"]]))

(defn whelp-eye [slot]
  (ict-once :whelp slot
            [[athar "Quite a rude fellow, best to give drunks a wide berth."]
             [anari "What a jerk, steer clear of those drowning in their tankards."]
             [olrun "That one can't hold his liquor, he's close to holding my fist to his face though."]
             [voice "This one will likely get what's coming to him."]
             [zariel "I am THIS close to sticking something in YOUR eye!"]]))

(defn dorn [slot]
  (ict-once :dorn_ slot
            [[athar "Be careful <CHARNAME>, this one has the stink of evil about him."]
             [anari "Quite an obnoxious fellow, like most patrons of taverns."]
             [olrun "*curtseys*, oh yes, as you wish Mr. Orc."]
             [voice "Be careful <CHARNAME>, this one has the stink of evil about him."]
             [zariel "*curtseys*, oh yes, as you wish Mr. Orc."]]
            "I wasn't addressing you, was I?  Now <RACE>, where's my flagon?"))

(defn unshey [slot]
  (ict-once :unshey slot
            [[athar "Come <CHARNAME>, let us rid the lands of one more villain."]
             [anari "Come <CHARNAME>, let us rid the lands of one more villain."]
             [olrun "I'd be losin' my trousers without a belt, this sounds like a quest of major
 importance!"]
             [voice "An autographed book, I wonder what book it was?"]
             [zariel "Sounds like that ogre has my taste in fashion."]]))

(defn landri [slot]
  (ict-once :landri slot
            [[athar "We must help those in need when we can."]
             [anari "I've dealth with spiders often, make sure to ready some Potions of Antidote."]
             [olrun "Time to go make some wooly spider crunch... err, wrong game."]
             [voice "I better memorize some Slow Poison if we are to deal with such creatures."]
             [zariel "Better write all that down, that's quite a shopping list!"]]))
# END: FAI

# BEG: Otw to Nashkel
(defn jase [slot]
  (ict-once :jase slot
            [[athar "Children really shouldn't be out on their own."]
             [anari "Oh, a paddling, interesting."]
             [olrun "Oh go on, run back to yer momma then."]
             [voice "Child, we mean you no harm."]
             [zariel "You're lucky to have parents, run along back to 'em now."]]
            "Hmph."))

(defn foresh [slot]
  (ict-once :foresh slot
            [[athar "Lord Ribald?  I wonder if he speaks of the Adventurer's Mart purveyor?"]
             [anari "I think he may be mocking us."]
             [olrun "Ah, an appreciation for my suave looks, about time!"]
             [voice "This one has a haughty air about him."]
             [zariel "Oh, a costume party?  Exciting!"]]
            "Yes, so as I was saying..."))
# END: Otw to Nashkel

# BEG: Nashkel
(defn neira [slot]
  (ict-once :neira slot
            [[athar "Perhaps we can reason with her."]
             [anari "<CHARNAME>, do not waste your breath here, she has already made up her mind."]
             [olrun "Lets make her work for her coin."]
             [voice "I sense a purely evil intention."]
             [zariel "I think she has a bit 'o coin that'll be ours soon."]]
            "Was I addressing you peon?"))

(defn nashkel-male-commoner [slot]
  (ict-once :mtowna slot
            [[athar "This sounds like something we should investigate."]
             [anari "I feel that we have a good opportunity to help."]
             [olrun "Let us venture forth into the mines!"]
             [voice "It is our duty to see what we may do to assist."]
             [zariel "This town needs some help, and doing so might help us get a little richer."]]))

(defn nashkel-female-commoner [slot]
  (ict-once :ftowna slot
            [[athar "She seems distressed, we must aid her."]
             [anari "Let us look further into this issue."]
             [olrun "Helping here is a heroes duty."]
             [voice "She may be unable to help herself, but we can certainly do so."]
             [zariel "Hey lady, don't dismay, we'll give you a hand."]]))

(defn nashkel-child-good [slot]
  (ict-once :chilna slot
            [[athar "Ah, the joys of youth."]
             [anari "Such excitement."]
             [olrun "Hah, sounds like a good time!"]
             [voice "Such innocence among the young ones."]
             [zariel "We need to check that out!"]]))

(defn nashkel-child-bad [slot]
  (ict-once :chilna slot
            [[athar "Poor kid, we need to lend a hand."]
             [anari "No child should have to deal with this."]
             [olrun "We'll help ya out little one."]
             [voice "This young person needs our assistance."]
             [zariel "This seems like something we can help with."]]))
# END: Nashkel

# BEG: Nashkel Carnival

# Talking about Prism
(defn performer [slot]
  (ict-once :pnashk slot
            [[athar "The church highly values art, we should investigate."]
             [anari "It sounds like a local mystery is before us."]
             [olrun "Sounds like this sculptor is in over his head."]
             [voice "Many in the temples of Talos, Helm, and Lathander highly value artists.
 We may wish to assist."]
             [zariel "We should find this sculptor, I bet he could reward us with some type
 of commission."]]))

(defn gazib [slot]
  (ict-once :gazib slot
            [[athar "This should be entertaining."]
             [anari "Eww, an exploding ogre?"]
             [olrun "Hah!  Can't wait to see how big the boom is!"]
             [voice "This is going to be quite a show I presume."]
             [zariel "Oh boy!  I love a grotesque show, lets watch some entrails fly!"]]))

(defn farmer [slot]
  (ict-once :farmbe slot
            [[athar "It can be hard being a farmer."]
             [anari "I feel for this man, it must be difficult living as such."]
             [olrun "To be so weak, the slightest plight could ruin one so, a shame."]
             [voice "He is but a simple man, a pity we cannot do more to help him."]
             [zariel "If you're trying to tell us life ain't easy, you're preaching to
 the choir friend."]]))

(defn nashkel-miner [slot]
  (ict-once :minern slot
            [[athar "Fear not friend, we are here to assist."]
             [anari "Let us help clear your mines."]
             [olrun "Don't worry bud, I'm here to smash some skulls."]
             [voice "Your prayers are answered, we are here to help."]
             [zariel "You guys are only a step above livin' on the street, we'll do what we can."]]))

# END: Nashkel Carnival

# BEG: Nashkel Mine
(defn xan [slot]
  (ict-once :xan slot
            [[athar "Dear elf, we'll see you are able to leave safely."]
             [anari "Xan, your troubles are at an end, you are safe now."]
             [olrun "What's wrong with living as a dwarf?"]
             [voice "Fear not friend, we are here to help."]
             [zariel "You don't seem so fair to me."]]
            "Well, shall we face the impossible or not?"))

# mulahe - do we want a dialog or not

# END: Nashkel Mine

(defn main [& args]
  (string/join
   [
    (joia 1)
    (joia 3)
    ;(map commoner (range 0 19))
    ;(map fcommoner (range 0 12))
    (whelp-cordial 1)
    (whelp-eye 2)
    (dorn 0)
    (unshey 1)
    (landri 0)
    (landri 1)
    (landri 2)
    (jase 0)
    (foresh 0)
    (cook 0)
    (neira 0)
    ;(map nashkel-male-commoner (range 0 7))
    ;(map nashkel-male-commoner (range 14 20))
    ;(map nashkel-female-commoner (range 0 7))
    ;(map nashkel-female-commoner (range 14 18))
    (nashkel-child-good 0)
    ;(map nashkel-child-bad (range 1 8))
    ;(map performer (range 0 4))
    (gazib 0)
    ;(map farmer (range 0 9))
    ;(map nashkel-miner (range 0 12))
    (xan 1)
    ] "\n"))
