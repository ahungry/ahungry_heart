(use ./dialog)
(use ./util)

# -      // ActionOverride("uxana", EscapeAreaObjectMove("%BG_PRE%2300", "North", 1105, 3300, 5))
# -      // ActionOverride("uxvoi", EscapeAreaObjectMove("%BG_PRE%2300", "North", 1060, 3280, 14))
# -      // ActionOverride("uxolr", EscapeAreaObjectMove("%BG_PRE%2300", "North", 1220, 3265, 3))
# -      // ActionOverride("uxzar", EscapeAreaObjectMove("%BG_PRE%2300", "North", 1180, 3280, 13))
# -      // ActionOverride("uxath", EscapeAreaObjectMove("%BG_PRE%2300", "North", 1067, 3312, 9))

(defn prelude-chain [slot]
 (ict
  :uxolr slot
  (== :uxath "I am sorry for your misfortune.
 Had I been able, I would have helped. [uxath52]")

  (== :uxzar "Based on what's left of the body,
 this was clearly the work of a powerful entity. [uxzar52]")

  (== :uxvoi "May he rest among the Gods. [uxvoi52]")

  (== :uxana "We were on our way here to discuss a matter of utmost
 urgency with Gorion, however it seems we're on our own.
 Take care traveler, and may you never cross paths with those
 who struggle for The Heart of Baldur's Gate. [uxana52]"
      (sg "ux_prelude_done")
      (ao :uxzar (sl "ux_zariel_sleeping"))
      (ao :uxana "EscapeAreaObjectMove(\"%BG_PRE%2300\", \"North\", 1105, 3300, 5)")
      (ao :uxvoi "EscapeAreaObjectMove(\"%BG_PRE%2300\", \"North\", 1060, 3280, 14)")
      (ao :uxolr "EscapeAreaObjectMove(\"%BG_PRE%2300\", \"North\", 1220, 3265, 3)")
      (ao :uxzar "EscapeAreaObjectMove(\"%BG_PRE%2300\", \"North\", 1180, 3280, 13)")
      (ao :uxath "EscapeAreaObjectMove(\"%BG_PRE%2300\", \"North\", 1067, 3312, 9)"))
  ))

(defn main [& args]
  (string/join [(prelude-chain 2)
                (prelude-chain 4)] "\n"))
