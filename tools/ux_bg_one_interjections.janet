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

(defn jase [slot]
  (ict-once :jase slot
            [[athar "Children really shouldn't be out on their own."]
             [anari "Oh, a paddling, interesting."]
             [olrun "Oh go on, run back to yer momma then."]
             [voice "Child, we mean you no harm."]
             [zariel "You're lucky to have parents, run along back to 'em now."]]
            "Hmph."))

(defn main [& args]
  (string/join
   [
    (joia 1)
    (joia 3)
    ;(map commoner (range 0 18))
    ;(map fcommoner (range 0 11))
    (whelp-cordial 1)
    (whelp-eye 2)
    (dorn 0)
    (unshey 1)
    (landri 0)
    (landri 1)
    (landri 2)
    (jase 0)
    (cook 0)
    ] "\n"))
