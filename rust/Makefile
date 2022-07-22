.PHONY: all

all:
	# rust:
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	#rust-analyzer:
	if [ -d $$HOME/.local/bin ]; then \
	  mkdir $$HOME/.local/bin; \
	fi
	curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
	chmod +x ~/.local/bin/rust-analyzer
