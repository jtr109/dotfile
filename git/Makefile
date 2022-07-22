.PHONY: default, clean

default:
	git config user.name "Ryan Li"
	git config user.email "conbas2019@gmail.com"
ifeq (, $(shell which nvim))
	git config core.editor "nvim"
	@echo "Git core editor has been changed into NeoVim."
else ifeq (, $(shell with vim))
	git config core.editor "vim"
	@echo "Git core editor has been changed into Vim."
else
	@echo "Git core editor is not changed."
endif

test:
# ifeq ($(shell which cat && echo -n yes), yes)
ifeq (, $(shell which cat))
	@echo "not exists"
else
	@echo "exists"
endif

