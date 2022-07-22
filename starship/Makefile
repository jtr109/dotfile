.PHONY: all

all:
# must install in root
ifneq ($(shell id -u), 0)
	$(error You must be root to perform this action.)
endif
	curl -sS https://starship.rs/install.sh | sh
