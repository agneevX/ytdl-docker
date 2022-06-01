FROM alpine:3.15

RUN apk add --no-cache mpv alsa-utils

ENTRYPOINT ["/usr/bin/mpv"]
