FROM certbot/certbot:v2.7.3

RUN apk update && apk add --no-cache docker-cli bash
ADD entrypoint.sh .

ENTRYPOINT [ "./entrypoint.sh" ]
