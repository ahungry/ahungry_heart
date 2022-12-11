(use ./dialog)
(use ./util)

(var kick-tree
     (say {:cond [(l "ux_in_party_athar")]}
          "Kicking me out, just like that huh?"
          (rep {:code [(sl "ux_in_party_athar" 0)]}
               "Yup, take a hike."
               (say "Fine."))
          (rep {:code [(jp)]}
               "Sorry Athar, that was a mistake!"
               (say "Lucky me."))))

(var rejoin-tree
     (say {:cond [(l "ux_in_party_athar" 0)]}
          "Oh, letting me come back, how sweet."
          (rep {:code [(sl "ux_in_party_athar" 1) (jp)]}
               "That's right Athar, we missed you."
               (say "Wish I could say the same."))
          (rep "No, not yet - maybe later."
               (say "Aw shucks."))))

(defn main [& args]
  (var kick (build-dialog kick-tree))
  (var rejoin (build-dialog rejoin-tree))
  (string/format "BEGIN uxathp\n%s%s" kick rejoin))
