VSCODE_EXTS=~/.dotfiles/vscode/extensions
ZSH=~/.oh-my-zsh

all: brew ohmyzsh link vscode

brew:
	@if [ -a brew ]; then \
		echo "Installing Homebrew"; \
		ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; \
	else \
		echo "Homebrew is already installed. Skipping…"; \
	fi

ohmyzsh:
	@if [ -d ${ZSH} ]; then \
		echo "Oh My Zsh is already installed. Skipping…"; \
	else \
		echo "Installing Oh My Zsh..."; \
		sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"; \
	fi

link:
	@ln -sfn ~/.dotfiles/zsh ~/.zsh
	@ln -sf ~/.dotfiles/.zshrc ~/.zshrc
	@ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
	@ln -sf ~/.dotfiles/.gitignore ~/.gitignore
	@ln -sf ~/.dotfiles/.ignore ~/.ignore
	@ln -sf ~/.dotfiles/ssh/ssh_config ~/.ssh/config
	@ln -sf /Users/przemyslawbobak/.dotfiles/vscode/settings.json /Users/przemyslawbobak/Library/Application\ Support/Code/User/settings.json

vscode:
	@while read ext; do \
		echo "VSCode: Installing $$ext…; \
		code --install-extension $$ext || exit 1; \
	done < ${VSCODE_EXTS}

clean:
	@rm -rf ~/.zsh ~/.zshrc ~/.gitconfig ~/.gitignore ~/.ignore

.PHONY: brew clean ohmyzsh link vscode
