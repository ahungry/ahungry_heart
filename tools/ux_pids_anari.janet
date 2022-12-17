(use ./dialog)
(load-imports)

(var banter-1-tree
     (say {:cond [(g "ux_anari_is_bantering")
                  (g "ux_anari_banter_id" 0)]}
          "This is our first banter"
          (rep {:code [(ig "ux_anari_banter_id")]}
               "Cool!")
          (rep "Not now..." (mute :anari))))

(var banter-2-tree
     (say {:cond [(g "ux_anari_is_bantering")
                  (g "ux_anari_banter_id" 1)]}
          "This is our second banter"
          (rep {:code [(ig "ux_anari_banter_id")]}
               "Cool!")
          (rep "Not now..." (mute :anari))))

(var pid-1-tree
     (say {:cond ["IsGabber(Player1)"
                  (ng "ux_anari_is_bantering")
                  (ng "ux_anari_is_pidding")]
           :code [(sg "ux_anari_wishes_to_pid")]}
          "( Anari turns to you )"
          #(rep {:cond ["True()"] :code [(sg "ux_anari_wishes_to_pid")]})
          ))

(var pid-2-tree
     (say {:cond ["IsGabber(Player1)"
                  (ng "ux_anari_is_bantering")]}
          "What's on your mind? [uxana56]"

          (rep "Anari, what brings you to this quest?"
               (say "I have come to join your party on this noble mission.
 I have long been defending Baldur’s Gate and its surrounding forests
 against the forces of evil, and I do not intend to waiver in my dedication now."
                    (rep "We are fortunate to have you with us."
                         (say "It is my pleasure. In the face of such danger,
 it is comforting to have companions to rely upon.
 I will fight to protect both of you, even in the darkest of times."))))

          (rep "Nevermind...")))

(defn main [& args]
  (var b1 (build-dialog banter-1-tree))
  (var b2 (build-dialog banter-2-tree))
  (var p1 (build-dialog pid-1-tree))
  (var p2 (build-dialog pid-2-tree))
  (string/format "BEGIN uxanaj\n%s" (string/join [b1 b2 p1 p2])))
