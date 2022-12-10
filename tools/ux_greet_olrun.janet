(use ./dialog)

(var prelude-tree
     (say
      {:cond [(g "ux_prelude_done")]}
      "Noooo, we were too late! [uxolr52]"
      (rep "Did...did you see that?"
           (say "Only the aftermath - we just arrived in the wee hours of the morn. [uxolr53]"
                (say "Going down in the glory of battle!  I'd have it no other way. [uxolr16]")))
      (rep "..."
           (say "Cat got yer tongue?  Well, I don't blame ya.  We just arrived in the wee hours of the morn, just in time to see the aftermath. [uxolr54]"
                (say "Going down in the glory of battle!  I'd have it no other way. [uxolr16]")))))


(var party-tree
     (say {:cond ["True()"]}
          "~Hail friend, it is I, Olrun.  Have you a moment?~ [uxolr01]"
          (rep {:cond [(ng "ux_group_join_deny")]}
               "Sure Olrun, what's up?"
               (say "My friends and I are on an important quest, pertaining to The Heart of Baldur's Gate.  Care to join us?  I know that you and Gorion were close, and he would no doubt appreciate us keeping an eye on you.~"
                    (say "So?"
                         (rep {:code [(sl "ux_in_party_olrun")
                                      (sg "ux_request_group_join")
                                      (sg "ux_olrun_banter_timer" 5)]}
                              "I would love to join your group. ( NOTE: This option recruits all 5 at once, and will skip some join dialogue )")
                         (rep {:code [(sl "ux_in_party_olrun")
                                      (sg "ux_group_join_deny")
                                      (sg "ux_olrun_banter_timer" 5)]}
                              "I can't join your group, but I would love to have you join mine.")
                         (rep "Sorry Olrun, I'm on my own adventure at the moment."
                              (say "That's fine, should you change your mind, you'll find us around.")))))
          (rep {:cond [(g "ux_group_join_deny")]}
               "Sure Olrun, what's up?"
               (say "Breakin apart a lifelong team just like that?  Well, may as well bring me along."
                    (say "So?"
                         (rep {:code [(sl "ux_in_party_olrun")
                                      (sg "ux_request_group_join")
                                      (sg "ux_olrun_banter_timer" 5)]}
                              "I would love to join your group. ( NOTE: This option recruits all 5 at once, and will skip some join dialogue )")
                         (rep {:code [(sl "ux_in_party_olrun")
                                      (sg "ux_group_join_deny")
                                      (sg "ux_olrun_banter_timer" 5)]}
                              "I can't join your group, but I would love to have you join mine.")
                         (rep "Sorry Olrun, I'm on my own adventure at the moment."
                              (say "That's fine, should you change your mind, you'll find us around.")))))))

(var sample (build prelude-tree))
(print (get sample :tras))
(print "\n\nBEGIN uxolr")
(print (get sample :dialog))

(var sample2 (build party-tree))
(print (get sample2 :tras))
(print (get sample2 :dialog))
