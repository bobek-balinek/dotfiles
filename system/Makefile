init:
	@ln -svf ${PWD}/ignore.symlink ${HOME}/.ignore
	@ln -svf ${PWD}/editorconfig.symlink ${HOME}/.editorconfig

clean:
	@rm ${HOME}/.ignore || true
	@rm ${HOME}/.editorconfig || true

.PHONY: init clean