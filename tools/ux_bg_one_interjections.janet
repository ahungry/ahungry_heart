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
             ]
            "Who asked you."))

(defn cook [slot]
  (ict-once :mcook2 slot
            [[athar "I could have went for a nice bite..."]
             [anari "I was just passing through, your meal is alright, but nothing to compare to home."]
             [olrun "Hah!  Best watch your tone with me mister!"]
             [voice "I apologize for intruding."]
             [zariel "Hey, I just wanted a snack, gimme a break!"]] "Scram!"))

(defn main [& args]
  (string/join
   [
    (joia 1)
    (joia 3)
    ;(map commoner (range 0 26))
    (cook 0)
    ] "\n"))
