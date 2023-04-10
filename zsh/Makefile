ZSH_CUSTOM=${ZSH}/custom

plugins:
	@while read plugin; do \
		echo "ZSH: Installing $$plugin"; \
		git -C "${ZSH_CUSTOM}/plugins/$$plugin" pull || git clone https://github.com/zsh-users/$$plugin ${ZSH_CUSTOM}/plugins/$$plugin; \
	done < ${PWD}/plugins

init: plugins
	@ln -sfn ${PWD}/src ${HOME}/.zsh
	@ln -svf ${PWD}/zshrc.symlink ${HOME}/.zshrc

clean:
	@rm -rf ${HOME}/.zsh || true
	@rm ${HOME}/.zshrc || true

.PHONY: init clean plugins
