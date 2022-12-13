(use ./dialog)
(use ./util)

(var
 urgent-message
 (say {:cond [(ng "ux_urgent_message")]
       :code [(sg "ux_urgent_message") "EscapeArea()"]}
      "Excuse me, are you the party of Athar?"
      (r "Athar")
      (r "Zariel")))


(defn main [& args]
  (string/format
   "BEGIN uxpea\n%s"
   (string/join [(build-dialog urgent-message)
                 # (build-dialog (say {:cond ["True()"]}
                 #                    "I don't have anything else to say."))
                ] "\n")))
