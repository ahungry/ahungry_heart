BEGIN uxpea


IF ~Global("ux_state", "GLOBAL", 40)~ THEN BEGIN label_51
  SAY @000041
  ++  @000042 DO ~IncrementGlobal("ux_state", "GLOBAL", 10) EscapeArea()~   EXIT
  ++  @000043 DO ~IncrementGlobal("ux_state", "GLOBAL", 10) EscapeArea()~   EXIT
END