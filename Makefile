NAME		= inception

COMPOSE		= docker-compose -f srcs/docker-compose.yml

$(NAME)		: build up

all				: re

up				:
	$(COMPOSE) up -d

build			:
	$(COMPOSE) build --no-cache

down			:
	$(COMPOSE) down

config		:
	$(COMPOSE) config

ps				:
	$(COMPOSE) ps

clean			: down
	$(COMPOSE) down -v --rmi all

fclean		: clean
	/bin/rm -rf /home/abel-haj/data/wp_database/* 2> /dev/null
	/bin/rm -rf /home/abel-haj/data/wp_files/* 2> /dev/null

re				: fclean build up
