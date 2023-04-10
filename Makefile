all: brew git macos ssh system vscode zsh

brew:
	# cd homebrew && make init
	@echo "Skipping Homebrew" || true

git:
	cd git && make init

macos:
	cd macos && make init

ssh:
	cd ssh && make init

system:
	cd system && make init

vscode:
	cd vscode && make init

zsh:
	cd zsh && make init

clean:
	cd git && make clean && \
	cd ../homebrew && make clean && \
	cd ../macos && make clean && \
	cd ../ssh && make clean && \
	cd ../system && make clean && \
	cd ../zsh && make clean

.PHONY: clean brew git macos ssh system vscode zsh
