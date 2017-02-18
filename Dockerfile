FROM lochnair/base:alpine
MAINTAINER Lochnair <me@lochnair.net>

LABEL Description="Docker image for MariaDB"

ENV DB_ROOT_PASS "You_R3lly_Should_Ch4ng3_This"

RUN \
apk add \
	--no-cache \
	--update \
	mariadb \
	mariadb-client

COPY root/ /

VOLUME /config
VOLUME /data