(use ./dialog)
(load-imports)

(defn dummy []
  (chain
   [(can-talk :uxzar)
    (bin-party :uxolr)] :uxbzar
   "Hello there" []
   (== :uxbolr "wow, that sounds neat!")
   (== :uxbzar "Hahha it sure is")))

(defn b2 []
  (chain
   [(can-talk :uxzar)
    (bin-party :uxana)
    (bin-party :uxath)] :uxbzar
   "So, how is it going everyone?" []
   (== :uxbana "Oh, you know me, I can't complain.")
   (== :uxbath "I would agree, things are going quite well.  Thank you for asking Zariel.")
   (== :uxbzar "Woohoo!")))

(defn main [& args]
  (string/join
   [
    (dummy)
    (b2)
    ] "\n"))
