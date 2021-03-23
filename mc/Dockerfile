FROM alpine:latest as mc
ENV TZ America/Los_Angeles
RUN apk add --no-cache \
        openjdk11-jre-headless \
        tzdata \
        screen \
        rsync \
        xz \
    && mkdir -p /minecraft \
    && addgroup -S mc -g 1000 \
    && adduser -u 1000 -S mc -G mc \
    && chown -R mc:mc /minecraft
WORKDIR /minecraft
COPY launch_mc.sh /usr/local/bin
USER mc
CMD ["/usr/local/bin/launch_mc.sh"]
