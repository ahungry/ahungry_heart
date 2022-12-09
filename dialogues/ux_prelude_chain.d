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
  == uxath @0006 DO ~SetGlobal("ux_prelude_athar", "GLOBAL", 1)~
  == uxzar @0007 DO ~SetGlobal("ux_prelude_zariel", "GLOBAL", 1)~
  == uxvoi @0008 DO ~SetGlobal("ux_prelude_voice", "GLOBAL", 1)~
  == uxana @0009 DO ~SetGlobal("ux_prelude_anari", "GLOBAL", 1)
                     SetGlobal("ux_prelude_done", "GLOBAL", 1)~
END
// END Prelude segment
