# Try out some OOP for chapter based lookups
(use ./lib/dialog)
(load-imports)

# Chapter 0 = Candlekeep
# Chapter 1 = Go to FAI
# Chapter 2 = Past Nashkel, no Mulahey
# Chapter 3 = Killed Mulahey

(def Chapter
  @{
    :q0 "What should we do?"
    0 "Just enjoy the prologue, I don't think we have much to do."

    :q1 "Where should we go now?"
    1 "I think you needed to head to the Friendly Arm Inn?"

    :question (fn [self chapter] (get self (keyword (string "q" chapter))))
    :answer (fn [self chapter] (get self chapter))
    })

(def ChapterAthar
  (table/setproto
   @{
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
       (r {:code [(rsgt (string "ux_" who "_chillout_timer") chillout-timer)
                  (chapter= chapter)]}
          question
          (s answer)))) (range 0 2)))
