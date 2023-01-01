FROM mariadb
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nano
COPY ./mysql /docker-entrypoint-initdb.d
EXPOSE 80