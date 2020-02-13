FROM nginx:1.17.7-alpine

# Fix permission issue
RUN chmod -R 777 /var/log/nginx /var/cache/nginx/ /var/run/ && \
    chmod 644 /etc/nginx/*

STOPSIGNAL SIGQUIT

USER nginx:nginx
