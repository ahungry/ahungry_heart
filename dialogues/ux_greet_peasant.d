BEGIN uxpea


IF ~!Global("ux_urgent_message", "GLOBAL", 1)~ THEN BEGIN label_47
  SAY @333048
  IF ~True()~ DO ~SetGlobal("ux_urgent_message", "GLOBAL", 1) EscapeArea()~ EXIT
END


IF ~True()~ THEN BEGIN label_1
  SAY @333049
  IF ~~ THEN EXIT
END