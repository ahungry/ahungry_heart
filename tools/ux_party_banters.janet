(use ./dialog)
(load-imports)

(defn build-chains []
  [
   (chainm
    [[zariel "This is a test of the simple dialogue chain."]
     [anari "You know we're still testing right?"]
     [olrun "Yes, truly, there is a lot of testing going on."]])

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
    [(can-talk :uxath)
     (bin-party :uxana)]
    :uxbath "So Anari, where are you from, originally?"
    []
    (== :uxbana "I hail from the forests of Baldur's Gate. I am a wild elf born
 and raised in the wilds, and I have been protecting my home for many years.")
    (== :uxbath "So <CHARNAME>, what do you think of our acting?  Was it
 a good display of camaraderie?")
    (== :uxbana "Don't give <HIMHER> too much razzing Athar!")
    (== :uxbath "Haha, yes, sorry.  Having a bit of fun.  As you know <CHARNAME>,
 Anari and I, we've long been acquaintances.  We were having a bit of fun."))

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
   ]
  )

(defn main [& args]
  (string/join (build-chains) "\n"))
