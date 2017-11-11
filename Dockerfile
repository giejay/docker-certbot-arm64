FROM aarch64/alpine:3.5
MAINTAINER Pierre Prinetti <me@qrawl.net>

RUN apk add --no-cache bash certbot

COPY ./run.sh /run.sh

RUN chmod +x /run.sh

CMD ["/run.sh"]
