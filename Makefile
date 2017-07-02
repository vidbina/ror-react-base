DOCKER=docker
DOCKER_COMPOSE=docker-compose
SUDO=sudo
CHOWN=chown

image:
	${DOCKER_COMPOSE} build

reown:
	${SUDO} ${CHOWN} ${USER}: -R .

shell:
	${DOCKER_COMPOSE} run web bash

server:
	${DOCKER_COMPOSE} up web

rspec:
	${DOCKER_COMPOSE} up test

.PHONY:
	image reown rspec server shell
