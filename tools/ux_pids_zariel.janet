(use ./lib/dialog)
(load-imports)

(var
 banters-to-player
 [
  (s {:cond [(g "ux_zariel_is_bantering")
             (g "ux_zariel_banter_id" 0)]}
     "Hey <CHARNAME>, have a moment?"
     (r {:code [(ig "ux_zariel_banter_id")]}
        "Sure, what's up?"
        (s "Just wondering how you were doing?  It seems a lot has happened to you recently."
           (r "I'm doing great, I've suffered some loss, but it won't get me down!"
              (s "I feel that you aren't grasping your situation, or you're putting on a
 fake demeanor."
                 (r "Hah, no, really!  Why let that which can't be changed ruin my future which
 still can be?"
                    (s "That's not such a bad outlook afterall.  I suppose."))
                 (r "Well, I don't give a damn what you think.")))
           (r "I'm neither great or terrible.  I've definitely had some better times, but
 I won't let it control my personality or actions."
              (s "That's a really strong mindset to hold to, I've had some of my own struggles
 in the past, and it's nice to see one who keeps rational about it."))
           (r "Absolutely terrible.  My foster father is dead, I've got assassins after me,
 and I have an annoyingly chatty teammate who keeps trying to banter with me, named Zariel."
              (s "Well, I'm GLAD you're having a bad time!"))))
     (r "Not now..." (mute :zariel)))

  (s {:cond [(g "ux_zariel_is_bantering")
             (g "ux_zariel_banter_id" 1)]}
     "So, <CHARNAME>, I was thinking..."
     (r {:code [(ig "ux_zariel_banter_id")]}
        "About what?"
        (s "What's your opinion on helping the needy?"
           (r "My beliefs and moral compass hold me to the mindset that I should always do what I can do to assist."
              (s "What about when assisting one person may cause harm to more than one?  Or when that one person
 is someone that's more special to you?"
                 (r "While I would always like to help, I'll always put those close to me first."
                    (s "I'm glad to hear you say that."))
                 (r "I think it has to be decided on a case by case basis, a blanket answer would never work here."
                    (s "Sounds like a non-answer to me!"))
                 (r "I believe in utilitarianism, the needs of the many outweigh the needs of the few."
                    (s "Well, aren't you virtuous."))))
           (r "They should help themselves, I have no desire to assist those who cannot make due on their own."
              (s "Well, that's one philosophy..."))))
     (r "Not now..." (mute :zariel)))

  # TODO Add a banter chain following up about helping the needy, related to
  # something like thievery when needy must help themselves

  ])

(var pid-1-tree
     (s {:cond ["IsGabber(Player1)"
                (ng "ux_zariel_is_bantering")
                (ng "ux_zariel_is_pidding")]
         :code [(sg "ux_zariel_wishes_to_pid")]}
        "( Zariel turns to you )"
        #(r {:cond ["True()"] :code [(sg "ux_zariel_wishes_to_pid")]})
        ))

(var
 pid-2-tree
 (s {:cond ["IsGabber(Player1)"
            (ng "ux_zariel_is_bantering")]}
    "What's on your mind? [uxzar56]"

    (r "Zariel, why have you decided to join us on this quest?"
       (s "I'm in it for the adventure. Growing up on the streets of Baldur's Gate,
  I've seen more than my fair share of excitement. Joining an epic quest
  and stopping the forces of evil from getting their hands on
  a powerful artifact is something I just can't pass up."
          (r "That's quite bold of you."
             (s "I take risks, but that doesn't mean I'm reckless.
 I'm here because I know I can handle whatever comes my way and
 come out on top. Let's get going!"))
          (r "I don't care about your desire for adventure, when you're in
 this party, you will recognize me as your absolute leader."
             (s "For your sake, I hope you're joking."))))

    (r "Can you tell me a bit about yourself?"
       (s "What did you want to know?"

          (r "What was your early life like?"
             (s "Well, I grew up in Baldur's Gate.  My family was quite poor, but my parents always made
 sure I had what was necessary to survive.  Well, they did while they were around anyways..."
                (r "What happened to your parents?"
                   (s "Well, they weren't always the most ethical of sorts.  Like I said, they'd
 do what was required to make sure I was provided for.  However, very few people are looking to
 employ a couple of tieflings.  Eventually they fell on the wrong side of the law, and in their
 attempt to avoid imprisonment, were unjustly slain in battle. "
                      (r "Oh no, that's horrible."
                         (s "Yea, I had a growing resentment of the \"good\" parts of society bred
 out of jealousy and hunger when they were around.  That started to get a lot worse when they weren't.
 I'm very lucky that Olrun found me when he did and helped me to get off that dark path."))
                      (r "Serves them right." (s "Wow, aren't you judgmental?")))
                   )
                (r "That's enough about that topic." (s "Fine."))))

          (r "What types of things do you enjoy?"
             (s "Well, you may have heard from the others by now, I'm a real sucker for anything
 some may consider childish.  Thanks to my companions, I've learned not to take things too seriously.
 Overall this has really helped me keep my chin up."
                (r "You didn't really answer the question.  What in particular?"
                   (s "Hah, true enough.  From what I hear, I'm not quite the prankster your
 friend Imoen is, although I enjoy a good laugh.  I'm a huge fan of the gambling games and other
 games of chance.  I love a good roll of the dice."))
                (r "Ok, thanks for sharing." (s "Glad to!"))))

          (r "What do you look for in a friend?"
             (s "You know, I don't think people tend to actively seek a particular friend type, I think it
 just happens on it's own, usually based on proximity and shared events.  I think the qualities that
 make a good friend are pretty general - someone who is fun to be around, caring, reliable, all that."
                (r "I agree, do you think that could be us some day?"
                   (s "If you agree, and understand what I'm saying, you wouldn't even ask that."))
                (r "I disagree, you can be very specific."
                   (s "Well, I don't agree - you can't order a friend like you can order a meal."))))

          (r "I changed my mind." (s "Fine."))
          ))

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
  (var b1 (string/join (map build-dialog banters-to-player) "\n"))
  (var p1 (build-dialog pid-1-tree))
  (var p2 (build-dialog pid-2-tree))
  (string/format "BEGIN uxzarj\n%s" (string/join [b1 p1 p2])))
