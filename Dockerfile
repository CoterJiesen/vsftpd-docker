FROM alpine:3.3
MAINTAINER waliworld

# installs packages  and rm's the package cache
RUN apk upgrade --update --available && \
    apk add bash \
            nano \
            git \
            vsftpd \
    && rm -rf /var/cache/apk/*

ADD vsftpd.conf /etc/vsftpd/

EXPOSE 20 21

VOLUME /tank1

#ENTRYPOINT ["vsftpd"]
