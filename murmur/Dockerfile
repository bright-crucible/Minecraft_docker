#FROM alpine:latest
#ENV MURMUR_VER 1.2.19
#ENV TZ America/Los_Angeles
#RUN apk add --no-cache \
#        tzdata \
#        wget \
#        tar \
#        bzip2 \
#        ca-certificates \
#    && mkdir -p \
#        /etc/letsencrypt \
#        /opt/mumble \
#        /etc/murmur \
#    && wget -O- https://github.com/mumble-voip/mumble/releases/download/${MURMUR_VER}/murmur-static_x86-${MURMUR_VER}.tar.bz2 | tar -xjv --strip-components=1 -C /opt/mumble \
#    && addgroup -S mumble -g 1000 \
#    && adduser -s /sbin/nologin -u 1000 -S mumble -G mumble \
#    && chown -R mumble:mumble \
#        /etc/letsencrypt \
#        /opt/mumble
#COPY murmur.ini /etc/murmur
#COPY lsb_release /usr/local/bin
#WORKDIR /home/mumble
#USER mumble
#CMD ["/opt/mumble/murmur.x86", "-fg", "-ini", "/etc/murmur/murmur.ini"]

#FROM alpine:3.9
#ENV TZ America/Los_Angeles
#RUN apk add --no-cache \
#        murmur \
#        icu-libs \
#        tzdata \
#    && mkdir -p \
#        /etc/letsencrypt \
#        /etc/murmur \
#    && addgroup -S mumble -g 1000 \
#    && adduser -s /sbin/nologin -u 1000 -S mumble -G mumble \
#    && chown -R mumble:mumble \
#        /etc/letsencrypt
#COPY murmur.ini /etc/murmur
#COPY lsb_release /usr/local/bin
#WORKDIR /home/mumble
#USER mumble
#CMD ["/usr/bin/murmurd", "-fg", "-ini", "/etc/murmur/murmur.ini"]

FROM alpine:latest
ENV TZ America/Los_Angeles
RUN apk add --no-cache \
        murmur \
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
CMD ["/usr/bin/murmurd", "-fg", "-ini", "/etc/murmur/murmur.ini"]
