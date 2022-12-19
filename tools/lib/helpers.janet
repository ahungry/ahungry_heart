(use ./dialog)
(use ./actions)
(use ./settings)

(defn party-member-join-block [who name]
  (say "So?"
       (rep {:cond [(state 20)]
             :code [
                    (sg "ux_state" 30)
                    (rsgt "ux_athar_banter_timer" banter-timer)
                    (rsgt "ux_anari_banter_timer" banter-timer)
                    (rsgt "ux_voice_banter_timer" banter-timer)
                    (rsgt "ux_olrun_banter_timer" banter-timer)
                    (rsgt "ux_zariel_banter_timer" banter-timer)
                    (rsgt "ux_urgent_timer" 3)
                    (jp :uxana)
                    (jp :uxath)
                    (jp :uxzar)
                    (jp :uxolr)
                    (jp :uxvoi)
                    ]}
            "I would love to join your group.")

       (rep {:cond [(state 20)]
             :code [(sg "ux_state" 30)
                    (rsgt (string/format "ux_%s_banter_timer" who) banter-timer)
                    (rsgt "ux_urgent_timer" 3)
                    (jp)]}
            "I can't join your group, but I would love to have you join mine.")

       # This can only be triggered if one of the preceding 2 blocks was used.
       # This would be inviting a single character, letting the messenger block run,
       # and then telling him to buzz off, and inviting another character yet again.
       (rep {:cond [(state>= 30)]
             :code [(rsgt (string/format "ux_%s_banter_timer" who) banter-timer)
                    (jp)]}
            "Please come along with us.")

       (rep (string/format "Sorry %s, I'm on my own adventure at the moment." name)
            (say "That's fine, should you change your mind, you'll find us around."))))

(defn mute [who]
  (say "Fine, how much alone time do you need?"
       (rep "Just a few minutes, I'm working on something."
            (say {:code [(rsgt (string/format "ux_%s_banter_timer" (string who)) 180)]}
                 "Fine."))
       (rep "I have more important tasks to focus on - give me a few hours."
            (say {:code [(rsgt (string/format "ux_%s_banter_timer" (string who)) 3600)]}
                 "Fine."))
       (rep "Sorry, that was a mistake, I do have time."
            (say {:code [(rsgt (string/format "ux_%s_banter_timer" (string who)) 1)]}
                 "Fine."))))
