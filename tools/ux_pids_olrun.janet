(use ./lib/dialog)
(load-imports)

(var
 banters-to-player
 [
  (s {:cond [(g "ux_olrun_is_bantering")
             (g "ux_olrun_banter_id" 0)]}
     "Hey <CHARNAME>, a coin fer your thoughts?"
     (r {:code [(ig "ux_olrun_banter_id") "GiveGoldForce(1)"]}
        "I could always use some coin, what is it Olrun?"
        (s "You really had to deal with a lot of crap lately.  Are you holding up and
 hanging in there?"
           (r "I'm the most amazing I've ever been!"
              (s "Hah!  I knew a little thing like the death of all your relatives
 wouldn't get ya down!  But, on a more serious note, if you need an ear to lay your
 troubles on, you can direct those woes this way, I'm here for ya."
                 (r "Thanks Olrun, I appreciate your selfless offer."
                    (s "Of course <CHARNAME>!"))
                 (r "That's good to hear, I'm not actually as well as I implied, it would
 be good to have someone to lean on sometime."
                    (s "I'm here for you."))))
           (r "I wouldn't say I'm doing great, but I'm not feeling too stressed either."
              (s "That's a pretty ambivalent attitude <CHARNAME>, you should let your emotions
 shine through, for better o' worse, there's no point in bottling it all up.  You'll be nothing
 more than a mindless zombie at that rate."
                 (r "Did I ask for your thoughts, or did you ask for mine?"
                    (s "Touche"))
                 (r "That's something to think on, thanks Olrun."
                    (s "No doubt!"))))
           (r "I'm horribly depressed.  I actually haven't felt this vulnerable in a long time, if ever."
              (s "Wow <CHARNAME>, you are really opening up early.  That's an unhindered answer if I ever
 saw one.  I appreciate your trusting in me."
                 (r "Sike!  I'm just pulling your leg, I'm fine."
                    (s "If you say so."))
                 (r "Of course Olrun, and I'm hoping you can trust in me as well."
                    (s "We'll see, although I don't see any reason not to."))))))

     (r "Not now..." (mute :olrun)))

  (s {:cond [(g "ux_olrun_is_bantering")
             (g "ux_olrun_banter_id" 1)]}
     "Ho there <CHARNAME>, 2 coins for yer ear this time?"
     (r {:code [(ig "ux_olrun_banter_id") "GiveGoldForce(2)"]}
        "I never say no to a gold or two, what's up Olrun?"
        (s "What's your favorite kind of weapon?"
           (r "I love swords, the way they cut, just so exciting."
              (s "Hmm yea, can't go wrong with a good blade.  I'm a fan of hammers
 myself - if you didn't figure it out."))
           (r "A good blunt weapon is where it's at.  The feeling of smashing
 my target as I bludgeon them to death.  Give me a hammer, mace or flail any day!"
              (s "Now that's music to me ears!"))
           (r "I love anything that lets me kill from a safe distance.  I'd much rather
 be sitting a hundred yards away, plinking my foes down before I'm anywhere close
 to having to smell them."
              (s "Ah, you should have some words with Anari, she's of a similar mind."))
           (r "The only weapon I need is my staff or spellbook, I enjoy summoning
 mystic forces and watching my enemies suffer."
              (s "Remind me not to get on your bad side."))
           (r "Violence?  Eww... I prefer to solve my problems with songs or diplomacy."
              (s "Hmm, no love for a good battle full of combat eh?"))))
     (r "Not now..." (mute :olrun)))
 ])

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

      (r "Olrun, let's talk about you for a moment."
         (s "Sure <CHARNAME>, what did ya wanna know?"
            (r "What was your early life like?"
               (s "Oh boy, lessee... I'm originally from a dwarven community, as if
 that much wasn't obvious.  We were a bit of a sub-group in Baldur's Gate, no exotic
 region or from deep underground or at the top of the mountains or anything like that."
                  (r "Wow, a dwarf that isn't even from a proper dwarven location,
 I think I've heard enough."
                     (s "Hah!  Good, I was done sharing with you anyways."))
                  (r "That's interesting Olrun, what was it like being part of a
 smaller community within the large city?"
                     (s "Things were good.  I had a prosperous upbringing, though
 far from nobility's wealth and riches.  My siblings and I would often set out on an
 excursion, trained in the ways of adventurin' from my elders."))))

            (r "What types of things do you enjoy?"
               (s "I love a good physical challenge, something done for sport and fun.
 I mean, I love combat and the glory of battle as well, but that's more business than
 pleasure.  Well, sometimes it's more pleasure than business.  Anyways, there are a lot
 of activities to best each other that don't involve the loser's skull being crushed."
                  (s "Wouldn't want that to happen when competing with a friend."
                     (r "Ugh, I hate physical activities.  Much more of a book worm myself."
                        (s "Well, whatever suits yourself."))
                     (r "Now that's a rousing description of enjoyment, I hope to
 be included in it sometime!"))))

            (r "What do you look for in a friend?"
               (s "When I'm searching for a friend, I look for the most attractive
 individual I can find, if you get my drift *wink wink, nudge nudge*.  But, more
 seriously, I don't think I've gone looking for a friend, it just happens when activities
 are shared with comrades and the bond forms naturally."
                  (r "What do you think of me?  Would you consider me a friend?"
                     (s "I don't consider you an enemy, so I'd say you're well on your way there!"))
                  (r "Sounds pretty lame, I don't think I'd want to be your friend."
                     (s "Ouch, that's just cold."))))))

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
  (var b1 (string/join (map build-dialog banters-to-player) "\n"))
  (var p1 (build-dialog pid-1-tree))
  (var p2 (build-dialog pid-2-tree))
  (string/format "BEGIN uxolrj\n%s" (string/join [b1 p1 p2])))
