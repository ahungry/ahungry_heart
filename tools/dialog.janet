(defn g [s &opt i]
  (string/format "Global(~%s~, ~GLOBAL~, %d)" s (or i 1)))

(defn l [s &opt i]
  (string/format "Global(~%s~, ~LOCALS~, %d)" s (or i 1)))

(var goto-id 0)

(defn get-id []
  (++ goto-id))

(defn say [val-or-meta & val-or-next]
  (def val (if (= :string (type val-or-meta)) val-or-meta) (get 0 next))
  (def next (if (= :string (type val-or-meta)) val-or-next) (array/slice next 1))
  (def meta (if (= :string (type val-or-meta)) nil val-or-meta))
  @{:type "say"
    :next next
    :meta meta
    :id (get-id)
    :val val})

(defn rep [val-or-meta &opt val-or-next]
  (def val (if (= :string (type val-or-meta)) val-or-meta) (get 0 next))
  (def next (if (= :string (type val-or-meta)) val-or-next) (array/slice next 1))
  (def meta (if (= :string (type val-or-meta)) nil val-or-meta))
  @{:type "rep"
    :next next
    :meta meta
    :id 0
    :val val})

(var
 tree
 (say
  # {:cond [(g "ux_prelude_done")]}
  "What's your name?"
  (rep "Matt"
       (say "Nice to meet you Matt, how old are you?"
            (rep "I am 40" (say "Wow! You are old!"))))
  (rep "Leave me alone!"
       (say "Fine!!"))))

(defn get-node-id [] 123)
(defn terminal-say [m]
  (put m :id (get-node-id)))
(defn render-terminal [m]
  (case (get m :type)
    "say" (terminal-say m)
    "rep" (pp "found a reply")
    "ifs" (pp "found an ifs")))

(var results @[])

(defn main [m]
  (or
    (case (get m :type)
      "ifs" (string/format "IF ~%s~ THEN %s END"
                           (string/join (get m :val))
                           (string/join (map (fn [node] (main node)) (get m :next))))
      "rep" (do
              (def next-say (get m :next))
              (array/push results (main next-say))
              (string/format "\n  ++ ~%s~ + label_%d"
                             (get m :val)
                             (get next-say :id)))
      "say" (string/format "\n\nIF ~~ THEN BEGIN label_%d\n  SAY ~%s~%s\nEND"
                           (get m :id)
                           (get m :val)
                           (if (> (length (get m :next)) 0)
                             (string/join (map (fn [node] (main node)) (get m :next)))
                             "\n  IF ~~ THEN EXIT"))
      )
    "oof")
  )

(array/push results (main tree))
#(pp results)
(print (string/join (reverse results)))
