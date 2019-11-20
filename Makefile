VSCODE_EXTS=~/.dotfiles/vscode/extensions

all: link vscode

link:
	@ln -sfn ~/.dotfiles/zsh ~/.zsh
	@ln -sf ~/.dotfiles/.zshrc ~/.zshrc
	@ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
	@ln -sf ~/.dotfiles/.gitignore ~/.gitignore
	@ln -sf ~/.dotfiles/.ignore ~/.ignore
	@ln -sf ~/.dotfiles/ssh/ssh_config ~/.ssh/config
	@ln -sf /Users/przemyslawbobak/.dotfiles/vscode/settings.json /Users/przemyslawbobak/Library/Application\ Support/Code/User/settings.json

vscode:
	while read ext; do
		echo "VSCode: Installing $$ext…; \
		code --install-extension $$ext || exit 1; \
	done < ${VSCODE_EXTS}

clean:
	@rm -rf ~/.zsh ~/.zshrc ~/.gitconfig ~/.gitignore ~/.ignore

.PHONY: link clean vscode
