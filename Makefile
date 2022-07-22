.PHONY: config, fish, nvim

config:
	ln -s $(PWD)/.config/ $(HOME)/.config

fish:
	apt install fish
	curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
	omf install https://github.com/jhillyerd/plugin-git

nvim.appimage:
	curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
	chmod u+x nvim.appimage
	mkdir -p $(HOME)/.local/bin
	ln -s nvim.appimage $(HOME)/.local/bin/nvim

nvim:
	mkdir -p $(HOME)/.config
	if [ -f $(HOME)/.config/nvim ]; then \
	  mv $(HOME)/.config/nvim $(HOME)/.config/nvim.bak; \
	fi
	ln -s $(PWD)/.config/nvim $(HOME)/.config/nvim
