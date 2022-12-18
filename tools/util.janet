(use ./dialog)
(use ./lib/actions)

(def banter-timer 300)

(defn party-member-join-block [who name]
  (say "So?"
       (rep {:cond [(state 20)]
             :code [
                    (sg "ux_state" 30)
                    (rsgt "ux_athar_banter_timer" banter-timer)
                    (rsgt "ux_anari_banter_timer" banter-timer)
                    (rsgt "ux_voice_banter_timer" banter-timer)
                    (rsgt "ux_olrun_banter_timer" banter-timer)
                    (rsgt "ux_zariel_banter_timer" banter-timer)
                    (rsgt "ux_urgent_timer" 3)
                    (jp :uxana)
                    (jp :uxath)
                    (jp :uxzar)
                    (jp :uxolr)
                    (jp :uxvoi)
                    ]}
            "I would love to join your group.")

       (rep {:cond [(state 20)]
             :code [(sg "ux_state" 30)
                    (rsgt (string/format "ux_%s_banter_timer" who) banter-timer)
                    (rsgt "ux_urgent_timer" 3)
                    (jp)]}
            "I can't join your group, but I would love to have you join mine.")

       # This can only be triggered if one of the preceding 2 blocks was used.
       # This would be inviting a single character, letting the messenger block run,
       # and then telling him to buzz off, and inviting another character yet again.
       (rep {:cond [(state>= 30)]
             :code [(rsgt (string/format "ux_%s_banter_timer" who) banter-timer)
                    (jp)]}
            "Please come along with us.")

       (rep (string/format "Sorry %s, I'm on my own adventure at the moment." name)
            (say "That's fine, should you change your mind, you'll find us around."))))

(defn mute [who]
  (say "Fine, how much alone time do you need?"
       (rep "Just a few minutes, I'm working on something."
            (say {:code [(rsgt (string/format "ux_%s_banter_timer" (string who)) 180)]}
                 "Fine."))
       (rep "I have more important tasks to focus on - give me a few hours."
            (say {:code [(rsgt (string/format "ux_%s_banter_timer" (string who)) 3600)]}
                 "Fine."))
       (rep "Sorry, that was a mistake, I do have time."
            (say {:code [(rsgt (string/format "ux_%s_banter_timer" (string who)) 1)]}
                 "Fine."))))

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

(defn get-intro [xs]
  (get (first xs) 1))

(defn get-speaker [xs]
  (first (first xs)))

(defn get-participants [xs]
  (uniq (map (fn [[k v]] k) xs)))

(defn dialogue->== [xs]
  (string/join (map (fn [[k & v]] (== (get-uxb k) ;v)) xs) ""))

# TODO: Add support to pass code/cond in as first arg to the dialogue seq
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
