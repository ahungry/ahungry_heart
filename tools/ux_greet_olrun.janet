(use ./dialog)
(load-imports)

(defn olrun-glory []
  (say "Going down in the glory of battle!  I'd have it no other way. [uxolr16]"))

(var
 prelude-tree
 (say
  {:cond [(state 0)]}
  "Noooo, we were too late! [uxolr52]"
  (rep "Did...did you see that?"
       (say "Only the aftermath - we just arrived in the wee hours of the morn. [uxolr53]"
            (olrun-glory)))
  (rep "..."
       (say "Cat got yer tongue?  Well, I don't blame ya.  We just arrived in the wee hours of the morn, just in time to see the aftermath. [uxolr54]"
            (olrun-glory)))))

(var sleepy-tree
     (say {:cond [(state 10)]}
          "Do me a favor, wake up Zariel would ya? [uxolr58]"))

(var
 party-tree
 (say {:cond [(state>= 20)]}
      "Hail friend, it is I, Olrun.  Have you a moment? [uxolr01]"
      (rep {:cond [(state 20)]}
           "Sure Olrun, what's up?"
           (say "My friends and I are on an important quest, pertaining to The Heart of Baldur's Gate.  Care to join us?  I know that you and Gorion were close, and he would no doubt appreciate us keeping an eye on you."
                (party-member-join-block "olrun" "Olrun")))

      (rep {:cond [(state-not 20)]}
           "Sure Olrun, what's up?"
           (say "Breakin apart a lifelong team just like that?  Well, may as well bring me along."
                (party-member-join-block "olrun" "Olrun")))

      (rep "No, I cannot right now."
           (say "Fine."))))

(defn main [& args]
  (string/format
   "BEGIN uxolr\n%s"
   (string/join
    [
     (build-dialog prelude-tree)
     (build-dialog sleepy-tree)
     (build-dialog party-tree)
     ]
    "\n")))
