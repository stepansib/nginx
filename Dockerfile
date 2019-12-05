FROM nginx:latest
MAINTAINER Stepan Yudin <stepan.sib@gmail.com>

ENV TYPE=http
ENV APP_CONTAINER=php_container
ENV APP_URL=example.com
ENV APP_ENTRYPOINT=app_dev

ADD default-http.conf /default-http.conf
ADD default-https.conf /default-https.conf
ADD nginx.conf /etc/nginx/

COPY entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]