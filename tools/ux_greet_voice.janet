(use ./dialog)
(use ./util)

(var
 party-tree
 (say {:cond [(g "ux_prelude_done")]}

      "Some call me The Voice, you may call me friend.  Well met traveler. [uxvoi01]"

      (rep {:cond [(ng "ux_group_join_deny")]}
           "Well met \"friend\", what is it you need of me?"
           (say "My friends and I are on an important quest, pertaining to The Heart of Baldur's Gate.  Care to join us?  I know that you and Gorion were close, and he would no doubt appreciate us keeping an eye on you."
                (party-member-join-block "voice" "Voice")))

      (rep {:cond [(g "ux_group_join_deny")]}
           "Well met \"friend\", what is it you need of me?"
           (say "I do not believe it wise to separate us, but allow me to offer my aid to you."
                (party-member-join-block "voice" "Voice")))

      (rep "Sorry Voice, I don't wish to speak with you."
           (say "That's fine, should you change your mind, you'll find us around."))))

(defn main [& args]
  (var party (build-dialog party-tree))
  (string/format "BEGIN uxvoi\n%s" party))
