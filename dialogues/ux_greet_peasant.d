BEGIN uxpea


IF ~Global("ux_state", "GLOBAL", 40) InParty("uxath") InParty("uxolr") InParty("uxana") InParty("uxvoi") InParty("uxzar")~ THEN BEGIN label_58
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


IF ~Global("ux_state", "GLOBAL", 40) InParty("uxana")~ THEN BEGIN label_177
  SAY @000135
  IF ~InParty("uxana")~ THEN
  REPLY @000121   + label_170
  IF ~InParty("uxath")~ THEN
  REPLY @000042   + label_171
  IF ~InParty("uxolr")~ THEN
  REPLY @000122   + label_172
  IF ~InParty("uxvoi")~ THEN
  REPLY @000123   + label_173
  IF ~InParty("uxzar")~ THEN
  REPLY @000043   + label_174
  ++ @000126 + label_175
  ++ @000127 + label_176
END

IF ~~ THEN BEGIN label_176
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_175
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_174
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxzar", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_173
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxvoi", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_172
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxolr", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_171
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxath", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_170
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxana", "GLOBAL", 1) EscapeArea()~ EXIT
END


IF ~Global("ux_state", "GLOBAL", 40) InParty("uxath")~ THEN BEGIN label_185
  SAY @000136
  IF ~InParty("uxana")~ THEN
  REPLY @000121   + label_178
  IF ~InParty("uxath")~ THEN
  REPLY @000042   + label_179
  IF ~InParty("uxolr")~ THEN
  REPLY @000122   + label_180
  IF ~InParty("uxvoi")~ THEN
  REPLY @000123   + label_181
  IF ~InParty("uxzar")~ THEN
  REPLY @000043   + label_182
  ++ @000126 + label_183
  ++ @000127 + label_184
END

IF ~~ THEN BEGIN label_184
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_183
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_182
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxzar", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_181
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxvoi", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_180
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxolr", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_179
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxath", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_178
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxana", "GLOBAL", 1) EscapeArea()~ EXIT
END


IF ~Global("ux_state", "GLOBAL", 40) InParty("uxolr")~ THEN BEGIN label_193
  SAY @000137
  IF ~InParty("uxana")~ THEN
  REPLY @000121   + label_186
  IF ~InParty("uxath")~ THEN
  REPLY @000042   + label_187
  IF ~InParty("uxolr")~ THEN
  REPLY @000122   + label_188
  IF ~InParty("uxvoi")~ THEN
  REPLY @000123   + label_189
  IF ~InParty("uxzar")~ THEN
  REPLY @000043   + label_190
  ++ @000126 + label_191
  ++ @000127 + label_192
END

IF ~~ THEN BEGIN label_192
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_191
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_190
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxzar", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_189
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxvoi", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_188
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxolr", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_187
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxath", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_186
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxana", "GLOBAL", 1) EscapeArea()~ EXIT
END


IF ~Global("ux_state", "GLOBAL", 40) InParty("uxvoi")~ THEN BEGIN label_201
  SAY @000138
  IF ~InParty("uxana")~ THEN
  REPLY @000121   + label_194
  IF ~InParty("uxath")~ THEN
  REPLY @000042   + label_195
  IF ~InParty("uxolr")~ THEN
  REPLY @000122   + label_196
  IF ~InParty("uxvoi")~ THEN
  REPLY @000123   + label_197
  IF ~InParty("uxzar")~ THEN
  REPLY @000043   + label_198
  ++ @000126 + label_199
  ++ @000127 + label_200
END

IF ~~ THEN BEGIN label_200
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_199
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_198
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxzar", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_197
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxvoi", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_196
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxolr", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_195
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxath", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_194
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxana", "GLOBAL", 1) EscapeArea()~ EXIT
END


IF ~Global("ux_state", "GLOBAL", 40) InParty("uxzar")~ THEN BEGIN label_209
  SAY @000139
  IF ~InParty("uxana")~ THEN
  REPLY @000121   + label_202
  IF ~InParty("uxath")~ THEN
  REPLY @000042   + label_203
  IF ~InParty("uxolr")~ THEN
  REPLY @000122   + label_204
  IF ~InParty("uxvoi")~ THEN
  REPLY @000123   + label_205
  IF ~InParty("uxzar")~ THEN
  REPLY @000043   + label_206
  ++ @000126 + label_207
  ++ @000127 + label_208
END

IF ~~ THEN BEGIN label_208
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_207
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_206
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxzar", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_205
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxvoi", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_204
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxolr", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_203
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxath", "GLOBAL", 1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN label_202
  SAY @000125
  IF ~True()~ DO ~IncrementGlobal("ux_state", "GLOBAL", 10) SetGlobal("ux_keep_uxana", "GLOBAL", 1) EscapeArea()~ EXIT
END