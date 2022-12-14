(use ./dialog)
(use ./util)

(var kick-tree
     (say {:cond [(g "ux_in_party_uxvoi")]}
          "Kicking me out, just like that huh?"
          (rep {:code [(sg "ux_in_party_uxvoi" 0)]}
               "Yup, take a hike."
               (say "Fine."))
          (rep {:code [(jp)]}
               "Sorry Voice, that was a mistake!"
               (say "Lucky me."))))

(var rejoin-tree
     (say {:cond [(g "ux_in_party_uxvoi" 0)]}
          "Oh, letting me come back, how sweet."
          (rep {:code [(sg "ux_in_party_uxvoi" 1) (jp)]}
               "That's right Voice, we missed you."
               (say "Wish I could say the same."))
          (rep "No, not yet - maybe later."
               (say "Aw shucks."))))

(defn main [& args]
  (var kick (build-dialog kick-tree))
  (var rejoin (build-dialog rejoin-tree))
  (string/format "BEGIN uxvoip\n%s%s" kick rejoin))
