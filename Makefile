.PHONY: config, fish

config:
	ln -s $(PWD)/.config $(HOME)/.config

fish:
	apt install fish
	curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
	omf install https://github.com/jhillyerd/plugin-git
