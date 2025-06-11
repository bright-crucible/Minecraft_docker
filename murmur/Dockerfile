FROM alpine:latest
ENV TZ America/Los_Angeles
RUN apk add --no-cache \
        mumble-server \
        tzdata \
    && mkdir -p \
        /etc/letsencrypt \
        /etc/murmur \
    && addgroup -S mumble -g 1000 \
    && adduser -s /sbin/nologin -u 1000 -S mumble -G mumble \
    && chown -R mumble:mumble \
        /etc/letsencrypt
COPY murmur.ini /etc/murmur
COPY lsb_release /usr/local/bin
WORKDIR /home/mumble
USER mumble
CMD ["/usr/bin/mumble-server", "-fg", "-ini", "/etc/murmur/murmur.ini"]
