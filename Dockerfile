FROM alpine:3.6

RUN apk add --no-cache varnish

COPY start.sh /usr/local/bin/docker-app-start

COPY conf/default.vcl /etc/varnish/default.vcl

RUN chmod +x /usr/local/bin/docker-app-start

CMD ["docker-app-start"]
