(use ./dialog)
(use ./util)

(var
 urgent-message
 (say {:cond [(ng "ux_urgent_message")]
       :code [(sg "ux_urgent_message")]}
      "You guys must come with me!"))


(defn main [& args]
  (string/format "BEGIN uxpea\n%s"
                 (string/join [(build-dialog urgent-message)])))
