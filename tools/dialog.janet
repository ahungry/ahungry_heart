(defn g [s &opt i]
  (string/format "Global(~%s~, ~GLOBAL~, %d)" s (or i 1)))

(defn l [s &opt i]
  (string/format "Global(~%s~, ~LOCALS~, %d)" s (or i 1)))

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

(defn rep [val-or-meta &opt val-or-next]
  (def val (if (= :string (type val-or-meta)) val-or-meta (get next 0)))
  (def next (if (= :string (type val-or-meta)) val-or-next (array/slice next 1)))
  (def meta (if (= :string (type val-or-meta)) nil val-or-meta))
  @{:type "rep"
    :next next
    :meta meta
    :id 0
    :val val})

(defn maybe-render-cond [meta]
  (if (get meta :cond)
    (string/join (get meta :cond))
    ""))

(var results @[])
(var tras @{})
(var tra-counter 0)

(defn traify [s]
  (string/format
   "@%d"
   (if (get tras s)
     (get tras s)
     (do (put tras s (++ tra-counter))
         (get tras s)))))

(defn main [m]
  (or
    (case (get m :type)
      "rep" (do
              (def next-say (get m :next))
              (array/push results (main next-say))
              (string/format "\n  ++ %s + label_%d"
                             (traify (get m :val))
                             (get next-say :id)))
      "say" (string/format "\n\nIF ~%s~ THEN BEGIN label_%d\n  SAY %s%s\nEND"
                           (maybe-render-cond (get m :meta))
                           (get m :id)
                           (traify (get m :val))
                           (if (> (length (get m :next)) 0)
                             (string/join (map (fn [node]
                                                 (if (= "say" (get node :type))
                                                   (string/format " GOTO label_%d"
                                                                  (get node :id)
                                                                  (array/push results (main node)))
                                                   (main node))) (get m :next)))
                             "\n  IF ~~ THEN EXIT"))
      )
    "oof")
  )

(defn build-tras []
  (var result "")
  (each k (keys tras)
    (set result (string/format "%s\n@%d = ~%s~" result (get tras k) k)))
  result)

(defn build-dialog []
  (string/join (reverse results)))

(defn build [tree]
  (set results @[])
  (set tras @{})
  (set tra-counter 0)
  (array/push results (main tree))
  {:tras (build-tras)
   :dialog (build-dialog)})

(var
 tree
 (say
  {:cond [(g "ux_prelude_done")]}
  "What's your name?"
  (rep "Matt"
       (say "Nice to meet you Matt, how old are you?"
            (rep "I am 40" (say "Wow! You are old!"))))
  (rep "Leave me alone!"
       (say "Fine!!"))))

(var sample (build tree))
# (print (get sample :tras))
# (print (get sample :dialog))
