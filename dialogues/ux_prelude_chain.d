// https://weidu.org/~thebigg/README-WeiDU.html#sec-interject-copy-trans

// // BEGIN Prelude segment
// CHAIN
// IF ~Global("ux_prelude_olrun", "GLOBAL", 1)~ THEN uxath prelude_chain
//   @0006          DO ~SetGlobal("ux_prelude_athar", "GLOBAL", 1)~
//   == uxzar @0007 DO ~SetGlobal("ux_prelude_zariel", "GLOBAL", 1)~
//   == uxvoi @0008 DO ~SetGlobal("ux_prelude_voice", "GLOBAL", 1)~
//   == uxana @0009 DO ~SetGlobal("ux_prelude_anari", "GLOBAL", 1)
//                      SetGlobal("ux_prelude_done", "GLOBAL", 1)~
// EXIT
// // END Prelude segment

// BEGIN Prelude segment
INTERJECT_COPY_TRANS uxolr 3 prelude_chain
  == uxath @0006 DO ~~
  == uxzar @0007 DO ~~
  == uxvoi @0008 DO ~~
  == uxana @0009 DO ~
      // Move them to the next area (the name value is garbage)
      SetGlobal("ux_prelude_done", "GLOBAL", 1)
      // DEBUG - comment/uncomment as needed to change location after first meet
      // ActionOverride("uxana", EscapeAreaObjectMove("%BG_PRE%2300", "North", 1105, 3300, 5))
      // ActionOverride("uxvoi", EscapeAreaObjectMove("%BG_PRE%2300", "North", 1060, 3280, 14))
      // ActionOverride("uxolr", EscapeAreaObjectMove("%BG_PRE%2300", "North", 1220, 3265, 3))
      // ActionOverride("uxzar", EscapeAreaObjectMove("%BG_PRE%2300", "North", 1180, 3280, 13))
      // ActionOverride("uxath", EscapeAreaObjectMove("%BG_PRE%2300", "North", 1067, 3312, 9))
      ~
END
// END Prelude segment
