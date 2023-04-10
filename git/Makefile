init:
	@cp ${PWD}/gitconfig.symlink ${HOME}/.gitconfig
	@cp ${PWD}/gitignore.symlink ${HOME}/.gitignore

clean:
	@rm ${HOME}/.gitconfig || true
	@rm ${HOME}/.gitignore || true

.PHONY: init clean