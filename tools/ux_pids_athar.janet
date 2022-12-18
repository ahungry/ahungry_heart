(use ./dialog)
(load-imports)

(var banter-1-tree
     (say {:cond [(g "ux_athar_is_bantering")
                  (g "ux_athar_banter_id" 0)]}
          "This is our first banter"
          (rep {:code [(ig "ux_athar_banter_id")]}
               "Cool!")
          (rep "Not now..." (mute :athar))))

(var banter-2-tree
     (say {:cond [(g "ux_athar_is_bantering")
                  (g "ux_athar_banter_id" 1)]}
          "This is our second banter"
          (rep {:code [(ig "ux_athar_banter_id")]}
               "Cool!")
          (rep "Not now..." (mute :athar))))

(var pid-1-tree
     (say {:cond ["IsGabber(Player1)"
                  (ng "ux_athar_is_bantering")
                  (ng "ux_athar_is_pidding")]
           :code [(sg "ux_athar_wishes_to_pid")]}
          "( Athar turns to you )"
          #(rep {:cond ["True()"] :code [(sg "ux_athar_wishes_to_pid")]})
          ))

(var
 pid-2-tree
 (s {:cond ["IsGabber(Player1)"
            (ng "ux_athar_is_bantering")]}

    "What's on your mind? [uxath56]"

    (r "So Athar, what brings you to this dangerous quest?"
       (s "I am on a mission from my family. We are part of an ancient
 and noble lineage, entrusted with the protection of sacred
 artifacts like the Heart of Baldur's Gate.
 It seemed only natural that I should be the one to take up this task."
          (r "That's quite brave of you."
             (s "I'm just doing my duty, but thank you for the compliment."))
          (r "You sound stuck up.  When you're in this group, you'll do
 as I command."
             (s "As you wish...for now."))))

    (r "What have you accomplished so far?"
       (s "Well, I've done a great deal in my travels thus far.
 I've fought many enemies, protected the innocent, and even
 uncovered some secrets about the Heart of Baldur's Gate, though I'm
 sworn to keep them confidential. "
          (s "But I am sure our mission will bring us closer to uncovering
 the truth behind this powerful artifact.")))

    (r {:cond [(state>= 70)
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
             (s "Last I heard from her, she had plans to look south of where
 we first met."))

          (r {:cond [(not-in-party :uxolr)]}
             "What do you think Olrun is up to?"
             (s "Olrun has a strong sense of adventure - anywhere that's
 extremely trap-laden and dangerous, that's where I would guess."))

          (r {:cond [(not-in-party :uxvoi)]}
             "What do you think The Voice is up to?"
             (s "I believe they would be with those of a similar demeanor - probably
 those of the ghostly sort."))

          (r {:cond [(not-in-party :uxzar)]}
             "What do you think Zariel is up to?"
             (s "She can be pretty young at heart - what kind of things do kids like?"))
          ))

    (r "What do you think of our peers?"
       (s "Which one in particular?"
          (r "How about me?"
             (s "I'm still undecided on that..."))

          (r {:cond ["OR(2)" (in-party :imoen2) (in-party :imoen1)]}
             "What do you think of Imoen?"
             (s "Hmm"))

          # BEGIN: Core friends
          (r {:cond [(in-party :uxath)]}
             "What do you think of Athar?"
             (s "Surely you jest."))

          (r {:cond [(in-party :uxana)]}
             "What do you think of Anari?"
             (s "Anari is a long time friend.  She's lived in the areas
 surrounding Baldur's Gate for quite awhile.  More of the nomadic type than
 the settle-down type.  We've often traveled together."))

          (r {:cond [(in-party :uxolr)]}
             "What do you think of Olrun?"
             (s "Quite a warrior, he revels in the chaos of battle.
  Unfortunate for our enemies, but quite a boon for us."
                ))

          (r {:cond [(in-party :uxvoi)]}
             "What do you think of The Voice?"
             (s "The Voice speaks with a lot of wisdom and sense.  They're
 the lynchpin that keeps our group grounded and together."))

          (r {:cond [(in-party :uxzar)]}
             "What do you think of Zariel?"
             (s "Despite fate working against her, I believe she has
 a good nature at her core.  You can't really be \"good\" in the traditional
 sense when of her heritage - at least not without true conviction, but
 she's not the murderous sort - just the mischievous sort."))
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
  (string/format "BEGIN uxathj\n%s" (string/join [b1 b2 p1 p2])))
