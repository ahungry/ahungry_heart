(use ./dialog)
(use ./util)
(import ./ux_greet_olrun :as greet-olrun)
(import ./ux_greet_anari :as greet-anari)
(import ./ux_greet_voice :as greet-voice)
(import ./ux_prelude_chain :as prelude-chain)

(defn main [& args]
  (spit "./ux_greet_olrun.d" (greet-olrun/main))
  (spit "./ux_greet_anari.d" (greet-anari/main))
  (spit "./ux_greet_voice.d" (greet-voice/main))

  (spit "./ux_prelude_chain.d" (prelude-chain/main ))
  (spit "./maingen.tra" (build-tras))

  (print "All done"))
