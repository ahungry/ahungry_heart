(use ./dialog)
(use ./util)

(defmacro olrun-glory []
  ~(say "Going down in the glory of battle!  I'd have it no other way. [uxolr16]"))

(var
 prelude-tree
 (say
  {:cond [(ng "ux_prelude_done")]}
  "Noooo, we were too late! [uxolr52]"
  (rep "Did...did you see that?"
       (say "Only the aftermath - we just arrived in the wee hours of the morn. [uxolr53]"
            (olrun-glory)))
  (rep "..."
       (say "Cat got yer tongue?  Well, I don't blame ya.  We just arrived in the wee hours of the morn, just in time to see the aftermath. [uxolr54]"
            (olrun-glory)))))

(var
 party-tree
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

(defn main [& args]
  (var prelude (build-dialog prelude-tree))
  (var party (build-dialog party-tree))
  (string/format "BEGIN uxolr\n%s%s" prelude party))
