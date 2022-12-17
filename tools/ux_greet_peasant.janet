(use ./dialog)
(load-imports)

(defn end-intro [&opt who]
  (say {:code [(++state)
               (sg (string/format "ux_keep_%s" (string who)))
               #(sgt "ux_bg_is_closed_timer" "SEVEN_HOURS")
               (sgt "ux_bg_is_closed_timer" "ONE_ROUND")
               "EscapeArea()"]}
       "Let us depart."))

(defn end-intro-no-leave []
  (say {:code [(sg "ux_state" 80) # Just skip 50 (leave) and 60/70 (sleep) events entirely
               (sg "ux_keep_uxana" 1)
               (sg "ux_keep_uxath" 1)
               (sg "ux_keep_uxolr" 1)
               (sg "ux_keep_uxvoi" 1)
               (sg "ux_keep_uxzar" 1)
               "EscapeArea()"]}
       "As you wish."))

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
      (r "You can all leave - I'll catch up to you guys another time." (end-intro))
      (r "Get lost messenger! No one can leave, I'm on an urgent quest!" (end-intro-no-leave))
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
      (r "You can all leave - I'll catch up to you guys another time." (end-intro))
      (r "Get lost messenger! No one can leave, I'm on an urgent quest!" (end-intro-no-leave))
      ))

(var
 gates-closed
 (s {:cond [(state 70)]}
    "Hail <CHARNAME>, it is good fortune to find you here.
 Your friends wanted me to relay a message should we encounter each
 other again."
    (s "When we had reached Baldur's Gate, we were met with bad
 news.  They had already closed up the city.  Given this, our
 heroes have taken a much needed break."
       (s {:code [(++state) (++state) "EscapeArea()"]}
          "Should you seek to reunite, I believe they know each
 other quite well, and should probably be able to provide you with
 some clues as to how to find each other once again."))))

(defn main [& args]
  (string/format
   "BEGIN uxpea\n%s"
   (string/join [(build-dialog urgent-message)
                 (build-dialog (urgent-message-for :uxana "Anari"))
                 (build-dialog (urgent-message-for :uxath "Athar"))
                 (build-dialog (urgent-message-for :uxolr "Olrun"))
                 (build-dialog (urgent-message-for :uxvoi "The Voice"))
                 (build-dialog (urgent-message-for :uxzar "Zariel"))
                 (build-dialog gates-closed)
                ] "\n")))
