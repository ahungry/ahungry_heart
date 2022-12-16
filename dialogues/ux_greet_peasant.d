BEGIN uxpea


IF ~Global("ux_state", "GLOBAL", 40) InParty("uxath") InParty("uxolr") InParty("uxana") InParty("uxvoi") InParty("uxzar")~ THEN BEGIN label_58
  SAY @000041
  ++ @000121 + label_51
  ++ @000042 + label_52
  ++ @000122 + label_53
  ++ @000123 + label_54
  ++ @000043 + label_55
  ++ @000179 + label_56
  ++ @000181 + label_57
END

IF ~~ THEN BEGIN label_57
  SAY @000180
  IF ~True()~ DO ~SetGlobal("ux_state", "GLOBAL", 60) SetGlobal("ux_keep_uxana", "GLOBAL", 1) SetGlobal("ux_keep_uxath", "GLOBAL", 1) SetGlobal("ux_keep_uxolr", "GLOBAL", 1) SetGlobal("ux_keep_uxvoi", "GLOBAL", 1) SetGlobal("ux_keep_uxzar", "GLOBAL", 1) EscapeArea()~ EXIT
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


IF ~Global("ux_state", "GLOBAL", 40) InParty("uxana")~ THEN BEGIN label_204
  SAY @000135
  IF ~InParty("uxana")~ THEN
  REPLY @000121   + label_197
  IF ~InParty("uxath")~ THEN
  REPLY @000042   + label_198
  IF ~InParty("uxolr")~ THEN
  REPLY @000122   + label_199
  IF ~InParty("uxvoi")~ THEN
  REPLY @000123   + label_200
  IF ~InParty("uxzar")~ THEN
  REPLY @000043   + label_201
  ++ @000179 + label_202
  ++ @000181 + label_203
END

IF ~~ THEN BEGIN label_203
  SAY @000180
  IF ~True()~ DO ~SetGlobal("ux_state", "GLOBAL", 60) SetGlobal("ux_keep_uxana", "GLOBAL", 1) SetGlobal("ux_keep_uxath", "GLOBAL", 1) SetGlobal("ux_keep_uxolr", "GLOBAL", 1) SetGlobal("ux_keep_uxvoi", "GLOBAL", 1) SetGlobal("ux_keep_uxzar", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_202
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_201
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxzar", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_200
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxvoi", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_199
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxolr", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_198
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxath", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_197
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxana", "GLOBAL", 1) EscapeArea()~ EXIT
END


IF ~Global("ux_state", "GLOBAL", 40) InParty("uxath")~ THEN BEGIN label_212
  SAY @000136
  IF ~InParty("uxana")~ THEN
  REPLY @000121   + label_205
  IF ~InParty("uxath")~ THEN
  REPLY @000042   + label_206
  IF ~InParty("uxolr")~ THEN
  REPLY @000122   + label_207
  IF ~InParty("uxvoi")~ THEN
  REPLY @000123   + label_208
  IF ~InParty("uxzar")~ THEN
  REPLY @000043   + label_209
  ++ @000179 + label_210
  ++ @000181 + label_211
END

IF ~~ THEN BEGIN label_211
  SAY @000180
  IF ~True()~ DO ~SetGlobal("ux_state", "GLOBAL", 60) SetGlobal("ux_keep_uxana", "GLOBAL", 1) SetGlobal("ux_keep_uxath", "GLOBAL", 1) SetGlobal("ux_keep_uxolr", "GLOBAL", 1) SetGlobal("ux_keep_uxvoi", "GLOBAL", 1) SetGlobal("ux_keep_uxzar", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_210
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_209
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxzar", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_208
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxvoi", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_207
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxolr", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_206
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxath", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_205
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxana", "GLOBAL", 1) EscapeArea()~ EXIT
END


IF ~Global("ux_state", "GLOBAL", 40) InParty("uxolr")~ THEN BEGIN label_220
  SAY @000137
  IF ~InParty("uxana")~ THEN
  REPLY @000121   + label_213
  IF ~InParty("uxath")~ THEN
  REPLY @000042   + label_214
  IF ~InParty("uxolr")~ THEN
  REPLY @000122   + label_215
  IF ~InParty("uxvoi")~ THEN
  REPLY @000123   + label_216
  IF ~InParty("uxzar")~ THEN
  REPLY @000043   + label_217
  ++ @000179 + label_218
  ++ @000181 + label_219
END

IF ~~ THEN BEGIN label_219
  SAY @000180
  IF ~True()~ DO ~SetGlobal("ux_state", "GLOBAL", 60) SetGlobal("ux_keep_uxana", "GLOBAL", 1) SetGlobal("ux_keep_uxath", "GLOBAL", 1) SetGlobal("ux_keep_uxolr", "GLOBAL", 1) SetGlobal("ux_keep_uxvoi", "GLOBAL", 1) SetGlobal("ux_keep_uxzar", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_218
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_217
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxzar", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_216
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxvoi", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_215
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxolr", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_214
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxath", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_213
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxana", "GLOBAL", 1) EscapeArea()~ EXIT
END


IF ~Global("ux_state", "GLOBAL", 40) InParty("uxvoi")~ THEN BEGIN label_228
  SAY @000138
  IF ~InParty("uxana")~ THEN
  REPLY @000121   + label_221
  IF ~InParty("uxath")~ THEN
  REPLY @000042   + label_222
  IF ~InParty("uxolr")~ THEN
  REPLY @000122   + label_223
  IF ~InParty("uxvoi")~ THEN
  REPLY @000123   + label_224
  IF ~InParty("uxzar")~ THEN
  REPLY @000043   + label_225
  ++ @000179 + label_226
  ++ @000181 + label_227
END

IF ~~ THEN BEGIN label_227
  SAY @000180
  IF ~True()~ DO ~SetGlobal("ux_state", "GLOBAL", 60) SetGlobal("ux_keep_uxana", "GLOBAL", 1) SetGlobal("ux_keep_uxath", "GLOBAL", 1) SetGlobal("ux_keep_uxolr", "GLOBAL", 1) SetGlobal("ux_keep_uxvoi", "GLOBAL", 1) SetGlobal("ux_keep_uxzar", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_226
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_225
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxzar", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_224
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxvoi", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_223
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxolr", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_222
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxath", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_221
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxana", "GLOBAL", 1) EscapeArea()~ EXIT
END


IF ~Global("ux_state", "GLOBAL", 40) InParty("uxzar")~ THEN BEGIN label_236
  SAY @000139
  IF ~InParty("uxana")~ THEN
  REPLY @000121   + label_229
  IF ~InParty("uxath")~ THEN
  REPLY @000042   + label_230
  IF ~InParty("uxolr")~ THEN
  REPLY @000122   + label_231
  IF ~InParty("uxvoi")~ THEN
  REPLY @000123   + label_232
  IF ~InParty("uxzar")~ THEN
  REPLY @000043   + label_233
  ++ @000179 + label_234
  ++ @000181 + label_235
END

IF ~~ THEN BEGIN label_235
  SAY @000180
  IF ~True()~ DO ~SetGlobal("ux_state", "GLOBAL", 60) SetGlobal("ux_keep_uxana", "GLOBAL", 1) SetGlobal("ux_keep_uxath", "GLOBAL", 1) SetGlobal("ux_keep_uxolr", "GLOBAL", 1) SetGlobal("ux_keep_uxvoi", "GLOBAL", 1) SetGlobal("ux_keep_uxzar", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_234
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_233
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxzar", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_232
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxvoi", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_231
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxolr", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_230
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxath", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_229
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxana", "GLOBAL", 1) EscapeArea()~ EXIT
END