(defn uniq [xs]
  (def res @[])
  (each x xs
    (unless (index-of x res) (array/push res x)))
  res)
