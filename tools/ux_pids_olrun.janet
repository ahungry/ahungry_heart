(use ./lib/dialog)
(load-imports)

(var banter-1-tree
     (say {:cond [(g "ux_olrun_is_bantering")
                  (g "ux_olrun_banter_id" 0)]}
          "This is our first banter"
          (rep {:code [(ig "ux_olrun_banter_id")]}
               "Cool!")
          (rep "Not now..." (mute :olrun))))

(var banter-2-tree
     (say {:cond [(g "ux_olrun_is_bantering")
                  (g "ux_olrun_banter_id" 1)]}
          "This is our second banter"
          (rep {:code [(ig "ux_olrun_banter_id")]}
               "Cool!")
          (rep "Not now..." (mute :olrun))))

(var pid-1-tree
     (say {:cond ["IsGabber(Player1)"
                  (ng "ux_olrun_is_bantering")
                  (ng "ux_olrun_is_pidding")]
           :code [(sg "ux_olrun_wishes_to_pid")]}
          "( Olrun turns to you )"
          #(rep {:cond ["True()"] :code [(sg "ux_olrun_wishes_to_pid")]})
          ))

(var
 pid-2-tree
 (s {:cond ["IsGabber(Player1)"
              (ng "ux_olrun_is_bantering")]}
      "What's on your mind? [uxolr56]"

      (r "Olrun, can you tell me a bit about yourself?"
         (s "I am a proud Dwarven Barbarian and follower of the gods of my people.
  I have strong convictions, and I will not hesitate to stand up for
  what I believe in."
            (s " I will join you on your quest, as I believe it is my duty to protect
 our world from those who wish to do it harm."
               (r "It's great to have you with us."
                  (s "It is an honour. Let us journey together, and may our courage
 and dedication be rewarded with success!"))
               (r "I don't care about all of that, when you're in this group,
 you will do as I say."
                  (s "Hah, yea...whatever you say, sure.")))))

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
            (r {:cond [(not-in-party :uxath)]}
               "What do you think Athar is up to?"
               (s "Could be groveling before his Gods.
 Quite a common behavior of those representing the faith."))

            (r {:cond [(not-in-party :uxana)]}
               "What do you think Anari is up to?"
               (s "Hmm, stick to any dense forest areas, that
 would be my guess."))

            (r {:cond [(not-in-party :uxvoi)]}
               "What do you think The Voice is up to?"
               (s "They are more at home in the shadows and areas
 of darkness.  Try some place friendly to those long past?"))

            (r {:cond [(not-in-party :uxzar)]}
               "What do you think Zariel is up to?"
               (s "When we parted, she was headed for the carnival."))
            ))

      (r "What do you think of our peers?"
         (s "Which one in particular?"
            (r "How about me?"
               (s "I'm still undecided on that..."))

            (r {:cond ["OR(2)" (in-party :imoen2) (in-party :imoen1)]}
               "What do you think of Imoen?"
               (s "Hmm"))

            # BEGIN: Core friends
            (r {:cond [(in-party :uxolr)]}
               "What do you think of Olrun?"
               (s "Hah, good one <CHARNAME>, good one!  Are you a counselor?"))

            (r {:cond [(in-party :uxana)]}
               "What do you think of Anari?"
               (s "She's got the sharpest aim with that bow ofhers.  I'd hate
 to be on the receiving end.  Her calm demeanor and temperament is paramount
 to our team's cohesiveness."))

            (r {:cond [(in-party :uxath)]}
               "What do you think of Athar?"
               (s "He's one of the good ones.  I enjoy clubbing some baddies
 with him at the front lines."))

            (r {:cond [(in-party :uxvoi)]}
               "What do you think of The Voice?"
               (s "Without them, I'd have been dead ten times over!
 You won't find much about their personal history though, they've always
 been an enigma."))

            (r {:cond [(in-party :uxzar)]}
               "What do you think of Zariel?"
               (s "Zariel is like a daughter to me.  I found her messing about
 in the shadows in Baldur's Gate - luckily talked some sense into her and her ways
 before she had gotten into any real trouble."
                  (s "A lot won't even give her a fair chance, being of her
 heritage and \"career\", but I'm certainly happy that I did.")))
            # END: Core friends

            (rep "Nevermind...")))))

(defn main [& args]
  (var b1 (build-dialog banter-1-tree))
  (var b2 (build-dialog banter-2-tree))
  (var p1 (build-dialog pid-1-tree))
  (var p2 (build-dialog pid-2-tree))
  (string/format "BEGIN uxolrj\n%s" (string/join [b1 b2 p1 p2])))
