(use ./dialog)
(use ./util)

(var banter-1-tree
     (s {:cond [(g "ux_zariel_is_bantering")
                (g "ux_zariel_banter_id" 0)]}
        "This is our first banter"
        (r {:code [(ig "ux_zariel_banter_id")]}
           "Cool!")
        (r "Not now..." (mute :zariel))))

(var banter-2-tree
     (s {:cond [(g "ux_zariel_is_bantering")
                (g "ux_zariel_banter_id" 1)]}
        "This is our second banter"
        (r {:code [(ig "ux_zariel_banter_id")]}
           "Cool!")
        (r "Not now..." (mute :zariel))))

(var pid-1-tree
     (s {:cond ["IsGabber(Player1)"
                (ng "ux_zariel_is_bantering")
                (ng "ux_zariel_is_pidding")]
         :code [(sg "ux_zariel_wishes_to_pid")]}
        "( Zariel turns to you )"
        #(r {:cond ["True()"] :code [(sg "ux_zariel_wishes_to_pid")]})
        ))

(var pid-2-tree
     (s {:cond ["IsGabber(Player1)"
                (ng "ux_zariel_is_bantering")]}
        "What's on your mind? [uxzar56]"

        (r "Zariel, what brings you to this quest?"
           (s "I have come to join your party on this noble mission.
 I have long been defending Baldur’s Gate and its surrounding forests
 against the forces of evil, and I do not intend to waiver in my dedication now."
              (r "We are fortunate to have you with us."
                 (s "It is my pleasure. In the face of such danger,
 it is comforting to have companions to rely upon.
 I will fight to protect both of you, even in the darkest of times."))))

        (r "What do you think of our companions?"
           (s "Which one in particular?"
              (r {:cond ["OR(2)" (in-party :imoen2) (in-party :imoen1)]}
                 "What do you think of Imoen?"
                 (s "Seems her and I are quite similar."))

              (r {:cond [(in-party :imoen2)]}
                 "What do you think of Imoen2?"
                 (s "Seems her and I are quite similar."))

              (r {:cond [(in-party :imoen1)]}
                 "What do you think of Imoen1?"
                 (s "Seems her and I are quite similar."))

              (r {:cond [(in-party :uxana)]}
                 "What do you think of Anari?"
                 (s "She's pretty cool!"))

              (r {:cond [(in-party :uxvoi)]}
                 "What do you think of The Voice?"
                 (s "Somewhat unusual..."))))

        (r "Nevermind...")))

(defn main [& args]
  (var b1 (build-dialog banter-1-tree))
  (var b2 (build-dialog banter-2-tree))
  (var p1 (build-dialog pid-1-tree))
  (var p2 (build-dialog pid-2-tree))
  (string/format "BEGIN uxzarj\n%s" (string/join [b1 b2 p1 p2])))
