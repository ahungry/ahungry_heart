# Custom actions that expand to valid Weidu bcs/baf actions/dialog utilities
(use ./settings)

(defn ng [s &opt i]
  (string/format "!Global(\"%s\", \"GLOBAL\", %d)" s (or i 1)))

(defn g [s &opt i]
  (string/format "Global(\"%s\", \"GLOBAL\", %d)" s (or i 1)))

(defn l [s &opt i]
  (string/format "Global(\"%s\", \"LOCALS\", %d)" s (or i 1)))

(defn rsgt [s &opt i]
  (string/format "RealSetGlobalTimer(\"%s\", \"GLOBAL\", %d)" s (or i 1)))

(defn nrgte [s]
  (string/format "!RealGlobalTimerExpired(\"%s\", \"GLOBAL\")" s))

(defn rgte [s]
  (string/format "RealGlobalTimerExpired(\"%s\", \"GLOBAL\")" s))

# See: https://gibberlings3.github.io/iesdp/files/ids/bgee/gtimes.htm
# Use something like SEVEN_HOURS
(defn sgt [s i]
  (string/format "SetGlobalTimer(\"%s\", \"GLOBAL\", %s)" s i))

(defn sgtr [s min max]
  (string/format "SetGlobalTimerRandom(\"%s\", \"GLOBAL\", %s, %s)" s min max))

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

(defn not-in-party [who]
  (string/format "!InParty(\"%s\")" (string who)))

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

(defn state> [n]
  (ggt "ux_state" n))

(defn state< [n]
  (glt "ux_state" n))

(defn state>= [n]
  (ggt "ux_state" (- n 1)))

(defn state<= [n]
  (glt "ux_state" (+ n 1)))

(defn chapter= [n]
  (g "Chapter" n))

(defn chapter>= [n]
  (ggt "Chapter" (- n 1)))

(defn chapter<= [n]
  (glt "Chapter" (+ n 1)))

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

(defn strip-j [s]
  (string/slice s 0 (- (length s) 1)))

(defn nip [who]
  (string/format "!IsValidForPartyDialogue(\"%s\")" (string who)))

(defn is-valid-for-party-dialogue
  "This should in general always get something like :uxathj as the input, however
when we do, we want to make sure the trailing `j` is stripped off, as it won't work
in the check itself."
  [who]
  (if (not= 106 (last (string who)))
    "" # If the j charcode is not last, just skip this check entirely
    (string/format "IsValidForPartyDialogue(\"%s\")" (strip-j (string who)))))

(defn see [who]
  (string/format "See(\"%s\")" (string who)))

(defn not-see [who]
  (string/format "!See(\"%s\")" (string who)))

(defn state-check [who state]
  (string/format "StateCheck(\"%s\", %s)" (string who) state))

(defn not-state-check [who state]
  (string/format "!StateCheck(\"%s\", %s)" (string who) state))

(defn cannot-talk [who]
  (state-check who "CD_STATE_NOTVALID"))

(defn can-talk [who]
  (not-state-check who "CD_STATE_NOTVALID"))

# Convenience function for including all checks related to party member banter reqs
(defn bin-party [who]
  (string/join
   [
    (in-party who)
    (see who)
    (can-talk who)
    ] " "))
