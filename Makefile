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

prep:
	${DOCKER_COMPOSE} run test bash -c "sleep 5 && pwd && ls -la && bundle exec rake db:migrate"

rspec:
	${DOCKER_COMPOSE} run test

prep_and_rspec:
	${DOCKER_COMPOSE} run test bash -c "mkdir -p reports/rspec && pwd && ls -la && sleep 5 && bundle exec rake db:migrate && bundle exec rspec --format progress --format RspecJunitFormatter -o reports/rspec/rspec.xml"

down:
	${DOCKER_COMPOSE} down

.PHONY:
	down image reown rspec server shell prep prep_and_rspec
