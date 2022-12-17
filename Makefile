build:
	make -C tools

install:
	git clone git@github.com:ahungry/ahungry_heart_dialogues.git

# This didn't work, these files still clutter up the workspace
submodules:
	git submodule init
	git submodule update
