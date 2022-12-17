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

          (r {:cond [(state>= 80)
                   "OR(5)"
                   (not-in-party :uxana)
                   (not-in-party :uxath)
                   (not-in-party :uxolr)
                   (not-in-party :uxvoi)
                   (not-in-party :uxzar)
                   ]}
           "Where do you think your previous groupmates are?"
           (s "Which one?"
              (r {:cond [(not-in-party :uxath)]}
                 "What do you think Athar is up to?"
                 (s "He has a couple friends that tend to patrol the ankheg
 areas.  I guess they enjoy a hunt for some strong armor reagents."))

              (r {:cond [(not-in-party :uxolr)]}
                 "What do you think Olrun is up to?"
                 (s "When we were chatting, he showed an interest in heading
 to the south-eastern areas of this region."))

              (r {:cond [(not-in-party :uxvoi)]}
                 "What do you think The Voice is up to?"
                 (s "The Voice has always shown an interest in areas
 of historical interest.  I would check Firewine, Ulcaster, or those types."))

              (r {:cond [(not-in-party :uxzar)]}
                 "What do you think Zariel is up to?"
                 (s "She was on a south-bound trajectory, last I saw her."))
            ))

         (r "What do you think of our peers?"
           (s "Which one in particular?"
              (r "How about me?"
                 (s "I'm still undecided on that..."))

              (r {:cond ["OR(2)" (in-party :imoen2) (in-party :imoen1)]}
                 "What do you think of Imoen?"
                 (s "Hmm"))

              # BEGIN: Core friends
              (r {:cond [(in-party :uxana)]}
                 "What do you think of Anari?"
                 (s "Surely you jest."))

              (r {:cond [(in-party :uxath)]}
                 "What do you think of Athar?"
                 (s "Athar is a virtuous soul.  While some of his profession
 tend to fall into a holier-than-thou mindset, he remains quite grounded.
 I believe that's why our friendship has persisted for as long as it has."))

              (r {:cond [(in-party :uxolr)]}
                 "What do you think of Olrun?"
                 (s "He's a wild one.  A gentle soul, although he keeps
 that side to himself for the most part.  He's responsible for Zariel being
 who she is today."))

              (r {:cond [(in-party :uxvoi)]}
                 "What do you think of The Voice?"
                 (s "The Voice lives up to their name.  They are definitely
 a voice of reason among our adventures."))

              (r {:cond [(in-party :uxzar)]}
                 "What do you think of Zariel?"
                 (s "Zariel is quite a fun character.  I've enjoyed having
 her along.  Had it not been for Olrun, who knows what cage she might be
 rotting in."))
              # END: Core friends

              (r "Nevermind..."
                 (say "Not a problem."))
              ))

          (rep "Nevermind...")))

(defn main [& args]
  (var b1 (build-dialog banter-1-tree))
  (var b2 (build-dialog banter-2-tree))
  (var p1 (build-dialog pid-1-tree))
  (var p2 (build-dialog pid-2-tree))
  (string/format "BEGIN uxanaj\n%s" (string/join [b1 b2 p1 p2])))
