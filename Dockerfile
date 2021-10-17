FROM nginx:stable
LABEL maintainer="rbalashevich@gmail.com"
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /var/www/htdocs
RUN touch /var/run/nginx.pid && \
  chown -R www-data:www-data /var/run/nginx.pid && \
  chown -R www-data:www-data /var/cache/nginx && \
  chown -R www-data:www-data /var/www/htdocs
COPY ./index.html /var/www/htdocs
USER www-data
VOLUME /var/www
VOLUME /docker-entrypoint.d/






