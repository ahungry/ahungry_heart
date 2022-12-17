(var tras @{})
(var tra-counter 0)
(var used-tras @[])

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

(defn fix-problem-chars [s]
  (->> s
       (string/replace-all "\n" " ")
       (string/replace-all "~" " ")))

(defn fix-sound [s]
  (if (= (- (length s) 1)
         (string/find "]" (string/trim s)))
    (let
        [idx (string/find "[" s)
         song (string/slice s idx)
         txt (string/slice s 0 (-  idx 1))]
        (string/format "~%s~ %s" txt song))
    (string/format "~%s~" s)))

(defn traify [ss]
  (let [s (-> ss fix-problem-chars fix-sound)
        padded-tra-id (if (get tras s)
                        (get tras s)
                        (do (put tras s (string/format "%0.6d" (++ tra-counter)))
                            (get tras s)))]
    (array/push used-tras padded-tra-id)
    (string/format "@%s" padded-tra-id)))

(defn is-used-tra? [key]
  (index-of key used-tras))

(defn build-tras []
  (var result @[])
  (each k (keys tras)
    (when (is-used-tra? (get tras k))
      (array/push result (string/format "@%s = %s" (get tras k) k))))
  (-> (sort result) (string/join "\n")))
