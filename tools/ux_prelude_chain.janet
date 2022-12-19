(use ./lib/dialog)
(load-imports)

(defn prelude-chain [slot]
 (ict
  :uxolr slot
  (== :uxath "I am sorry for your misfortune.
 Had I been able, I would have helped. [uxath52]")

  (== :uxzar "Based on what's left of the body,
 this was clearly the work of a powerful entity. [uxzar52]")

  (== :uxvoi "May he rest among the Gods. [uxvoi52]")

  (== :uxana "We were on our way here to discuss a matter of utmost
 urgency with Gorion, however it seems we're on our own.
 Take care traveler, and may you never cross paths with those
 who struggle for The Heart of Baldur's Gate. [uxana52]"
      (sg "ux_prelude_done")
      (ao :uxzar (sl "ux_zariel_sleeping"))
      (ao :uxana "EscapeAreaObjectMove(\"%BG_PRE%2300\", \"North\", 1105, 3300, 5)")
      (ao :uxvoi "EscapeAreaObjectMove(\"%BG_PRE%2300\", \"North\", 1060, 3280, 14)")
      (ao :uxolr "EscapeAreaObjectMove(\"%BG_PRE%2300\", \"North\", 1220, 3265, 3)")
      (ao :uxzar "EscapeAreaObjectMove(\"%BG_PRE%2300\", \"North\", 1180, 3280, 13)")
      (ao :uxath "EscapeAreaObjectMove(\"%BG_PRE%2300\", \"North\", 1067, 3312, 9)")
      )
  ))

(defn urgent-chain [slot]
  (ict2
   :uxpea slot
   (== :uxathj "What is it friend?")
   (== :uxpea "There is an immediate need for your assistance back in Baldur's Gate.
 Rumor has it that the gates are planned to be shut off due to problems in the
 surrounding regions.")
   (== :uxolrj "Blast!  We had matters needing attention back there!")
   (== :uxanaj "Additionally, we have just extended an invitation to Gorion's Ward.")
   (== :uxzarj "Some timing...")
   (== :uxvoij "Let us hear him out.")
   (== :uxpea "Please, it is urgent that you head there now.")
   (== :uxathj "<CHARNAME>, one of us can remain with you, however the rest must
 make haste to Baldur's Gate.  Who will stay?")))

(defn urgent-chain-bland [slot who]
  (ict
   :uxpea slot
   (== who "What is it friend?")
   (== :uxpea "There is an immediate need for your assistance back in Baldur's Gate.
 Rumor has it that the gates are planned to be shut off due to problems in the
 surrounding regions.")
   (== who "Blast!  We had matters needing attention back there!")
   (== who "Additionally, we have just extended an invitation to Gorion's Ward.")
   (== :uxpea "Please, it is urgent that you head there now.")
   (== who "<CHARNAME>, one of us can remain with you, however the rest must
 make haste to Baldur's Gate.  Who will stay?")))

(defn main [& args]
  (string/join
   [
    (prelude-chain 2)
    (prelude-chain 4)
    (urgent-chain 0)
    # NOTE: Check via decompiled 'weidu uxpea.dlg' post install
    (urgent-chain-bland 8 :uxanaj)
    (urgent-chain-bland 16 :uxathj)
    (urgent-chain-bland 24 :uxolrj)
    (urgent-chain-bland 32 :uxvoij)
    (urgent-chain-bland 40 :uxzarj)
   ] "\n"))
