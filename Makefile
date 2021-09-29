# COMPOSE		= docker-compose --project-directory ./srcs
COMPOSE		= docker-compose -f srcs/docker-compose.yml

$(NAME)		: build up

up				:
	$(COMPOSE) up -d

build			:
	$(COMPOSE) build

cache			:
	$(COMPOSE) build --no-cache

down			:
	$(COMPOSE) down

config		:
	$(COMPOSE) config

ps				:
	$(COMPOSE) ps

re				: down cache up
