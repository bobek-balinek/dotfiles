CFG_PATH=${HOME}/.ssh/config

init:
	@ln -svf ${PWD}/ssh_config.symlink ${CFG_PATH}

clean:
	@rm ${CFG_PATH} || true

.PHONY: init clean