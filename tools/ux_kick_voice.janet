(use ./dialog)
(use ./util)

# Go observe Ulcaster School
(var urgent-kick
     (say {:cond [(state<= 50) (g "ux_in_party_uxvoi")]
           :code [(sg "ux_in_party_uxvoi" 0)
                  "EscapeAreaObjectMove(\"%BG_PRE%3900\", \"North\", 2440, 848, 5)"
                   ]}
          "And that, as we say, is that."
          ))

(var kick-tree
     (say {:cond [(state> 50) (g "ux_in_party_uxvoi")]}
          "Kicking me out, just like that huh?"
          (rep {:code [(sg "ux_in_party_uxvoi" 0)]}
               "Yup, take a hike."
               (say "Fine."))
          (rep {:code [(jp)]}
               "Sorry Voice, that was a mistake!"
               (say "Lucky me."))))

(var rejoin-tree
     (say {:cond [(state> 50) (g "ux_in_party_uxvoi" 0)]}
          "Oh, letting me come back, how sweet."
          (rep {:code [(sg "ux_in_party_uxvoi" 1) (jp)]}
               "That's right Voice, we missed you."
               (say "Wish I could say the same."))
          (rep "No, not yet - maybe later."
               (say "Aw shucks."))))

(defn main [& args]
  (string/format
   "BEGIN uxvoip\n%s"
   (string/join
    [
     (build-dialog urgent-kick)
     (build-dialog kick-tree)
     (build-dialog rejoin-tree)
    ] "\n")))
