#######################################################
## Automate container recreation for dengue database ##
#######################################################

include .env

# Docker specific
ENV_FILE := .env
PROJECT_NAME := infodengue
COMPOSE_FILE := docker/docker-compose.yml
COMPOSE_FILE_ := docker/nsync-compose.yml
DOCKER := docker-compose -p $(PROJECT_NAME)
DOCKER_UP := up -d --no-build
DOCKER_STOP := rm --force --stop

SERVICES_STORAGE := nsync_storage
SERVICES_DATABASE := dengue_db


# DENGUE DATABASE

# Download database to test in CI
download_demodb:
	bash ci/_download_dbdemo.sh

# Download the database to the container
download_denguedb:
	bash docker/download_dumps.sh

# Configure database in the container
build_denguedb:
	$(DOCKER) -f $(COMPOSE_FILE) --env-file $(ENV_FILE) build

deploy_denguedb:
	$(DOCKER) -f $(COMPOSE_FILE) --env-file $(ENV_FILE) $(DOCKER_UP)

exec_denguedb:
	$(DOCKER) -f $(COMPOSE_FILE) --env-file $(ENV_FILE) exec $(SERVICES_DATABASE) bash

stop_denguedb:
	$(DOCKER) -f $(COMPOSE_FILE) --env-file $(ENV_FILE) $(DOCKER_STOP)

recreate_container_denguedb:
	make stop_denguedb
	# make download_demodb
	make download_denguedb
	make build_denguedb


# NSYNC STORAGE

build_nsync:
	$(DOCKER) -f $(COMPOSE_FILE_) --env-file $(ENV_FILE) build

deploy_nsync:
	$(DOCKER) -f $(COMPOSE_FILE_) --env-file $(ENV_FILE) $(DOCKER_UP)

exec_nsync:
	$(DOCKER) -f $(COMPOSE_FILE_) --env-file $(ENV_FILE) exec $(SERVICES_STORAGE) bash

stop_nsync:
	$(DOCKER) -f $(COMPOSE_FILE_) --env-file $(ENV_FILE) $(DOCKER_STOP)


clean:
	@find ./ -name '*.pyc' -exec rm -f {} \;
	@find ./ -name '*.pyo' -exec rm -f {} \;
	@find ./ -name '*~' -exec rm -f {} \;
	rm -rf .cache
	rm -rf build
	rm -rf dist
	rm -rf *.egg-info
