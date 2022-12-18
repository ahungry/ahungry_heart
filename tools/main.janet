(use ./dialog)
(load-imports)

(import ./ux_greet_olrun :as greet-olrun)
(import ./ux_greet_anari :as greet-anari)
(import ./ux_greet_voice :as greet-voice)
(import ./ux_greet_zariel :as greet-zariel)
(import ./ux_greet_athar :as greet-athar)
(import ./ux_greet_peasant :as greet-peasant)

(import ./ux_kick_zariel :as kick-zariel)
(import ./ux_kick_voice :as kick-voice)
(import ./ux_kick_athar :as kick-athar)
(import ./ux_kick_olrun :as kick-olrun)
(import ./ux_kick_anari :as kick-anari)
(import ./ux_kick_peasant :as kick-peasant)

(import ./ux_pids_zariel :as pids-zariel)
(import ./ux_pids_athar :as pids-athar)
(import ./ux_pids_voice :as pids-voice)
(import ./ux_pids_anari :as pids-anari)
(import ./ux_pids_olrun :as pids-olrun)
(import ./ux_pids_peasant :as pids-peasant)

(import ./ux_prelude_chain :as prelude-chain)
(import ./ux_party_banters :as party-banters)

(defn main [& args]
  (populate-tras-from-file "../lang/english/game.tra")

  (spit "/tmp/thobg/ux_greet_olrun.d" (greet-olrun/main))
  (spit "/tmp/thobg/ux_greet_anari.d" (greet-anari/main))
  (spit "/tmp/thobg/ux_greet_voice.d" (greet-voice/main))
  (spit "/tmp/thobg/ux_greet_zariel.d" (greet-zariel/main))
  (spit "/tmp/thobg/ux_greet_athar.d" (greet-athar/main))
  (spit "/tmp/thobg/ux_greet_peasant.d" (greet-peasant/main))

  (spit "/tmp/thobg/ux_kick_zariel.d" (kick-zariel/main))
  (spit "/tmp/thobg/ux_kick_voice.d" (kick-voice/main))
  (spit "/tmp/thobg/ux_kick_athar.d" (kick-athar/main))
  (spit "/tmp/thobg/ux_kick_olrun.d" (kick-olrun/main))
  (spit "/tmp/thobg/ux_kick_anari.d" (kick-anari/main))
  (spit "/tmp/thobg/ux_kick_peasant.d" (kick-peasant/main))

  (spit "/tmp/thobg/ux_pids_zariel.d" (pids-zariel/main))
  (spit "/tmp/thobg/ux_pids_athar.d" (pids-athar/main))
  (spit "/tmp/thobg/ux_pids_voice.d" (pids-voice/main))
  (spit "/tmp/thobg/ux_pids_anari.d" (pids-anari/main))
  (spit "/tmp/thobg/ux_pids_olrun.d" (pids-olrun/main))
  (spit "/tmp/thobg/ux_pids_peasant.d" (pids-peasant/main))

  (spit "/tmp/thobg/ux_prelude_chain.d" (prelude-chain/main ))
  (spit "/tmp/thobg/ux_party_banters.d" (party-banters/main))

  (spit "/tmp/thobg/maingen.tra" (string/format "%s\n" (build-tras)))

  (print "All done"))
