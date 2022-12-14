(use ./dialog)
(use ./util)

(defn end-intro [&opt who]
  (say {:code [(++state)
               (lp :uxana)
               (lp :uxath)
               (lp :uxolr)
               (lp :uxvoi)
               (lp :uxzar)
               (if who (jp who) "")
               "EscapeArea()"]}
       "Let us depart."))

(var
 urgent-message
 (say {:cond [(state 40)]}
      "Excuse me, are you the party of Athar?"
      (r "Anari" (end-intro :uxana))
      (r "Athar" (end-intro :uxath))
      (r "Olrun" (end-intro :uxolr))
      (r "The Voice" (end-intro :uxvoi))
      (r "Zariel" (end-intro :uxzar))
      (r "I'll catch up to you guys another time." (end-intro))
      (r "Get lost, I don't want anything to do with the lot of you." (end-intro))
      ))


(defn main [& args]
  (string/format
   "BEGIN uxpea\n%s"
   (string/join [(build-dialog urgent-message)
                 # (build-dialog (say {:cond ["True()"]}
                 #                    "I don't have anything else to say."))
                ] "\n")))
