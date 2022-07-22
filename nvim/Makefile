.PHONY: config, fish, nvim, tldr, install-zsh

install-neovim: nvim.appimage
	mkdir -p $(HOME)/.local/bin
	ln -s nvim.appimage /usr/local/bin/nvim

nvim.appimage:
	curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
	chmod u+x nvim.appimage

config:
	ln -s $(PWD)/.config/ $(HOME)/.config

nvim:
	mkdir -p $(HOME)/.config
	if [ -f $(HOME)/.config/nvim ]; then \
	  mv $(HOME)/.config/nvim $(HOME)/.config/nvim.bak; \
	fi
	ln -s $(PWD)/.config/nvim $(HOME)/.config/nvim
