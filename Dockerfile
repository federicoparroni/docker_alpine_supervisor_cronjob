FROM node:16.13-alpine3.12
RUN apk update && apk add --no-cache tzdata supervisor
COPY supervisord.conf /etc/supervisord.conf

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
