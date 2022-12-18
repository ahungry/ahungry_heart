(use ./dialog)
(load-imports)

(defn dummy []
  (chain
   [(bin-party "Zariel")
    (bin-party "Olrun")] :uxbzar
   "Hello there" []
   (== :uxbolr "wow, that sounds neat!")
   (== :uxbzar "Hahha it sure is")))

(defn b2 []
  (chain
   [(bin-party "Zariel")
    (bin-party "Anari")
    (bin-party "Athar")] :uxbzar
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
