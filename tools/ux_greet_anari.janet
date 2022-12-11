(use ./dialog)
(use ./util)

(var
 party-tree
 (say {:cond [(g "ux_prelude_done")]}

      "You there, hero.  I have an important message for you.
 I'm Anari and I seek your assistance. [uxana01]"

      (rep {:cond [(ng "ux_group_join_deny")]}
           "What is it I can do to assist you Anari?"
           (say "My friends and I are on an important quest, pertaining to The Heart of Baldur's Gate.  Care to join us?  I know that you and Gorion were close, and he would no doubt appreciate us keeping an eye on you."
                (party-member-join-block "anari" "Anari")))

      (rep {:cond [(g "ux_group_join_deny")]}
           "What is it I can do to assist you Anari?"
           (say "If our group is to separate, it will surely be temporary.
 For now, I offer you my aid."
                (party-member-join-block "anari" "Anari?")))

      (rep "Sorry Anari, I can't at the moment."
           (say "That's fine, should you change your mind, you'll find us around."))))

(defn main [& args]
  (var party (build-dialog party-tree))
  (string/format "BEGIN uxana\n%s" party))
