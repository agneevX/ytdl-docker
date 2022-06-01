FROM alpine:3.15

RUN apk add --no-cache python3 py3-pip mpv alsa-utils

RUN python3 -m pip install --no-cache-dir pyxattr && \
    python3 -m pip install --no-cache-dir --force-reinstall yt-dlp && \
    mkdir -p /config && \
    yt-dlp --version > /IMAGE_VERSION

# # Copy init script, set workdir & entrypoint
COPY init /init
WORKDIR /workdir
ENTRYPOINT ["/usr/bin/mpv"]
