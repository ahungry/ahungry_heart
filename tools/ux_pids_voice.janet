(use ./lib/dialog)
(load-imports)

(var
 banters-to-player
 [
  (s {:cond [(g "ux_voice_is_bantering")
             (g "ux_voice_banter_id" 0)]}
     "Pardon me <CHARNAME>, care to chat for a moment?"
     (r {:code [(ig "ux_voice_banter_id")]}
        "Sure Voice, what is it?"
        (s "You have been subjected to cruel conditions, those that one so young should
 need not endure.  Are you well?"
           (r "I'm absolutely splendid!  I have no problems to speak of."
              (s "That's commendable, I would not be so cavalier myself, were I under
 a similar set of conditions.  Are you certain that you do not need someone to share
 your problems with?"
                 (r "Thank you for your concern.  I assure you, I am doing fine."
                    (s "That's good to hear."))))
           (r "I feel fine.  I'm not under duress of any sort.  While my scenario is
 unfortunate, I don't feel that it's effected me in any meaningful way."
              (s "I am surprised to hear that <CHARNAME>, I would expect that the
 death of your foster father, combined with your constant battles since, would have, at the
 very least, caused you some mental hardships."
                 (r "Well, it hasn't.  I'm lucky I guess."
                    (s "I guess so."))
                 (r "..." (s "Regardless, hang in there."))))
           (r "Voice, I wish I could say I am well, however I am far from it.  I suffer
 constantly from the sadness of loss."
              (s "It brings me pain to hear that, however I hope that I am able to help
 you move beyond the loss, and retain those memories that contributed to happiness, while
 letting go and moving on from those that cause you to suffer."))))
     (r "Not now..." (mute :voice)))

  (s {:cond [(g "ux_voice_is_bantering")
             (g "ux_voice_banter_id" 1)]}
     "<CHARNAME>, I require your attention."
     (r {:code [(ig "ux_voice_banter_id")]}
        "What is it that I can help you with?"
        (s "What are your thoughts on the arcane?  Magic, mysticism and the divine arts."
           (r "I feel that it's an interesting topic, they seem to greatly assist me and
 I use them in my adventures whenever I am able."
              (s "I am grateful to hear you say that.  I've long been a practitioner of such,
 and it has served me well in protecting the city of Baldur's Gate."))
           (r "Honestly, I've never given it much thought.  When practitioners use it
 and it works out for me, great."
              (s "That's a pretty simple mindset.  Do you not pause and think
 about the world around us?  Such a blase attitude is to put oneself on the level
 of a bird."))
           (r "I don't give a damn about the divine and arcane.  I just know those who use it
 tend to be a lot squishier when I'm killing 'em!"
              (s "Well, that's an interesting thought..."))
           )
        )
     (r "Not now..." (mute :voice)))
  ])

(var pid-1-tree
     (say {:cond ["IsGabber(Player1)"
                  (ng "ux_voice_is_bantering")
                  (ng "ux_voice_is_pidding")]
           :code [(sg "ux_voice_wishes_to_pid")]}
          "( Voice turns to you )"
          #(rep {:cond ["True()"] :code [(sg "ux_voice_wishes_to_pid")]})
          ))

(var
 pid-2-tree
 (s {:cond ["IsGabber(Player1)"
            (ng "ux_voice_is_bantering")]}
    "What's on your mind? [uxvoi56]"

    (r "Who are you, Voice? What brings you to this quest?"
       (s "I am The Voice, a mysterious entity with unknown origins.
  I am joining your adventure because I believe in the great power of
  the Heart of Baldur's Gate, and I want to make sure it does not fall
  into the wrong hands."
          (s "I am a cleric of law and order, so it is my duty to see that justice is served."
             (r "That's admirable."
                (s "I am doing what I must. We all have our own roles to play in this,
  and I intend to fulfill mine. I will be here to guide and support you
  in any way I can as we take on this quest."))
             (r "I've changed my mind, I really don't care.
  You'll do as I say when you're in this party."
                (s "Well, that was rude of you.")))))

    # TODO: Add some pids towards The Voice
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
  (var b1 (string/join (map build-dialog banters-to-player) "\n"))
  (var p1 (build-dialog pid-1-tree))
  (var p2 (build-dialog pid-2-tree))
  (string/format "BEGIN uxvoij\n%s" (string/join [b1 p1 p2])))
