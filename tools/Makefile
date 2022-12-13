all:
	mkdir -p /tmp/thobg
	janet ./main.janet
	cp /tmp/thobg/*.d ../dialogues/
	cp /tmp/thobg/maingen.tra ../lang/english/game.tra

regen:
	mkdir -p /tmp/thobg
	-rm ../lang/english/game.tra
	touch ../lang/english/game.tra
	janet ./main.janet
	cp /tmp/thobg/*.d ../dialogues/
	cat /tmp/thobg/maingen.tra >> ../lang/english/game.tra
