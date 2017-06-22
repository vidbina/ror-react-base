DOCKER=docker
WORKBENCH=vidbina/ror:alpha

reown:
	${SUDO} ${CHOWN} ${USER}: -R .

shell:
	${DOCKER} run --rm -it -v ${PWD}:/src -w /src ${WORKBENCH} /bin/bash

.PHONY:
	reown shell
