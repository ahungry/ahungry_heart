(use ./dialog)
(use ./util)
(import ./ux_greet_olrun :as greet-olrun)

(defn main [& args]
  (print "Generating ./ux_greet_olrun.d")
  (spit "./ux_greet_olrun.d" (greet-olrun/main))
  (print "Generating ./maingen.tra")
  (spit "./maingen.tra" (build-tras))
  (pp args))
