FROM alpine:3.15

RUN apk add --no-cache python3 py3-pip mpv alsa-utils

RUN python3 -m pip install --no-cache-dir pyxattr && \
    python3 -m pip install --no-cache-dir --force-reinstall yt-dlp && \
    yt-dlp --version

COPY init /init
ENTRYPOINT ["/init"]