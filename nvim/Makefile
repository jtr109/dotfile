.PHONY: config, fish, nvim, tldr, install-zsh

install-neovim: nvim.appimage
	mkdir -p $(HOME)/bin
	rm -f $(HOME)/bin/nvim
	ln -s $(PWD)/nvim.appimage $(HOME)/bin/nvim

nvim.appimage:
	curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
	chmod u+x nvim.appimage

config:
	mkdir -p $(HOME)/.config
	if [ -d $(HOME)/.config/nvim ]; then \
	  rm -rf $(HOME)/.config/nvim.bak; \
	  mv $(HOME)/.config/nvim $(HOME)/.config/nvim.bak; \
	  rm -rf $(HOME)/.config/nvim; \
	fi
	ln -s $(PWD)/.config/nvim $(HOME)/.config/nvim
	sh -c 'curl -fLo "$${XDG_DATA_HOME:-$$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	nvim "+:PlugInstall"
