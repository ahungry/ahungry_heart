(use ./dialog)
(use ./util)

(defn end-intro [&opt who]
  (say {:code [(++state)
               (sg (string/format "ux_keep_%s" (string who)))
               "EscapeArea()"]}
       "Let us depart."))

(var
 urgent-message
 (say {:cond [(state 40)
              (in-party :uxath)
              (in-party :uxolr)
              (in-party :uxana)
              (in-party :uxvoi)
              (in-party :uxzar)
             ]}
      "Excuse me, are you the party of Athar?"
      (r "Anari" (end-intro :uxana))
      (r "Athar" (end-intro :uxath))
      (r "Olrun" (end-intro :uxolr))
      (r "The Voice" (end-intro :uxvoi))
      (r "Zariel" (end-intro :uxzar))
      (r "I'll catch up to you guys another time." (end-intro))
      (r "Get lost, I don't want anything to do with the lot of you." (end-intro))
      ))

(defn urgent-message-for [who name]
 (say {:cond [(state 40)
              (in-party who)]}
      (string/format
       "Excuse me, are you the party of %s?  Yes, yes, I believe you are."
       name)
      (r {:cond [(in-party :uxana)]} "Anari" (end-intro :uxana))
      (r {:cond [(in-party :uxath)]} "Athar" (end-intro :uxath))
      (r {:cond [(in-party :uxolr)]} "Olrun" (end-intro :uxolr))
      (r {:cond [(in-party :uxvoi)]} "The Voice" (end-intro :uxvoi))
      (r {:cond [(in-party :uxzar)]} "Zariel" (end-intro :uxzar))
      (r "I'll catch up to you guys another time." (end-intro))
      (r "Get lost, I don't want anything to do with the lot of you." (end-intro))
      ))

(defn main [& args]
  (string/format
   "BEGIN uxpea\n%s"
   (string/join [(build-dialog urgent-message)
                 (build-dialog (urgent-message-for :uxana "Anari"))
                 (build-dialog (urgent-message-for :uxath "Athar"))
                 (build-dialog (urgent-message-for :uxolr "Olrun"))
                 (build-dialog (urgent-message-for :uxvoi "The Voice"))
                 (build-dialog (urgent-message-for :uxzar "Zariel"))
                ] "\n")))
