(use ./dialog)
(use ./util)

(var
 sleepy-tree
 (say {:cond [(l "ux_zariel_sleeping")]}
      "Zzz, huh, what?  Who's there? [uxzar55]"
      (rep {:code [(sl "ux_zariel_sleeping" 0)]}
           "Hey, wake up!")
      (rep "( let her sleep )")))

(var
 party-tree
 (say {:cond [(g "ux_prelude_done")]}

      "Hmm, you look interesting.  I am Zariel, lend me your ear. [uxzar01]"

      (rep {:cond [(ng "ux_group_join_deny")]}
           "Consider my ear lent - what troubles you Zariel?"

           (say "My friends and I are on an important quest, pertaining to The Heart of Baldur's Gate.  Care to join us?  I know that you and Gorion were close, and he would no doubt appreciate us keeping an eye on you."
                (party-member-join-block "zariel" "Zariel")))

      (rep {:cond [(g "ux_group_join_deny")]}
           "Consider my ear lent - what troubles you Zariel?"

           (say "So, you're pickin' and choosin' who will come?
 Care to include me? I can slice n' dice like few others."
                (party-member-join-block "zariel" "Zariel")))

      (rep "Sorry Zariel, I can't at the moment."
           (say "That's fine, should you change your mind, you'll find us around."))))

(defn main [& args]
  (var sleepy (build-dialog sleepy-tree))
  (var party (build-dialog party-tree))
  (string/format "BEGIN uxzar\n%s%s" sleepy party))
