(defn ng [s &opt i]
  (string/format "!Global(\"%s\", \"GLOBAL\", %d)" s (or i 1)))

(defn g [s &opt i]
  (string/format "Global(\"%s\", \"GLOBAL\", %d)" s (or i 1)))

(defn l [s &opt i]
  (string/format "Global(\"%s\", \"LOCALS\", %d)" s (or i 1)))

(defn rsgt [s &opt i]
  (string/format "RealSetGlobalTimer(\"%s\", \"GLOBAL\", %d)" s (or i 1)))

(defn sg [s &opt i]
  (string/format "SetGlobal(\"%s\", \"GLOBAL\", %d)" s (or i 1)))

(defn ig [s &opt i]
  (string/format "IncrementGlobal(\"%s\", \"GLOBAL\", %d)" s (or i 1)))

(defn il [s &opt i]
  (string/format "IncrementGlobal(\"%s\", \"LOCALS\", %d)" s (or i 1)))

(defn sl [s &opt i]
  (string/format "SetGlobal(\"%s\", \"LOCALS\", %d)" s (or i 1)))

(defn ao [who s]
  (string/format "ActionOverride(\"%s\", %s)" (string who) s))

(defn in-party [who]
  (string/format "InParty(\"%s\")" (string who)))

(defn glt [s &opt i]
  (string/format "GlobalLT(\"%s\", \"GLOBAL\", %d)" s (or i 1)))

(defn ggt [s &opt i]
  (string/format "GlobalGT(\"%s\", \"GLOBAL\", %d)" s (or i 1)))

(defn state-not [i]
  (string/format "!Global(\"ux_state\", \"GLOBAL\", %d)" i))

(defn state [i]
  (string/format "Global(\"ux_state\", \"GLOBAL\", %d)" i))

(defn ++state []
  (ig "ux_state" 10))

(defn state>= [n]
  (ggt "ux_state" (- n 1)))

(defn state<= [n]
  (ggt "ux_state" (+ n 1)))

(defn lp [&opt who]
  (if who
    (ao who "LeaveParty()")
    "LeaveParty()"))

(defn jp [&opt who]
  (if who
    (string/format
     "%s %s"
     (ao who "JoinParty()")
     (sg (string/format "ux_in_party_%s" (string who))))
    "JoinParty()"))

(var goto-id 0)

(defn get-id []
  (++ goto-id))

(defn say [val-or-meta & val-or-next]
  (def val (if (= :string (type val-or-meta)) val-or-meta (get val-or-next 0)))
  (def next (if (= :string (type val-or-meta)) val-or-next (array/slice val-or-next 1)))
  (def meta (if (= :string (type val-or-meta)) nil val-or-meta))
  @{:type "say"
    :next next
    :meta meta
    :id (get-id)
    :val val})

(defn rep [val-or-meta & val-or-next]
  (def val (if (= :string (type val-or-meta)) val-or-meta (get val-or-next 0)))
  (def next (if (= :string (type val-or-meta)) (get val-or-next 0) (get val-or-next 1)))
  (def meta (if (= :string (type val-or-meta)) nil val-or-meta))
  @{:type "rep"
    :next next
    :meta meta
    :id 0
    :val val})

(defn maybe-render-cond [meta]
  (if (get meta :cond)
    (string/join (get meta :cond) " ")
    ""))

(var results @[])
(var tras @{})
(var tra-counter 0)

(defn tra->id
  "Take something like @333094 and produce 333094"
  [tra-id]
  (string/replace-all "@" "" tra-id))

(defn push-tra
  "For reproducibility, we want to store already defined entries in here."
  [entry]
  (let [sides (string/split " = " entry)
        string-key (get sides 1)
        tra-ref (tra->id (get sides 0))
        tra-int (scan-number tra-ref)
        ]
    (when (and tra-int (> tra-int tra-counter))
      (set tra-counter (+ 1 tra-int)))
    (put tras string-key tra-ref)))

(defn populate-tras-from-file [f]
  (->>
   (string/split "\n" (slurp f))
   (map push-tra)))

(defn fix-sound [s]
  (if (= (- (length s) 1)
         (string/find "]" (string/trim s)))
    (let
        [idx (string/find "[" s)
         song (string/slice s idx)
         txt (string/slice s 0 (-  idx 1))]
        (string/format "~%s~ %s" txt song))
    (string/format "~%s~" s)))

(defn fix-problem-chars [s]
  (->> s
       (string/replace-all "\n" " ")
       (string/replace-all "~" " ")))

(defn traify [ss]
  (let [s (-> ss fix-problem-chars fix-sound)]
    (string/format
     "@%s"
     (if (get tras s)
       (get tras s)
       (do (put tras s (string/format "%0.6d" (++ tra-counter)))
           (get tras s))))))

(defn maybe-render-code [m]
  (if (get m :code)
    (string/format "DO ~%s~ " (string/join (get m :code) " "))
    ""))

(defn main [m]
  (or
    (case (get m :type)
      "rep" (do
              (def next-say (get m :next))
              (when next-say (array/push results (main next-say)))
              (if (get m :meta)
                (string/format "\n  %s %s %s %s"
                               (if (get (get m :meta) :cond)
                                 (string/format
                                  "IF ~%s~ THEN\n  REPLY"
                                  (maybe-render-cond (get m :meta)))
                                 "++ ")
                               (traify (get m :val))
                               (maybe-render-code (get m :meta))
                               (if (get next-say :id)
                                 (string/format " + label_%d" (get next-say :id))
                                 " EXIT"))
                (string/format "\n  ++ %s%s"
                               (traify (get m :val))
                               (if (get next-say :id)
                                 (string/format " + label_%d" (get next-say :id))
                                 " EXIT"))))
      "say" (string/format "\n\nIF ~%s~ THEN BEGIN label_%d\n  SAY %s%s\nEND"
                           (maybe-render-cond (get m :meta))
                           (get m :id)
                           (traify (get m :val))
                           (if (> (length (get m :next)) 0)
                             (string/join (map (fn [node]
                                                 (if (= "say" (get node :type))
                                                   (string/format "\n  IF ~~ THEN GOTO label_%d"
                                                                  (get node :id)
                                                                  (array/push results (main node)))
                                                   (main node))) (get m :next)))
                             # Dead end code block to place before exit
                             (if (and (get m :meta)
                                      (get (get m :meta) :code))
                               (string/format "\n  IF ~True()~ DO ~%s~ EXIT"
                                              (string/join (get (get m :meta) :code) " "))
                               "\n  IF ~~ THEN EXIT")))
      )
    "")
  )

(defn build-tras []
  (var result @[])
  (each k (keys tras)
    (array/push result (string/format "@%s = %s" (get tras k) k)))
  (-> (sort result) (string/join "\n")))

(defn uniq [xs]
  (def res @[])
  (each x xs
    (unless (index-of x res) (array/push res x)))
  res)

(defn build-dialog [tree]
  (set results @[])
  (set goto-id 0)
  (array/push results (main tree))
  (string/join (reverse (uniq results))))

(var ict-counter 0)

(defn clear []
  (set tras @{})
  (set ict-counter 0)
  (set tra-counter 0))

(defn build [tree]
  {:tras (build-tras)
   :dialog (build-dialog tree)})

# Stuff related to INTERJECT_COPY_TRANS
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

(def r rep)
(def s say)
