(use ./dialog)
(use ./util)
(import ./ux_greet_olrun :as greet-olrun)
(import ./ux_prelude_chain :as prelude-chain)

(defn main [& args]
  (print "Generating ./ux_greet_olrun.d")
  (spit "./ux_greet_olrun.d" (greet-olrun/main))

  (print "Generating ./ux_prelude_chain.d")
  (spit "./ux_prelude_chain.d" (prelude-chain/main ))

  (print "Generating ./maingen.tra")
  (spit "./maingen.tra" (build-tras))
  (pp args))
