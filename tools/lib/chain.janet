# INTERJECT_COPY_TRANS / CHAIN related stuff
(use ./traify)
(use ./util)
(use ./actions)

(var ict-counter 0)
(var banter-counter 0)

# Some convenience stuff for the function chaining blocks to reduce boilerplate
(def olrun :olrun)
(def anari :anari)
(def voice :voice)
(def athar :athar)
(def zariel :zariel)

(defn get-ux [kw]
  (case kw
    :anari :uxana
    :zariel :uxzar
    :olrun :uxolr
    :voice :uxvoi
    :athar :uxath kw))

(defn get-uxj [kw]
  (case kw
    :anari :uxanaj
    :zariel :uxzarj
    :olrun :uxolrj
    :voice :uxvoij
    :athar :uxathj kw))

(defn get-uxb [kw]
  (case kw
    :anari :uxbana
    :zariel :uxbzar
    :olrun :uxbolr
    :voice :uxbvoi
    :athar :uxbath kw))

# Stuff related to INTERJECT_COPY_TRANS
# TODO: Add IsValidForPartyDialogue as a default IF clause on the ICT participants
# It may not hurt to have it present for the standard chains leveraging == either
(defn == [who s & rest]
  (string/format "  == %s %s DO ~%s~\n"
                 (string who)
                 (traify s)
                 (string/join rest "\n")))

# Like the == variation, but requires an is-valid-for-party-dialogue and allows extra ifs
(defn === [who s ifs & rest]
  (string/format "  == %s IF ~%s %s~ THEN %s DO ~%s~\n"
                 (string who)
                 (is-valid-for-party-dialogue who)
                 (string/join ifs " ")
                 (traify s)
                 (string/join rest "\n")))


(defn ict [who scene-id & rest]
  (string/format
   "INTERJECT_COPY_TRANS %s %d ux_lbl_ict_%d\n%sEND"
   (string who) scene-id (++ ict-counter) (string/join rest)))

(defn ict2 [who scene-id & rest]
  (string/format
   "INTERJECT_COPY_TRANS2 %s %d ux_lbl_ict_%d\n%sEND"
   (string who) scene-id (++ ict-counter) (string/join rest)))

(defn chain [conds who line1 codes & rest]
  (let [local-id (++ banter-counter)]
    (string/format
     "CHAIN IF ~Global(\"ux_banter_%d\", \"GLOBAL\", 0) %s~ THEN %s ux_lbl_chain_%d\n
%s DO ~SetGlobal(\"ux_banter_%d\", \"GLOBAL\", 1) %s~\n
%sEXIT\n"
     local-id
     (string/join conds " ")
     (string who)
     local-id
     (traify line1)
     local-id
     (string/join codes " ")
     (string/join rest))))

(defn get-intro [xs]
  (get (first xs) 1))

(defn get-speaker [xs]
  (first (first xs)))

(defn get-participants [xs]
  (uniq (map (fn [[k v]] k) xs)))

(defn dialogue->== [xs]
  (string/join (map (fn [[k & v]] (== (get-uxb k) ;v)) xs) ""))

(defn chainm [& dialogue-raw]
  (var conds [])
  (var codes [])
  (var dialogue (first dialogue-raw))
  (when (= :struct (type (first dialogue-raw)))
    (set conds (or (get (first dialogue-raw) :cond) []))
    (set codes (or (get (first dialogue-raw) :code) []))
    (set dialogue (get dialogue-raw 1)))
  (chain [(can-talk (get-ux (get-speaker dialogue)))
          ;(map (fn [p] (bin-party (get-ux p))) (get-participants dialogue))
          ;conds]
         (get-uxb (get-speaker dialogue)) (get-intro dialogue) codes
         (dialogue->== dialogue)
         ))

# For some reason, randomizing in the sort fn itself won't work, but
# this seems fine,
(defn rand-sort [xs]
  (var sort-weights (map (fn [x] {:val x :rng (math/random)}) xs))
  (->> (sorted-by (fn [x] (get x :rng)) sort-weights)
       (map |(get $0 :val))))

# TODO: In addition to the reverse, maybe add a random shuffle here
# We might be able to incorporate a Random call in the response itself.
(defn ict-once [append-to slot raw-dialogues & closing-lines]
  (var dialogues (rand-sort raw-dialogues))
  (var icts @[])
  (var participants (map get-uxj (get-participants dialogues)))
  (for i 0 (length dialogues)
    (def who (get (get dialogues i) 0))
    (def msg (get (get dialogues i) 1))
    (def exclusion-list (map nip (array/slice participants (+ 1 i))))
    (array/push
     icts
     (if (> (length closing-lines) 0)
       (ict append-to slot
            (=== (get-uxj who) msg [;exclusion-list])
            (=== append-to (get (rand-sort closing-lines) 0)
                 [(is-valid-for-party-dialogue (get-uxj who)) ;exclusion-list]))
       (ict append-to slot
            (=== (get-uxj who) msg [;exclusion-list]) ))))
  (string/join icts "\n"))
