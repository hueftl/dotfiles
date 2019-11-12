CURL := curl -sL
LN := ln -sfn
MD := mkdir -p

.PHONY: install dependencies uninstall

all: install

install:
	$(LN) "$$PWD"/fish ~/.config/fish
	$(LN) "$$PWD"/i3 ~/.config/i3
	$(LN) "$$PWD"/pdbpp/pdbrc.py ~/.pdbrc.py
	$(LN) "$$PWD"/vim ~/.vim
	$(LN) "$$PWD"/X11/xinitrc ~/.xinitrc
	echo "Done."

dependencies:
	$(CURL) https://github.com/junegunn/fzf/raw/master/shell/key-bindings.fish \
		-o fish/functions/fzf_key_bindings.fish
	$(CURL) https://git.io/fisher \
		-o fish/functions/fisher.fish
	$(CURL) https://get.oh-my.fish | fish

uninstall:
	rm ~/.config/fish
	rm ~/.config/i3
	rm ~/.pdbrc.py
	rm ~/.vim
	rm ~/.xinitrc
	echo "Done."
