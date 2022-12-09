// Banters that rely on both friends being present belong in here (no forward decl?).
CHAIN
// IF ~InParty("uxolr")
// See("uxolr")
// !StateCheck("uxolr", CD_STATE_NOTVALID)
// !StateCheck("uxzar", CD_STATE_NOTVALID)
// Global("uxzar_uxolr_banter1", "GLOBAL", 0)~ THEN uxbzar zar_olr_b1
IF ~True()~ THEN uxbzar zar_olr_b1
~This is just a dummy line~
DO ~SetGlobal("uxzar_uxolr_banter1", "GLOBAL", 0)~
== uxbolr ~I'm no dummy!~
== uxbzar ~Me either!~
EXIT

CHAIN
IF ~True()~ THEN uxbzar zar_olr_b1
~This is just a dummy line~
DO ~SetGlobal("uxzar_uxolr_banter1", "GLOBAL", 0)~
== uxbolr ~I'm no dummy!~
== uxbzar ~Me either!~
EXIT
