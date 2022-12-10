(defn ng [s &opt i]
  (string/format "!Global(~%s~, ~GLOBAL~, %d)" s (or i 1)))

(defn g [s &opt i]
  (string/format "Global(~%s~, ~GLOBAL~, %d)" s (or i 1)))

(defn l [s &opt i]
  (string/format "Global(~%s~, ~LOCALS~, %d)" s (or i 1)))

(defn sg [s &opt i]
  (string/format "SetGlobal(~%s~, ~GLOBAL~, %d)" s (or i 1)))

(defn sl [s &opt i]
  (string/format "SetGlobal(~%s~, ~LOCALS~, %d)" s (or i 1)))

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
  (pp next)
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

(defn traify [s]
  (string/format
   "@%d"
   (if (get tras s)
     (get tras s)
     (do (put tras s (++ tra-counter))
         (get tras s)))))

(defn maybe-render-code [m]
  (if (get m :code)
    (string/format "~%s~ EXIT" (string/join (get m :code) " "))
    ""))

(defn main [m]
  (or
    (case (get m :type)
      "rep" (do
              (def next-say (get m :next))
              (array/push results (main next-say))
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
                                 ""))
                (string/format "\n  ++ %s + label_%d"
                               (traify (get m :val))
                               (get next-say :id))))
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
                             "\n  IF ~~ THEN EXIT"))
      )
    "")
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
