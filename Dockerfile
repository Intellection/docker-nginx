FROM nginx:1.17.7-alpine

# Override default configuration files
COPY ./config/nginx.conf /etc/nginx/nginx.conf
COPY ./config/default.conf /etc/nginx/conf.d/default.conf

# Fix permission issue
RUN chown -R nginx:nginx /var/cache/nginx && \
    chmod -R g+w /var/cache/nginx

STOPSIGNAL SIGQUIT

USER nginx:nginx
