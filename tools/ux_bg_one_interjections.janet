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
             [[athar "<CHARNAME>, where are your manners?  Let us help this poor woman."]
              [anari "That sounds horrid, I hate the hobgoblins!"]
              [voice "The audacity of some fiends cannot be understated."]
              [olrun "The only good hobgoblin is a dead hobgoblin."]
              [zariel "Oh boy, a ring, shiny!"]]
             "Ok, so anyways... will you help?"))

(defn main [& args]
  (string/join
   [
    (joia 1)
    ] "\n"))
