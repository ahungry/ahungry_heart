all:
	mkdir -p /tmp/thobg
	janet ./main.janet
	cp /tmp/thobg/*.d ../dialogues/
	cp ../lang/english/ogame.tra ../lang/english/game.tra
	cat /tmp/thobg/maingen.tra >> ../lang/english/game.tra
