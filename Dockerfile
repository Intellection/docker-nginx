FROM nginx:1.19.5-alpine

ENV NGINX_ENTRYPOINT_QUIET_LOGS=1

# Override default configuration files
COPY ./config/nginx.conf /etc/nginx/nginx.conf
COPY ./config/default.conf /etc/nginx/conf.d/default.conf

# Fix permission issue
RUN touch /var/run/nginx.pid && \
    chown -R nginx:nginx /var/run/nginx.pid && \
    chown -R nginx:nginx /var/cache/nginx && \
    chown -R nginx:nginx /var/log/nginx && \
    chown -R nginx:nginx /etc/nginx/conf.d

STOPSIGNAL SIGQUIT

EXPOSE 8080

USER nginx:nginx
