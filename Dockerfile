FROM nginx:1.20-alpine
RUN apk add busybox util-linux bash
LABEL maintainer="rbalashevich@gmail.com"
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /var/www/htdocs
RUN touch /var/run/nginx.pid && \
  chown -R nginx:nginx /var/run/nginx.pid && \
  chown -R nginx:nginx /var/cache/nginx && \
  chown -R nginx:nginx /var/www/htdocs
COPY ./index.html /var/www/htdocs
USER nginx
VOLUME /var/www
VOLUME /docker-entrypoint.d/
EXPOSE 8080






