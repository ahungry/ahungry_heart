(use ./dialog)
(load-imports)

(defn build-chains []
 [
  (chain
   [(can-talk :uxzar)
    (bin-party :uxana)
    (bin-party :uxath)] :uxbzar
     "So, how is it going everyone?" []
     (== :uxbana "Oh, you know me, I can't complain.")
     (== :uxbath "I would agree, things are going quite well.  Thank you for asking Zariel.")
     (== :uxbzar "Woohoo!"))

  (chain
   [(can-talk :uxath)
    (bin-party :uxana)] :uxbath
     "So Anari, what do you think of our mission so far?" []
     (== :uxbana "I think it's going well. We've made some progress and
 I'm confident that we'll be able to complete our task."))

  (chain
   [(can-talk :uxolr)
    (bin-party :uxzar)] :uxbolr
     "Zariel, what are your thoughts on our current situation?" []
     (== :uxbzar "From what I've seen and heard, I believe that we have a
  good chance of succeeding. I'm sure we can handle whatever obstacles come our way."))

  (chain
   [(can-talk :uxvoi)
    (bin-party :uxath)] :uxbvoi
     "Athar, tell me about your family." []
     (== :uxbath "My family is part of the noble class in Baldur's Gate.
 We have long been involved in the political happenings of late.  While I
 tend to foray into adventure more often than my relatives, we all contribute
 in our own ways.")
     (== :uxbvoi "That was enlightening, I appreciate your being direct Athar."))

  (chain
   [(can-talk :uxath)
    (bin-party :uxana)] :uxbath
     "So Anari, where are you from, originally?" []
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
    (bin-party :uxana)] :uxbath
     "So Anari, where are you from, originally?" []
     (== :uxbana "I hail from the forests of Baldur's Gate. I am a wild elf born
 and raised in the wilds, and I have been protecting my home for many years.")
     (== :uxbath "So <CHARNAME>, what do you think of our acting?  Was it
 a good display of camaraderie?")
     (== :uxbana "Don't give <HIMHER> too much razzing Athar!")
     (== :uxbath "Haha, yes, sorry.  Having a bit of fun.  As you know <CHARNAME>,
 Anari and I, we've long been acquaintances."))
 ]
 )

(defn main [& args]
  (string/join (build-chains) "\n"))
