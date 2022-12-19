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
