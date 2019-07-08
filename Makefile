LN := ln -sfn

.PHONY: install uninstall

all: install

install:
	$(LN) "$$PWD"/fish ~/.config/fish
	$(LN) "$$PWD"/i3 ~/.config/i3
	$(LN) "$$PWD"/vim ~/.vim
	$(LN) "$$PWD"/X11/xinitrc ~/.xinitrc
	echo "Done."

uninstall:
	rm ~/.config/fish
	rm ~/.i3
	rm ~/.vim
	rm ~/.xinitrc
	echo "Done."
