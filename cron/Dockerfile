FROM alpine:latest
MAINTAINER Justin Honold "astrostl@github"

RUN apk --update add logrotate &&\
    echo "0 * * * *  /usr/sbin/logrotate /etc/logrotate.d/docker-logrotate.conf" >> /etc/crontabs/root

COPY src/ /

VOLUME ["/etc/logrotate.d", "/etc/crontabs"]

CMD ["crond", "-f"]
