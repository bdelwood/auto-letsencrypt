FROM certbot/certbot:v3.2.0

RUN apk update && apk add --no-cache docker-cli bash
ADD entrypoint.sh .

ENTRYPOINT [ "./entrypoint.sh" ]
