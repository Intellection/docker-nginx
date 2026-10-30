FROM nginx:1.31.8-trixie

ENV NGINX_ENTRYPOINT_QUIET_LOGS=1

# Remove dynamic modules and tools that upstream installs but we don't use
RUN apt-get purge -y --auto-remove \
      curl \
      nginx-module-acme \
      nginx-module-geoip \
      nginx-module-image-filter \
      nginx-module-njs \
      nginx-module-xslt && \
    rm -rf /var/lib/apt/lists/*

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
