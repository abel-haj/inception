FROM    debian:buster

RUN     apt-get update -y
RUN     apt-get install -y mariadb-server

COPY    ./tools/configure_users.sh /tmp/
RUN     /bin/bash /tmp/configure_users.sh

# DEBUG
RUN     apt-get install -y vim
RUN     echo 'alias status="service --status-all"' >> /home/.bashrc
RUN     /bin/bash -c "source /home/.bashrc"
# DEBUG

ENTRYPOINT ["mysqld_safe"]
