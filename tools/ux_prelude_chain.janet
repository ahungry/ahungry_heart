(use ./dialog)
(use ./util)

(var
 prelude-chain
 (ict
  :uxolr 3
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
      (ao :uxzar (sl "ux_zariel_sleeping")))
  ))

(defn main [& args]
  prelude-chain)
