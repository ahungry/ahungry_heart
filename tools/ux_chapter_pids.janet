# Try out some OOP for chapter based lookups
(use ./lib/dialog)
(load-imports)

# Chapter 0 = Candlekeep
# Chapter 1 = Go to FAI
# Chapter 2 = Past Nashkel, no Mulahey
# Chapter 3 = Killed Mulahey

# Should be one higher than our actual listing
(def chapters-defined 4)
(def Chapter
  @{
    :q0 "What should we do?"
    0 "Just enjoy the prologue, I don't think we have much to do."

    :q1 "Where should we go now?"
    1 "I think you needed to head to the Friendly Arm Inn?"

    :q2 "What were we supposed to do again?"
    2 "I believe we need to investigate the Nashkel mines, or talk to the Mayor about it."

    :q3 "Now that Mulahey is dead, what should we do?"
    3 "Lets head back to Nashkel to report our progress."

    :question (fn [self chapter] (get self (keyword (string "q" chapter))))
    :answer (fn [self chapter] (get self chapter))
    })

(def ChapterAthar
  (table/setproto
   @{
     1 "I believe we should investigate what's happening near the Friendly Arm Inn."
     1 "I believe we should investigate what's happening near the Friendly Arm Inn."
    } Chapter))

(def ChapterAnari
  (table/setproto
   @{
     0 "Let's just relax a bit."
    } Chapter))

(def ChapterOlrun
  (table/setproto
   @{
     0 "Let's just relax a bit."
    } Chapter))

(def ChapterVoice
  (table/setproto
   @{
     0 "Let's just relax a bit."
    } Chapter))

(def ChapterZariel
  (table/setproto
   @{
     0 "Let's just relax a bit."
    } Chapter))

(def chapter-index
  {:athar ChapterAthar
   :anari ChapterAnari
   :voice ChapterVoice
   :zariel ChapterZariel
   :olrun ChapterOlrun})

(defn chapter-lookup [who chapter]
  (let [speaker (get chapter-index who)]
    [(:question speaker chapter)
     (:answer speaker chapter)]))

(defn chapter-reply-say-blocks
  "Who should be a keyword."
  [who]
  (map
   (fn [chapter]
     (let [[question answer] (chapter-lookup who chapter)]
       (r {:cond [(chapter= chapter)]
           :code [(rsgt (string "ux_" who "_chillout_timer") chillout-timer)]}
          question
          (s answer)))) (range 0 chapters-defined)))
