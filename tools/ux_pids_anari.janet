(use ./lib/dialog)
(load-imports)

(var
 banters-to-player
 [
  (s {:cond [(g "ux_anari_is_bantering")
             (g "ux_anari_banter_id" 0)]}
     "My friend <CHARNAME>, may I speak with you briefly?"
     (r {:code [(ig "ux_anari_banter_id")]}
        "What is it Anari?"
        (s "You've suffered some tumultous events recently.  Have you been adversely
 affected?  Are you doing alright?"
           (r "I'm wonderful!  Even when the people I care about meet an unexpected end,
 I don't let it bring me down."
              (s "I did not expect that response <CHARNAME> - are you laying on some thick
 sarcasm, or being sincere?"
                 (r "There is no sarcasm in that response Anari, I don't feel phased at all."
                    (s "Interesting."))
                 (r "Sorry Anari, that was a sarcastic outlash.  I'm under a lot of stress
 lately and it's easier to snap at those that are there for me, than to confront my feelings."
                    (s "You need not refrain from being vulnerable around me <CHARNAME>, I'm here
 for you if you need someone to confide in."))
                 ))
           (r "Meh, I'm pretty indifferent.  I thought it'd impact my mindset more, but
 I don't feel that I've even thought about it that much."
              (s "Are you sure you aren't deflecting, and denying your emotions?"
                 (r "I'm sure, I guess I have a thicker skin than some are used to."
                    (s "So thick a needle couldn't pierce it perhaps."))
                 (r "That may be the case.  I've never been great at opening up to others."
                    (s "You can let your guard down around me <CHARNAME>.  Feel free to open up."))))
           (r "I am complete miserable.  Why would you even ask that?  Things have just been hard
 lately...so very hard."
              (s "I'm sorry to hear that <CHARNAME>.  I am genuinely sympathetic to your plight,
 and it is good to see that you are able to share your dismay with me."
                 (r "I don't need your sympathy!"
                    (s "Well, pardon me!"))
                 (r "Thank you Anari, I appreciate your concern."
                    (s "I am glad to give it."))))))

     (r "Not now..." (mute :anari)))

  (s {:cond [(g "ux_anari_is_bantering")
             (g "ux_anari_banter_id" 1)]}
     "Dear <CHARNAME>, come, walk beside me and share some words."
     (r {:code [(ig "ux_anari_banter_id")]}
        "I would be happy to Anari.  What are you thinking?"
        (s "Amazing wonders are all around us.  From the natural to the supernatural.
  What do you find to be beautiful?  Things like a sunset, a perfect color scheme..."
           (r "I enjoy the lush greens of the forest.  The way the trees blend into
 a backdrop of green, and the other parts of outdoors are a kaleidoscope of shapes and
 color, quite enjoyable."
              (s "You have a way with words <CHARNAME>."))
           (r "I find a mental ecstasy in the lush reds of blood splatter from
 those who would stand in my way.  Watching their skin rip and tear into pieces
 is absolute bliss.."
              (s "Err... I better get going."))
           (r "I find you beautiful Anari."
              (s "Oh my...that's quite forward of you!"
                 (r "I was just kidding, don't take it seriously."
                    (s "Sure you were *smile*."))
                 (r "I just speak the truth."
                    (s "*smile*"))))))

     (r "Not now..." (mute :anari)))
  ])

(var
 chillout-tree
 (s {:cond ["IsGabber(Player1)"
            (nrgte "ux_anari_chillout_timer")
            (ng "ux_anari_is_bantering")
            (ng "ux_anari_is_pidding")]}
    "Don't you think we should be focusing on our mission?  Lets chat in a bit."))

(var pid-1-tree
     (say {:cond ["IsGabber(Player1)"
                  (ng "ux_anari_is_bantering")
                  (ng "ux_anari_is_pidding")]
           :code [(sg "ux_anari_wishes_to_pid")]}
          "( Anari turns to you )"
          #(rep {:cond ["True()"] :code [(sg "ux_anari_wishes_to_pid")]})
          ))

(var
 pid-2-tree
 (s {:cond ["IsGabber(Player1)"
            (rgte "ux_anari_chillout_timer")
            (ng "ux_anari_is_bantering")]}
    "What's on your mind? [uxana56]"
    (r {:code [(rsgt "ux_anari_chillout_timer" chillout-timer)]}
     "Anari, what brings you to this quest?"
     (s "I have come to join your party on this noble mission.
 I have long been defending Baldur’s Gate and its surrounding forests
 against the forces of evil, and I do not intend to waiver in my dedication now."
        (r "We are fortunate to have you with us."
           (s "It is my pleasure. In the face of such danger,
 it is comforting to have companions to rely upon.
 I will fight to protect all of you, even in the darkest of times."))))

    (r {:code [(rsgt "ux_anari_chillout_timer" chillout-timer)]}
       "Anari, may I have your attention for a bit?"
       (s "Absolutely <CHARNAME>, what is it you need?"
          (r "What was your early life like?"
             (s "Oh, the stories I could tell!  I grew up in the outskirts of Baldur's Gate, off
 in the surrounding forests.  Some refer to them as the Cloakwood, although being from a nomadic
 family, we were never in one area for a particularly long time, but tended to roam around.  I
 grew up surrounded by caring comrades and family.  We basked in the melodic tunes of our woodwinds
 quite often, complemented by the natural sounds of the actual wind, as it blew through the branches."
                (r "Sounds like the stuff of fairy tales to me."
                   (s "Well, I am an elf, not a fairy, but we are both quite magical."))
                (r "That was a touching story Anari, thank you for sharing it with me."
                   (s "I'm happy to have someone to share it with."))))

          (r "What types of things do you enjoy?"
             (s "While some might consider it a stereotype or trope, a shopping spree can be
 a quick way to my heart.  I suppose that's not really a hobby or activity, but I do enjoy it.
 If I had to pick an actual hobby, I'm fond of crafting, whether it's assembling some ornamental
 jewelry, or customizing a new bow."
                (r "What kind of bow?  A bow, or a bow?"
                   (s "Oh, definitely a bow.  The kind that shoots arrows.  Although the kind for
 my hair isn't bad either."))
                (r "I'm a fan of shopping myself, we should go together the next time we're in
 town with some downtime."
                   (s "I would like that."))
                ))

          (r "What do you look for in a friend?"
             (s "I think a strong sense of empathy is very important.  If you can't relate to
 the person you're potentially trusting your life with, how can you consider them a friend?
 There can be comaraderie and a common purpose, but I don't think that's the same as friendship."
                (r "I don't find those qualities important at all.  I wouldn't want to be your friend."
                   (s "Well, I wouldn't want to go against your wishes."))
                (r "I value those same qualities, I hope we grow to be close friends as well."
                   (s "Likewise <CHARNAME>."))
                ))

          (r "Actually, I changed my mind..." (s "As you wish."))))

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

    (r {:code [(rsgt "ux_anari_chillout_timer" chillout-timer)]}
       "What do you think of our peers?"
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
  (var b1 (string/join (map build-dialog banters-to-player) "\n"))
  (var p1 (build-dialog pid-1-tree))
  (var p2 (build-dialog pid-2-tree))
  (string/format
   "BEGIN uxanaj\n%s"
   (string/join
    [
     b1
     (build-dialog chillout-tree)
     p1
     p2
     ])))
