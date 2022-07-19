.PHONY: config, fish

config:
	ln -s $(PWD)/.config $(HOME)/.config

fish:
	apt install fish
	curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
	omf install https://github.com/jhillyerd/plugin-git

nvim.appimage:
	curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
	chmod u+x nvim.appimage
	mkdir -p $(HOME)/.local/bin
	ln -s nvim.appimage $(HOME)/.local/bin/nvim
