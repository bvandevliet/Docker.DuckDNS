FROM alpine:latest

RUN apk add --no-cache curl

COPY root/ /

RUN chmod +x /app/duck.sh

ENTRYPOINT ["/bin/sh", "-c" , "/app/duck.sh && crond -f"]