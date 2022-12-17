(use ./dialog)
(load-imports)

(var banter-1-tree
     (say {:cond [(g "ux_voice_is_bantering")
                  (g "ux_voice_banter_id" 0)]}
          "This is our first banter"
          (rep {:code [(ig "ux_voice_banter_id")]}
               "Cool!")
          (rep "Not now..." (mute :voice))))

(var banter-2-tree
     (say {:cond [(g "ux_voice_is_bantering")
                  (g "ux_voice_banter_id" 1)]}
          "This is our second banter"
          (rep {:code [(ig "ux_voice_banter_id")]}
               "Cool!")
          (rep "Not now..." (mute :voice))))

(var pid-1-tree
     (say {:cond ["IsGabber(Player1)"
                  (ng "ux_voice_is_bantering")
                  (ng "ux_voice_is_pidding")]
           :code [(sg "ux_voice_wishes_to_pid")]}
          "( Voice turns to you )"
          #(rep {:cond ["True()"] :code [(sg "ux_voice_wishes_to_pid")]})
          ))

(var pid-2-tree
     (say {:cond ["IsGabber(Player1)"
                  (ng "ux_voice_is_bantering")]}
          "What's on your mind? [uxvoi56]"

          (rep "Voice, what brings you to this quest?"
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
                 (s "No doubt in the northern regions."))

              (r {:cond [(not-in-party :uxana)]}
                 "What do you think Anari is up to?"
                 (s "It is certain she would be in an area of forestation."))

              (r {:cond [(not-in-party :uxolr)]}
                 "What do you think Olrun is up to?"
                 (s "It is highly likely that he is seeking the thrill of adventure."))

              (r {:cond [(not-in-party :uxzar)]}
                 "What do you think Zariel is up to?"
                 (s "She would no doubt be in a populated location."))
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
                 "What do you think of Olrun?"
                 (s "He is battle and treasure minded, but despite lacking
 a devout commitment, he shows appreciate and candor towards those known to him."))

              (r {:cond [(in-party :uxana)]}
                 "What do you think of Anari?"
                 (s "She is very knowledgeable and benevolent.  Our team has
 been fortunate to have her along through many adventures."))

              (r {:cond [(in-party :uxath)]}
                 "What do you think of Athar?"
                 (s "Athar shows a strong reverence to the Gods, and that is
a mindset I am agreeable to."))

              (r {:cond [(in-party :uxvoi)]}
                 "What do you think of The Voice?"
                 (s "Well, that is myself, and I believe you are making a quip."))

              (r {:cond [(in-party :uxzar)]}
                 "What do you think of Zariel?"
                 (s "She does not lean heavily into her nature, but rather
 maintains a more neutral outlook.  It is invigorating to feel her youthful nature."))
              # END: Core friends

          (rep "Nevermind...")))))

(defn main [& args]
  (var b1 (build-dialog banter-1-tree))
  (var b2 (build-dialog banter-2-tree))
  (var p1 (build-dialog pid-1-tree))
  (var p2 (build-dialog pid-2-tree))
  (string/format "BEGIN uxvoij\n%s" (string/join [b1 b2 p1 p2])))
