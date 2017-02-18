FROM lochnair/base:alpine
MAINTAINER Lochnair <me@lochnair.net>

LABEL Description="Docker image for MariaDB"

RUN \
apk add \
	--no-cache \
	--update \
	mariadb \
	mariadb-client

COPY root/ /

VOLUME /config
VOLUME /data
VOLUME /logs