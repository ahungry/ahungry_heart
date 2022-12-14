(use ./dialog)
(use ./util)

(var
 urgent-message
 (say {:cond [(state 40)]}
      "Excuse me, are you the party of Athar?"
      (r {:code [(++state) "EscapeArea()"]} "Athar")
      (r {:code [(++state) "EscapeArea()"]} "Zariel")))


(defn main [& args]
  (string/format
   "BEGIN uxpea\n%s"
   (string/join [(build-dialog urgent-message)
                 # (build-dialog (say {:cond ["True()"]}
                 #                    "I don't have anything else to say."))
                ] "\n")))
