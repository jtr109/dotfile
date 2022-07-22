.PHONY: config, fish, nvim, tldr, install-zsh

config:
	ln -s $(PWD)/.config/ $(HOME)/.config

fish:
	apt install fish
	curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
	omf install https://github.com/jhillyerd/plugin-git

install-neovim:
	curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
	chmod u+x nvim.appimage
	mkdir -p $(HOME)/.local/bin
	ln -s nvim.appimage /usr/local/bin/nvim

nvim:
	mkdir -p $(HOME)/.config
	if [ -f $(HOME)/.config/nvim ]; then \
	  mv $(HOME)/.config/nvim $(HOME)/.config/nvim.bak; \
	fi
	ln -s $(PWD)/.config/nvim $(HOME)/.config/nvim

tldr:
	apt install python3-pip
	pip3 install tldr

install-zsh:
	apt install zsh
	sh -c "$$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

config-zsh:
	if [ -f $(HOME)/.zshrc ]; then \
	  mv $(HOME)/.zshrc $(HOME)/.zshrc.bak; \
	fi
	ln -s $(PWD)/oh-my-zsh/.zshrc $(HOME)/.zshrc

install-zsh-autosuggestion:
	git clone https://github.com/zsh-users/zsh-autosuggestions $${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
