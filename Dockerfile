FROM nginx:latest
MAINTAINER Stepan Yudin <stepan.sib@gmail.com>

ENV TYPE=http
ENV APP_CONTAINER=php_container
ENV APP_URL=example.com
ENV APP_ENTRYPOINT=app_dev
ENV APP_FRAMEWORK=sf

ADD sf-http.conf /sf-http.conf
ADD sf-https.conf /sf-https.conf
ADD yii-http.conf /yii-http.conf
ADD yii-https.conf /yii-https.conf
ADD nginx.conf /etc/nginx/

RUN usermod -u 1000 www-data

COPY entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]