(use ./dialog)
(load-imports)

(var
 chains
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
  ]
 )

(defn main [& args]
  (string/join chains "\n"))
