FROM alpine:latest

RUN apk update \
&& apk upgrade \
&& apk add --update bash dhcp shadow dumb-init

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]