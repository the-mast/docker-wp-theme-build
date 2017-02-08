FROM alpine:3.5
MAINTAINER the-mast@thoughtworks.com

RUN apk add --no-cache nodejs git curl php5 php5-curl php5-openssl php5-json php5-phar php5-dom
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

CMD ["/bin/sh"]

ENTRYPOINT ["/bin/sh", "-c"]
