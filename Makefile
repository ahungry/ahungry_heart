build:
	make -C tools

clean:
	-rm -fr dialogues

local-install:
	ln -sfn ../ahungry_heart_dialogues dialogues

install:
	git clone git@github.com:ahungry/ahungry_heart_dialogues.git dialogues

# This didn't work, these files still clutter up the workspace
submodules:
	git submodule init
	git submodule update
