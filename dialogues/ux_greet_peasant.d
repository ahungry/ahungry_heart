BEGIN uxpea


IF ~Global("ux_state", "GLOBAL", 40)~ THEN BEGIN label_58
  SAY @000041
  ++ @000121 + label_51
  ++ @000042 + label_52
  ++ @000122 + label_53
  ++ @000123 + label_54
  ++ @000043 + label_55
  ++ @000126 + label_56
  ++ @000127 + label_57
END

IF ~~ THEN BEGIN label_57
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_56
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_55
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxzar", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_54
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxvoi", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_53
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxolr", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_52
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxath", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_51
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxana", "GLOBAL", 1) EscapeArea()~ EXIT
END