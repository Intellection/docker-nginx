FROM nginx:1.17.7-alpine

# Fix permission issue
RUN chown -R nginx:nginx /var/cache/nginx && \
    chmod -R g+w /var/cache/nginx

STOPSIGNAL SIGQUIT

USER nginx:nginx
