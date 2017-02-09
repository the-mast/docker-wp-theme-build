FROM alpine:3.5
MAINTAINER the-mast@thoughtworks.com

RUN apk add --update --no-cache gcc g++ make git curl 
RUN apk add --update --no-cache python nodejs 
RUN apk add --update --no-cache php5 php5-curl php5-openssl php5-json php5-phar php5-dom
RUN npm install -g gulp-cli bower node-sass
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

CMD ["/bin/sh"]

ENTRYPOINT ["/bin/sh", "-c"]
