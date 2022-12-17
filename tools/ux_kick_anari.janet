(use ./dialog)
(load-imports)

# Go meet up with Kivan
(var urgent-kick
     (say {:cond [(state<= 50) (g "ux_in_party_uxana")]
           :code [(sg "ux_in_party_uxana" 0)]}
          "Goodbye."
          ))

(var kick-tree
     (say {:cond [(state> 50) (g "ux_in_party_uxana")]}
          "Kicking me out, just like that huh?"
          (rep {:code [(sg "ux_in_party_uxana" 0)]}
               "Yup, take a hike."
               (say "Fine."))
          (rep {:code [(jp)]}
               "Sorry Anari, that was a mistake!"
               (say "Lucky me."))))

(var rejoin-tree
     (say {:cond [(state> 50) (g "ux_in_party_uxana" 0)]}
          "Oh, letting me come back, how sweet."
          (rep {:code [(sg "ux_in_party_uxana" 1) (jp)]}
               "That's right Anari, we missed you."
               (say "Wish I could say the same."))
          (rep "No, not yet - maybe later."
               (say "Aw shucks."))))

(defn main [& args]
  (var kick (build-dialog kick-tree))
  (var rejoin (build-dialog rejoin-tree))
  (string/format "BEGIN uxanap\n%s%s" kick rejoin))
