(use ./lib/dialog)
(load-imports)

(defn build-chains []
  [
   (chainm
    [[zariel "Hey Olrun, do you remember that time at the Sorcerous Sundries?"]
     [olrun "Hah, what a time it was.  We had just gotten back from pillaging
 that horde of treasure from the back of the goblin's cave.  Had a shiny utensil
 that we thought was some valuable artifact."]
     [zariel "Yup, sure did - only it wasn't.  Remember what it was?"]
     [olrun "How could I forget!  A noble's special toiletry, long ago stolen by the little
 buggers, and subject to so much wear and tear."]
     [zariel "Yup! And the look on old Halbazzer's face when he took a closer look to appraise it,
 the stuff of legend!"] ])

   (chainm
    [[zariel "Yeck!  This is nasty!"]
     [olrun "What's the matter Zariel?"]
     [zariel "I think I stepped in something during our last fight...yep, that's some sort of
 entrail stuck to my boot.  Well, maybe it's an eye - I'm not totally sure."]
     [olrun "That's gonna take some scuffing to clean out!"]
     [zariel "Ain't that the truth."]])

   (chainm
    [[zariel "Athar, has anyone told you how nice your sword and shield ornaments are?"]
     [athar "I've heard it once or twice - coming from a noble lineage, it shouldn't be a great
 surprise that they were designed with an eye for aesthetics."]
     [zariel "Still, I've gotta say, it's such an appealing color scheme.  Being efficient in
 combat is one thing, but looking good while doing it, that's an entire strategy in of itself."]
     [athar "Thanks Zariel, I think."]])

   (chainm
    [[zariel "Blah.  Hmph.  *sigh*"]
     [athar "What's wrong Zariel?  Usually you're always so chipper and upbeat."]
     [zariel "I'm just thinking, we've seen so much killing and chaos, after awhile it
 can wear on you.  I mean, I'm not squeamish of it, in fact I quite enjoy it, at times."]
     [athar "Then what's the matter?"]
     [zariel "I think I've just got a case of the blues.  It's been too long since we've
 enjoyed some downtime for awhile."]
     [athar "Zariel, I understand you have your own beliefs, but when I'm feeling down, I turn
 to my faith.  It's never steered me wrong, and serves as a solid backbone."]
     [zariel "Yea, I can't see myself turning to being a devout paladin or cleric, but I appreciate
 the thought Athar."]])

   (chainm
    [[anari "Zariel, you seem extra cheerful today.  Any particular reason why?"]
     [zariel "Wow, that obvious huh?"]
     [anari "A bit, you've been grinning ear to ear all morning."]
     [zariel "Well, I had an especially amusing dream last night."]
     [anari "Really?  About what?"]
     [zariel "Well, in this dream, I was a fish."]
     [anari "Uh huh..."]
     [zariel "And you were as well.  Well, all of you were."]
     [anari "Right..."]
     [zariel "So anyways, we were going through the ocean, and..."]
     [anari "Hold that thought Zariel, we've gotta get back to the group."]
     ])

   (chainm
    [[zariel "Anari, what do you think of our place in the world?"]
     [anari "What do you mean?"]
     [zariel "Well, we were appointed and gathered for a quest by The Voice, although we had
 previous history between each other."]
     [zariel "Then we were interrupted and now travel with <CHARNAME>, for what may
 be a much more important endeavor, as the Heart rumors may or may not have been grounded
 in reality."]
     [anari "I'm trying to understand where you're going with this?"]
     [zariel "Do you think this is fate or destiny, or just lucky coincidence?"]
     [anari "I suppose it could go either way.  Are we controlling our own future, or
 are we simply reacting to stimuli?  Are we mindless automatons?  That much, I doubt."]
     [zariel "That wasn't much of an answer at all!"]
     [anari "Zariel, I try to be mindful and reflective, but this level of deep philosophy
 may be a better conversation to have with The Voice."]])

   (chainm
    [[anari "Zariel, you're looking quite nice today."]
     [zariel "Thanks Anari!  I would say the same about you as well!"]
     [olrun "Oh, no love for my handsome face and chiseled chin?"]
     [anari "Come now Olrun, you know we all think you're the epitome of beauty."]
     [zariel "Truly, my knees are quivering with excitement in the presence of such grace."]
     [anari "In all the realms, never has a more handsome being existed."]
     [olrun "Ok, ok, now you two are laying it on a little thick."]
     [zariel "Olrun the Ostensible, the bastion of beauty, the herald of handsome."]
     [anari "The guardian of gorgeous, the avatar of appeal."]
     [olrun "Alright, alright, I think I hear <CHARNAME> calling for us."]])

   (chain
    [(can-talk :uxzar)
     (bin-party :uxana)
     (bin-party :uxath)]
    :uxbzar "Athar, Anari - could you two quit gabbing the entire time?"
    []
    (== :uxbana "Zariel, show some manners.  If Athar and I are having a conversation
 that you aren't privy to, that's no reason to have a fit.")
    (== :uxbath "Cut her a little slack, you know she's not a fan of gossip.")
    (== :uxbzar "I don't need you to defend me Athar, I'll have you know I'm
 quite self sufficient.")
    (== :uxbana "Yes, yes, we know.  Shall we get back to the party now?"))

   (chain
    [(can-talk :uxath)
     (bin-party :uxana)]
    :uxbath "So Anari, what do you think of our mission so far?"
    []
    (== :uxbana "I think it's going well. We've made some progress and
 I'm confident that we'll be able to complete our task."))

   (chain
    [(can-talk :uxolr)
     (bin-party :uxzar)]
    :uxbolr "Zariel, what are your thoughts on our current situation?"
    []
    (== :uxbzar "From what I've seen and heard, I believe that we have a
  good chance of succeeding. I'm sure we can handle whatever obstacles come our way."))

   (chain
    [(can-talk :uxvoi)
     (bin-party :uxath)]
    :uxbvoi "Athar, tell me about your family."
    []
    (== :uxbath "My family is part of the noble class in Baldur's Gate.
 We have long been involved in the political happenings of late.  While I
 tend to foray into adventure more often than my relatives, we all contribute
 in our own ways.")
    (== :uxbvoi "That was enlightening, I appreciate your being direct Athar."))

   (chain
    [(can-talk :uxath)
     (bin-party :uxana)]
    :uxbath "So Anari, where are you from, originally?"
    []
    (== :uxbana "I hail from the forests of Baldur's Gate. I am a wild elf born
 and raised in the wilds, and I have been protecting my home for many years.")
    (== :uxbath "That's admirable. Can you tell me more about your family?")
    (== :uxbana "My family is a long line of rangers and hunters, and I am proud to
 continue their legacy. I also strive to keep our forests safe from evil forces that
 threaten to do them harm.")
    (== :uxbath "That's very noble of you. So what is it you like most about being a ranger?")
    (== :uxbana "I enjoy the freedom of being a ranger.  That, and exploring the wilds of
 Baldur's Gate.")
    (== :uxbath "So <CHARNAME>, what do you think of our acting?  Was it
 a good display of camaraderie?")
    (== :uxbana "Don't give <HIMHER> too much razzing Athar!")
    (== :uxbath "Haha, yes, sorry.  Having a bit of fun.  As you know <CHARNAME>,
 Anari and I, we've long been acquaintances."))

   (chain
    [(can-talk :uxana)
     (bin-party :uxzar)]
    :uxbana "So Zariel, what do you think of our group?"
    []
    (== :uxbzar "I'm feeling quite positive about it. I think it's great
 that we have such a diverse mix of people, and I'm glad that we
 are all looking out for each other.")
    (== :uxbana "I agree. I'm sure the two of us can offer this group a unique
 perspective, being the only two females with past history together here.")
    (== :uxbzar "Absolutely. We may be outnumbered, but I'm sure we can both hold our
 own and make our mark on this quest!")
    )

   (chain
    [(can-talk :uxath)
     (bin-party :uxolr)]
    :uxbath "So Olrun, what brings you to this quest?"
    []
    (== :uxbolr "I'm here because I believe in the power of justice.
 As a proud Dwarven Barbarian, I am determined to protect our world from any
 forces of evil that may threaten it.")
    (== :uxbath "I respect your dedication. As warriors, I think it's important
 that we rely on each other in times of danger.")
    (== :uxbolr "Absolutely. And as men, I believe it is our duty to protect the
 innocent and uphold justice. I am glad to stand beside you in this quest.")
    )

   (chain
    [(can-talk :uxvoi)
     (bin-party :uxath)
     (bin-party :uxana)
     (bin-party :uxolr)
     (bin-party :uxzar)
     ]
    :uxbvoi "Alright everyone, I think it's time we discussed our plan.
 What do you all think will be our best course of action?"
    []
    (== :uxbath "We need to move quickly and with caution.
 Our goal is to find the Heart of Baldur’s Gate and make sure it
 doesn’t fall into the wrong hands.")
    (== :uxbana "We must also remember to be vigilant and keep an eye out for any
 possible threats or enemies.")
    (== :uxbolr "We should not underestimate the power of our enemies.
 We must rely on each other's strength if we are to succeed in this mission.")
    (== :uxbzar "We could also make use of our combined knowledge and skills.
 By working together,")
    )

   (chainm
    {:cond [(ng "ux_test")] :code [(sg "ux_test")]}
    [[zariel "This is a test of the simple dialogue chain." (sg "ux_test")]
     [anari "You know we're still testing right?"]
     [olrun "Yes, truly, there is a lot of testing going on."]])

   ]
  )

(defn main [& args]
  (string/join (build-chains) "\n"))
