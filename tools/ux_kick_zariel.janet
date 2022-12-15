(use ./dialog)
(use ./util)

# Go meet up with the spinning wheel at Nashkel Carnival
(var urgent-kick
     (say {:cond [(state<= 50) (g "ux_in_party_uxzar")]
           :code [(sg "ux_in_party_uxzar" 0)
                  "EscapeAreaObjectMove(\"%BG_PRE%4904\", \"North\", 448, 227, 5)"
                   ]}
          "And that, as we say, is that."
          ))

(var kick-tree
     (say {:cond [(state> 50) (g "ux_in_party_uxzar")]}
          "Kicking me out, just like that huh?"
          (rep {:code [(sg "ux_in_party_uxzar" 0)]}
               "Yup, take a hike."
               (say "Fine."))
          (rep {:code [(jp)]}
               "Sorry Zariel, that was a mistake!"
               (say "Lucky me."))))

(var rejoin-tree
     (say {:cond [(state> 50) (g "ux_in_party_uxzar" 0)]}
          "Oh, letting me come back, how sweet."
          (rep {:code [(sg "ux_in_party_uxzar" 1) (jp)]}
               "That's right Zariel, we missed you."
               (say "Wish I could say the same."))
          (rep "No, not yet - maybe later."
               (say "Aw shucks."))))

(defn main [& args]
  (var kick (build-dialog kick-tree))
  (var rejoin (build-dialog rejoin-tree))
  (string/format "BEGIN uxzarp\n%s%s" kick rejoin))
