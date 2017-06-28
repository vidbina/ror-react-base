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
	${DOCKER_COMPOSE} exec web bash

server:
	${DOCKER_COMPOSE} up web

down:
	${DOCKER_COMPOSE} down

.PHONY:
	image reown shell server
