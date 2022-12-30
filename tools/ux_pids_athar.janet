(use ./lib/dialog)
(load-imports)
(use ./ux_chapter_pids)

(var
 banters-to-player
 [
  (s {:cond [(g "ux_athar_is_bantering")
             (g "ux_athar_banter_id" 0)]}
     "<CHARNAME>, might I have a moment of your time?"
     (r {:code [(ig "ux_athar_banter_id")]}
        "What is it Athar?!"
        (s "How have you been holding up?  It must be difficult being subject to so much
 change so rapidly."
           (r "I'm doing great, I've suffered some loss, but it won't get me down!"
              (s "That's a strong minded outlook.  Sometimes it is alright to show
 some weakness in one's demeanor.  Are you certain you're alright?"
                 (r "Athar, I thank you for your concern, but I'm fine.  I am not letting
 our current situation get to me."
                    (s "I'm happy to hear that <CHARNAME>."))
                 (r "Actually... I have been having a tough time dealing with it.
 Do you have any advice?"
                    (s "Focus on the \"now\", and not the past or future <CHARNAME>.
 We are incapable of changing the past, and we know not what the future holds, so it is
 most prudent to focus on where we are at this moment."))))
           (r "I'd say I'm pretty desensitized to all of it.  I don't have a strong feeling
 one way or the other."
              (s "That can be a dangerous path to tread <CHARNAME>.  While it can be
 a helpful coping mechanism, we must not regulate our emotions to that of a rock.  Those
 emotions can be a powerful strength to draw upon, and we need not lose them."))
           (r "I'm doing horrible!  Thanks for asking...NOT!"
              (s "Well, at least you haven't lost your emotion, although  you clearly
 need to practice a bit of mindfulness to keep it in check."))))

     (r "Not now..." (mute :athar)))

  (s {:cond [(g "ux_athar_is_bantering")
             (g "ux_athar_banter_id" 1)]}
     "I have a matter that I've been meaning to ask you about <CHARNAME>."
     (r {:code [(ig "ux_athar_banter_id")]}
        "What did you want to ask me about?"
        (s "As a paladin, I'm sworn to an Oath as part of my duties and belief system.
 What do you believe in?"
           (r "I believe that I make my own destiny and do not need anyone else."
              (s "That's certainly a cynical outlook on life, if not one that attempts
 to retain control of one's situation."))
           (r "I believe in relying on those I travel with, so that I can protect
 those I care about, and those that deserve protection."
              (s "I believe as much as well.  We must strive to protect others, and
 one of our greatest assets in doing is is to trust in and rely on those we surround
 ourselves with."))
           (r "I believe in using those around me as a means to an end.  An end
 that enriches my own wellbeing and riches."
              (s "That's a rather cynical view of things."))))

     (r "Not now..." (mute :athar)))
 ])

(var
 chillout-tree
 (s {:cond ["IsGabber(Player1)"
            (nrgte "ux_athar_chillout_timer")
            (ng "ux_athar_is_bantering")
            (ng "ux_athar_is_pidding")]}
    "<CHARNAME>, try not to be too needy.  Lets us chat in a bit."))

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

    (r {:code [(rsgt "ux_athar_chillout_timer" chillout-timer)]}
     "So Athar, what brings you to this dangerous quest?"
     (s "I am on a mission from my family. We are part of an ancient
 and noble lineage, entrusted with the protection of sacred
 artifacts like the Heart of Baldur's Gate.
 It seemed only natural that I should be the one to take up this task."
        (r "That's quite brave of you."
           (s "I'm just doing my duty, but thank you for the compliment."))
        (r "You sound stuck up.  When you're in this group, you'll do
 as I command."
           (s "As you wish...for now."))))

    (r {:code [(rsgt "ux_athar_chillout_timer" chillout-timer)]}
     "What have you accomplished so far?"
     (s "Well, I've done a great deal in my travels thus far.
 I've fought many enemies, protected the innocent, and even
 uncovered some secrets about the Heart of Baldur's Gate, though I'm
 sworn to keep them confidential. "
        (s "But I am sure our mission will bring us closer to uncovering
 the truth behind this powerful artifact.")))

    (r {:code [(rsgt "ux_athar_chillout_timer" chillout-timer)]}
     "Athar, can we talk about you for a bit?"
     (s "Certainly <CHARNAME>, about what?"

        (r "What was your early life like?"
           (s "My family is from the noble caste.  I'm originally from Baldur's Gate myself, although my
 parents traveled there soon after getting married.  They still reside there, however I'm rarely home
 due to all my adventuring."
              (r "Are you close to your parents?"
                 (s "Absolutely.  They were a bit pre-occupied with appearances as we made our rounds
 through the various social circles, but they always gave me the love and support a child needs as they grow."
                    (r "What's it like being a noble?"
                       (s "Well, while some may carry it as a badge of honor, it is rarely of
 significance in my day to day life - afterall, a gibberling doesn't care who your bloodline can
 be traced back to."))
                    (r "You sound like a stuck up twit." (s "Quite rude."))))
              (r "That's enough about that topic." (s "As you wish."))))

        (r "What types of things do you enjoy?"
           (s "I'm quite fond of music.  I've been trying to get better at playing
 a lute, though I'm far from a bard."
              (r "So, a paladin by career, and a bard by hobby?"
                 (s "Oh yes.  I'll be lulling our enemies with an enchanting melody
 in no time.  Although if that doesn't work, I will not hesitate to put them in a lull with
 a good whack of my shield."))
              (r "Ok, thanks for sharing." (s "Absolutely."))))

        (r "What do you look for in a friend?"
           (s "I believe in having a strong sense of virtue.  One must be pure of heart and
 mind, or at least be attempting to better oneself into doing so. A moderate demeanor is also
 important - fanatacism can be quite troublesome."
              (r "Wow, those are all the traits I look for and possess myself.  Do you think
 we could be friends some day?"
                 (s "I thought we already were?"))
              (r "I'm sorry I asked."
                 (s "I'm sorry you're sorry."))))

        (r "I changed my mind." (s "Fine."))))

    ;(chapter-reply-say-blocks :athar)

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

    (r {:code [(rsgt "ux_athar_chillout_timer" chillout-timer)]}
     "What do you think of our peers?"
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

    (rep "Nevermind..." (s "Fine."))
    ))

(defn main [& args]
  (var b1 (string/join (map build-dialog banters-to-player) "\n"))
  (var p1 (build-dialog pid-1-tree))
  (var p2 (build-dialog pid-2-tree))
  (string/format
   "BEGIN uxathj\n%s"
   (string/join
    [
     b1
     (build-dialog chillout-tree)
     p1
     p2])))
