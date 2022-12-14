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
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) ActionOverride("uxana", LeaveParty()) ActionOverride("uxath", LeaveParty()) ActionOverride("uxolr", LeaveParty()) ActionOverride("uxvoi", LeaveParty()) ActionOverride("uxzar", LeaveParty())  EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_56
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) ActionOverride("uxana", LeaveParty()) ActionOverride("uxath", LeaveParty()) ActionOverride("uxolr", LeaveParty()) ActionOverride("uxvoi", LeaveParty()) ActionOverride("uxzar", LeaveParty())  EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_55
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) ActionOverride("uxana", LeaveParty()) ActionOverride("uxath", LeaveParty()) ActionOverride("uxolr", LeaveParty()) ActionOverride("uxvoi", LeaveParty()) ActionOverride("uxzar", LeaveParty()) ActionOverride("uxzar", JoinParty()) SetGlobal("ux_in_party_uxzar", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_54
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) ActionOverride("uxana", LeaveParty()) ActionOverride("uxath", LeaveParty()) ActionOverride("uxolr", LeaveParty()) ActionOverride("uxvoi", LeaveParty()) ActionOverride("uxzar", LeaveParty()) ActionOverride("uxvoi", JoinParty()) SetGlobal("ux_in_party_uxvoi", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_53
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) ActionOverride("uxana", LeaveParty()) ActionOverride("uxath", LeaveParty()) ActionOverride("uxolr", LeaveParty()) ActionOverride("uxvoi", LeaveParty()) ActionOverride("uxzar", LeaveParty()) ActionOverride("uxolr", JoinParty()) SetGlobal("ux_in_party_uxolr", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_52
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) ActionOverride("uxana", LeaveParty()) ActionOverride("uxath", LeaveParty()) ActionOverride("uxolr", LeaveParty()) ActionOverride("uxvoi", LeaveParty()) ActionOverride("uxzar", LeaveParty()) ActionOverride("uxath", JoinParty()) SetGlobal("ux_in_party_uxath", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_51
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) ActionOverride("uxana", LeaveParty()) ActionOverride("uxath", LeaveParty()) ActionOverride("uxolr", LeaveParty()) ActionOverride("uxvoi", LeaveParty()) ActionOverride("uxzar", LeaveParty()) ActionOverride("uxana", JoinParty()) SetGlobal("ux_in_party_uxana", "GLOBAL", 1) EscapeArea()~ EXIT
END