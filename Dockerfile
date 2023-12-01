FROM certbot/certbot:v2.7.4

RUN apk update && apk add --no-cache docker-cli bash
ADD entrypoint.sh .

ENTRYPOINT [ "./entrypoint.sh" ]
