(use ./dialog)

(defmacro olrun-glory []
  ~(say "Going down in the glory of battle!  I'd have it no other way. [uxolr16]"))

(var prelude-tree
     (say
      {:cond [(ng "ux_prelude_done")]}
      "Noooo, we were too late! [uxolr52]"
      (rep "Did...did you see that?"
           (say "Only the aftermath - we just arrived in the wee hours of the morn. [uxolr53]"
                (olrun-glory)))
      (rep "..."
           (say "Cat got yer tongue?  Well, I don't blame ya.  We just arrived in the wee hours of the morn, just in time to see the aftermath. [uxolr54]"
                (olrun-glory)))))

(defmacro party-member-join-block [who name]
  ~(say "So?"
       (rep {:code [(sl ,(string/format "ux_in_party_%s" who))
                    (sg "ux_request_group_join")
                    (sg ,(string/format "ux_%s_banter_timer" who) 5)
                    (jp)
                    ]}
            "I would love to join your group. ( NOTE: This option recruits all 5 at once, and will skip some join dialogue )")
       (rep {:code [(sl ,(string/format "ux_in_party_%s" who))
                    (sg "ux_group_join_deny")
                    (sg ,(string/format "ux_%s_banter_timer" who) 5)
                    (jp)
                    ]}
            "I can't join your group, but I would love to have you join mine.")
       (rep ,(string/format "Sorry %s, I'm on my own adventure at the moment." name)
            (say "That's fine, should you change your mind, you'll find us around."))))

(var party-tree
     (say {:cond ["True()"]}
          "Hail friend, it is I, Olrun.  Have you a moment? [uxolr01]"
          (rep {:cond [(ng "ux_group_join_deny")]}
               "Sure Olrun, what's up?"
               (say "My friends and I are on an important quest, pertaining to The Heart of Baldur's Gate.  Care to join us?  I know that you and Gorion were close, and he would no doubt appreciate us keeping an eye on you."
                    (party-member-join-block "olrun" "Olrun")))
          (rep {:cond [(g "ux_group_join_deny")]}
               "Sure Olrun, what's up?"
               (say "Breakin apart a lifelong team just like that?  Well, may as well bring me along."
                    (party-member-join-block "olrun" "Olrun")))
          (rep "No, I cannot right now."
               (say "Fine."))))

(clear)
(var sample (build prelude-tree))
#(eprin (get sample :tras))
(print "\n\nBEGIN uxolr")
(print (get sample :dialog))

(var sample2 (build party-tree))
(eprin (get sample2 :tras))
(print (get sample2 :dialog))
