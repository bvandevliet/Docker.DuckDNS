FROM alpine:latest

RUN apk add -U --no-cache \
    tzdata \
    curl

COPY root/ /

RUN chmod +x /app/duck.sh

ENTRYPOINT ["/bin/sh", "-c" , "/app/duck.sh && crond -f"]