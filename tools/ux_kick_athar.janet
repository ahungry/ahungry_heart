(use ./dialog)
(load-imports)

# Go meet up with Ajantis
(var urgent-kick
     (say {:cond [(state<= 50) (g "ux_in_party_uxath")]
           :code [(sg "ux_in_party_uxath" 0)
                  "EscapeAreaObjectMove(\"%BG_PRE%1400\", \"North\", 1520, 3147, 5)"
                   ]}
          "And that, as we say, is that."
          ))

(var kick-tree
     (say {:cond [(state> 50) (g "ux_in_party_uxath")]}
          "Kicking me out, just like that huh?"
          (rep {:code [(sg "ux_in_party_uxath" 0)]}
               "Yup, take a hike."
               (say "Fine."))
          (rep {:code [(jp)]}
               "Sorry Athar, that was a mistake!"
               (say "Lucky me."))))

(var rejoin-tree
     (say {:cond [(state> 50) (g "ux_in_party_uxath" 0)]}
          "Oh, letting me come back, how sweet."
          (rep {:code [(sg "ux_in_party_uxath" 1) (jp)]}
               "That's right Athar, we missed you."
               (say "Wish I could say the same."))
          (rep "No, not yet - maybe later."
               (say "Aw shucks."))))

(defn main [& args]
  (string/format
   "BEGIN uxathp\n%s"
   (string/join
    [
     (build-dialog urgent-kick)
     (build-dialog kick-tree)
     (build-dialog rejoin-tree)
    ] "\n")))
