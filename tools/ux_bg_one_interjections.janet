(use ./lib/dialog)
(load-imports)

# TODO: Abstract this concept, an interjection chain with priority, and possibly
# build/release time randomization, so we can avoid overloading the player with ICT,
# while still ensuring our mod gives some fun one liners throughout the course of the game.
(defn joia [slot]
  (ict
   :joia slot
   (=== :uxzarj "Oh boy, a ring, shiny!" [(nip :uxath)])
   (=== :joia "Ok, so anyways... will you help?" [])))

(defn joia2 [slot]
  (ict
   :joia slot
   (=== :uxathj "<CHARNAME>, where are your manners?" [])
   (=== :joia "Ok, so anyways... will you help?" [])))

(defn main [& args]
  (string/join
   [
    (joia2 1)
    (joia 1)
   ] "\n"))
