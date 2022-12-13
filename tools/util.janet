(use ./dialog)

(defn party-member-join-block [who name]
  (say "So?"
       (rep {:cond [(ng "ux_group_join_deny")]
             :code [(sl (string/format "ux_in_party_%s" who))
                    (sg "ux_request_group_join")
                    (sg (string/format "ux_%s_banter_timer" who) 5)
                    (jp)
                    "CreateCreature(\"uxpea\")"
                    ]}
            "I would love to join your group.
 ( NOTE: This option recruits all 5 at once, and will skip some join dialogue )")

       (rep {:code [(sl (string/format "ux_in_party_%s" who))
                    (sg "ux_group_join_deny")
                    (sg (string/format "ux_%s_banter_timer" who) 5)
                    (jp)
                    "CreateCreature(\"uxpea\")"
                   ]}
            "I can't join your group, but I would love to have you join mine.")

       (rep (string/format "Sorry %s, I'm on my own adventure at the moment." name)
             (say "That's fine, should you change your mind, you'll find us around."))))

(defn mute [who]
  (say "Fine, how much alone time do you need?"
       (rep "Just a few minutes, I'm working on something."
            (say {:code [(rsgt (string/format "ux_%s_banter_timer" (string who)) 10)]}
                 "Fine."))
       (rep "I have more important tasks to focus on - give me a few hours."
            (say {:code [(rsgt (string/format "ux_%s_banter_timer" (string who)) 30)]}
                 "Fine."))
       (rep "Sorry, that was a mistake, I do have time."
            (say {:code [(rsgt (string/format "ux_%s_banter_timer" (string who)) 1)]}
                 "Fine."))))
