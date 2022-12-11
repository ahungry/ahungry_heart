(use ./dialog)
(use ./util)

(var
 party-tree
 (say {:cond [(g "ux_prelude_done")]}

      "You there, hero. I'm Athar and I seek your assistance. [uxath01]"

      (rep {:cond [(ng "ux_group_join_deny")]}
           "I would be honored to help, how can I assist?"
           (say "My friends and I are on an important quest, pertaining to The Heart of Baldur's Gate.  Care to join us?  I know that you and Gorion were close, and he would no doubt appreciate us keeping an eye on you."
                (party-member-join-block "athar" "Athar")))

      (rep {:cond [(g "ux_group_join_deny")]}
           "I would be honored to help, how can I assist?"
           (say "Hmm, it seems you aim to follow your own path.  I offer you my sword."
                (party-member-join-block "athar" "Athar")))

      (rep "Sorry Athar, I can't at the moment."
           (say "That's fine, should you change your mind, you'll find us around."))))

(defn main [& args]
  (var party (build-dialog party-tree))
  (string/format "BEGIN uxath\n%s" party))
