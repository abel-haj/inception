COMPOSE		= docker-compose -f srcs/docker-compose.yml

$(NAME)		: all

all			: up

start		:
	$(COMPOSE) start

stop		:
	$(COMPOSE) stop

up			:
	$(COMPOSE) up -d

config		:
	$(COMPOSE) config

ps			:
	$(COMPOSE) ps

clean		:
	$(COMPOSE) down -v --rmi all

# # # #
fclean		: clean
	/bin/rm -rf /home/abel-haj/data/wp_database/* 2> /dev/null
	/bin/rm -rf /home/abel-haj/data/wp_files/* 2> /dev/null
