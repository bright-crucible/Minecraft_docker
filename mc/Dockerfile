#FROM debian:12
#ENV TZ=America/Los_Angeles
#RUN ln -snf /usr/share/zoneinfo/America/Los_Angeles /etc/localtime \
#    && apt-get update \
#    && apt-get -y install \
#        screen \
#        rsync \
#        tzdata \
#        xz-utils \
#        openjdk-17-jdk \
#    && rm -rf /var/lib/apt/lists/* \
#    && groupadd -g 1000 mc \
#    && useradd -u 1000 -g 1000 -d /home/mc -m mc \
#    && mkdir -p /minecraft \
#    && chown -R mc:mc /minecraft
#WORKDIR /minecraft
#COPY launch_mc.sh /usr/local/bin
#USER mc
#CMD ["/usr/local/bin/launch_mc.sh"]
FROM alpine:latest
ENV TZ America/Los_Angeles
RUN apk add --no-cache \
        screen \
        rsync \
        bash \
        xz \
        openjdk21-jdk \
        eudev \
        tzdata \
    && addgroup -S mc -g 1000 \
    && adduser -s /sbin/nologin -u 1000 -S mc -G mc \
    && mkdir -p /minecraft \
    && chown -R mc:mc /minecraft
WORKDIR /minecraft
COPY launch_mc.sh /usr/local/bin
USER mc
CMD ["/usr/local/bin/launch_mc.sh"]
