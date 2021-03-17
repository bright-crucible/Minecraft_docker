FROM nginx:mainline-alpine
ENV TZ America/Los_Angeles
RUN apk --no-cache add shadow \
    && usermod -u 1000 nginx \
    && groupmod -g 1000 nginx \
    && touch /var/run/nginx.pid \
    && chown nginx:nginx /var/run/nginx.pid \
    && chown -R nginx:nginx /var/cache/nginx \
    && cat /etc/nginx/nginx.conf \
    && sed -i '2d' /etc/nginx/nginx.conf
COPY htpasswd /var/www/.htpasswd
COPY nginx.conf /etc/nginx/conf.d/default.conf
USER nginx
