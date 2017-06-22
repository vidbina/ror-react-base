DOCKER=docker
DOCKER_COMPOSE=docker-compose
IMAGE=vidbina/ror:alpha
SUDO=sudo
CHOWN=chown

image:
	${DOCKER} build -t ${IMAGE} .

reown:
	${SUDO} ${CHOWN} ${USER}: -R .

shell:
	${DOCKER} run --rm -it -v ${PWD}:/src -w /src ${IMAGE} /bin/bash

server:
	${DOCKER_COMPOSE} up web

.PHONY:
	image reown shell server
