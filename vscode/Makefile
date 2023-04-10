VS_PATH=${HOME}/Library/Application Support/Code/User

plugins:
	@while read ext; do \
		echo "VSCode: Installing $$ext…; \
		code --install-extension $$ext || exit 1; \
	done < ${PWD}/extensions

init: plugins
	@ln -svf ${PWD}/settings.json ${VS_PATH}/settings.json

clean:
	@rm ${VS_PATH}/settings.json || true

.PHONY: init clean