brew:
	cd homebrew && make init

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

init: brew git macos ssh system vscode zsh

.PHONY: clean init

# VSCODE_EXTS=~/.dotfiles/vscode/extensions
# ZSH=~/.oh-my-zsh
# VSCODE_SETTING_DIR=${HOME}/Library/Application Support/Code/User

# all: brew ohmyzsh link vscode

# brew:
# 	@if [ -a brew ]; then \
# 		echo "Installing Homebrew"; \
# 		ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; \
# 	else \
# 		echo "Homebrew is already installed. Skipping…"; \
# 	fi

# ohmyzsh:
# 	@if [ -d ${ZSH} ]; then \
# 		echo "Oh My Zsh is already installed. Skipping…"; \
# 	else \
# 		echo "Installing Oh My Zsh..."; \
# 		sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"; \
# 	fi

# link:
# 	@ln -svfn ~/.dotfiles/zsh ~/.zsh
# 	@ln -svf ~/.dotfiles/.zshrc ~/.zshrc
# 	@ln -svf ~/.dotfiles/.gitconfig ~/.gitconfig
# 	@ln -svf ~/.dotfiles/.gitignore ~/.gitignore
# 	@ln -svf ~/.dotfiles/.ignore ~/.ignore
# 	@ln -svf ~/.dotfiles/ssh/ssh_config ~/.ssh/config
# 	@ln -svf ~/.dotfiles/vscode/settings.json ${VSCODE_SETTING_DIR}/settings.json

# vscode:
# 	@while read ext; do \
# 		echo "VSCode: Installing $$ext…; \
# 		code --install-extension $$ext || exit 1; \
# 	done < ${VSCODE_EXTS}

# clean:
# 	@rm -rf ~/.zsh ~/.zshrc ~/.gitconfig ~/.gitignore ~/.ignore

# .PHONY: brew clean ohmyzsh link vscode
