# Custom actions that expand to valid Weidu bcs/baf actions/dialog utilities

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
