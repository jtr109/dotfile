.PHONY: default, clean

ROOT_OH_MY_ZSH = '/root/.oh-my-zsh'
DIR_TO_CHECK_FOR = 'large_directory'

default:
	# install
	# @echo 'Please execute "make config" after installation.'
	# wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
	# chmod +x ./install.sh
	# ./install.sh
	sh -c "$$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

config:
# must install in root
ifeq ($(shell id -u), 0)
	$(error You must NOT be in root to perform this action.)
endif
	# config
	if [ -f $(HOME)/.zshrc ]; then \
	  rm $(HOME)/.zshrc.bak; \
	  mv $(HOME)/.zshrc $(HOME)/.zshrc.bak; \
	fi
	ln -s $(PWD)/.zshrc $(HOME)/.zshrc
	# plugin: autosuggestions
	git clone https://github.com/zsh-users/zsh-autosuggestions $${ZSH_CUSTOM:-$$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	@echo 'Please execute "chsh -s $$(which zsh)" to change the default shell.'

clean:
# must install in root
	if $$(which uninstall_oh_my_zsh); then \
	  uninstall_oh_my_zsh; \
	fi
	if [ -f $(HOME)/.zshrc.bak ]; then \
	  unlink $$HOME/.zshrc; \
	  mv $$HOME/.zshrc.bak $$HOME/.zshrc; \
	fi
	if [ -d $(HOME)/.oh-my-zsh ]; then \
	  echo "Deleting $$HOME/.oh-my-zsh";
	  rm -rf $$HOME/.oh-my-zsh.bak; \
	  mv $$HOME/.oh-my-zsh $$HOME/.oh-my-zsh.bak; \
	fi

clean-root:
ifneq ($(shell id -u), 0)
	$(error You must be root to perform this action.)
endif
	if [ -d /root/.oh-my-zsh ]; then \
	  echo "Deleting /root/.oh-my-zsh"; \
	  rm -rf /root/.oh-my-zsh; \
	fi

test:
ifneq ($(shell id -u), 0)
	@echo "You must be root to perform this action."
else
	@echo "TODO: The action when the user is root here..."
endif
