FROM certbot/certbot
ENV TZ America/Los_Angeles
COPY entrypoint.sh /usr/local/bin
RUN apk add --no-cache tzdata \
    && addgroup -S certbot -g 1000 \
    && adduser -s /sbin/nologin -u 1000 -S certbot -G certbot \
    && mkdir -p /var/log/letsencrypt \
    && mkdir -p /var/lib/letsencrypt \
    && chown -R certbot:certbot /var/lib/letsencrypt \
    && chown -R certbot:certbot /var/log/letsencrypt
USER certbot
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
