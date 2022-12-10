(use ./dialog)
(use ./util)

(defn == [who s & rest]
  (string/format "  == %s %s DO ~%s~\n"
                 (string who)
                 (traify s)
                 (string/join rest "\n")))

(defn ict [who scene-id & rest]
  (string/format
   "INTERJECT_COPY_TRANS %s %d label_%s\n%sEND"
   (string who) scene-id "fake" (string/join rest)))

(var
 prelude-chain
 (ict :uxolr 3
      (== :uxath "This is my nice message [uxath56]")
      (== :uxzar "Oh boyThis is my nice message [uxath56]")
      (== :uxvoi "Another This is my nice message [uxath56]")
      (== :uxana "Yippeee This is my nice message [uxath56]"
          (sg "ux_prelude_done")
          (ao :uxzar (sl "ux_zariel_sleeping")))
      ))

(defn main [& args]
  prelude-chain)
