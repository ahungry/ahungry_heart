(use ./dialog)
(load-imports)

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
            (r {:cond [(not-in-party :uxana)]}
               "What do you think Anari is up to?"
               (s "She's always been fond of making new friends with her own folk.
 I would probably try looking for her close to one of her own kind."))

            (r {:cond [(not-in-party :uxath)]}
               "What do you think Athar is up to?"
               (s "No doubt espousing the virtues of paladin-hood with
 like minded folk."))

            (r {:cond [(not-in-party :uxolr)]}
               "What do you think Olrun is up to?"
               (s "If I know him, he's likely out seeking something or other
 related to dwarf heritage.  You know how they are."))

            (r {:cond [(not-in-party :uxvoi)]}
               "What do you think The Voice is up to?"
               (s "Hmmm...that's a hard one to guess..."
                  (s "Maybe try looking somewhere mystical and maze-like?")))))

        (r "What do you think of our peers?"
           (s "Which one in particular?"
              (r "How about me?"
                 (s "I'm still undecided on that..."))

              (r {:cond ["OR(2)" (in-party :imoen2) (in-party :imoen1)]}
                 "What do you think of Imoen?"
                 (s "Seems her and I are quite similar."))

              # (r {:cond [(in-party :imoen2)]}
              #    "What do you think of Imoen2?"
              #    (s "Seems her and I are quite similar."))

              # (r {:cond [(in-party :imoen1)]}
              #    "What do you think of Imoen1?"
              #    (s "Seems her and I are quite similar."))

              # BEGIN: Core friends
              (r {:cond [(in-party :uxath)]}
                 "What do you think of Athar?"
                 (s "A lot less stuck up than some of the other holier-than-thou
 types I've come across.  Can't say I have any gripes with him."))

              (r {:cond [(in-party :uxana)]}
                 "What do you think of Anari?"
                 (s "Pretty good with that bow of hers - can't say I've seen
 many of her type wielding them before.  No, not elves, they use 'em plenty, but
 less of the \"cure your wounds\" types."))

              (r {:cond [(in-party :uxolr)]}
                 "What do you think of Olrun?"
                 (s "He's a great friend.  Scooped me up off the streets of
 Baldur's Gate, quite literally."
                    (s "I had fallen on some rough times, and being of my unique
 nature, random townsfolk are, well...less than helpful.  Luckily Olrun
 came around when he did.")))

              (r {:cond [(in-party :uxvoi)]}
                 "What do you think of The Voice?"
                 (s "As if i could answer that.  Not many know.  I heard they
 have worked within the shadows of Baldur's Gate for quite some time, providing
 a bit of information to those who need it to keep the city safe."))

              (r {:cond [(in-party :uxzar)]}
                 "What do you think of Zariel?"
                 (s "Is that supposed to be a joke?"))
              # END: Core friends

              (r "Nevermind..."
                 (say "Heh, alright, I'm here if you change your mind."))
              ))

        (r "Nevermind...")))

(defn main [& args]
  (var b1 (build-dialog banter-1-tree))
  (var b2 (build-dialog banter-2-tree))
  (var p1 (build-dialog pid-1-tree))
  (var p2 (build-dialog pid-2-tree))
  (string/format "BEGIN uxzarj\n%s" (string/join [b1 b2 p1 p2])))
