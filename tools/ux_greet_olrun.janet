(use ./dialog)

(var
 tree
 (say
  {:cond [(g "ux_prelude_done")]}
  "Noooo, we were too late! [uxolr52]"
  (rep "Did...did you see that?"
       (say "Only the aftermath - we just arrived in the wee hours of the morn. [uxolr53]"
            (say "Going down in the glory of battle!  I'd have it no other way. [uxolr16]")))
  (rep "..."
       (say "Cat got yer tongue?  Well, I don't blame ya.  We just arrived in the wee hours of the morn, just in time to see the aftermath. [uxolr54]"
            (say "Going down in the glory of battle!  I'd have it no other way. [uxolr16]")))))

(var sample (build tree))
(print (get sample :tras))
(print (get sample :dialog))
