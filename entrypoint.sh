#!/bin/bash

# Setup config depending on env vars provided 
cp /default-$TYPE.conf /etc/nginx/conf.d/default.conf
sed -i 's/fastcgi_pass php_container/fastcgi_pass '"$APP_CONTAINER"'/' /etc/nginx/conf.d/default.conf
sed -i 's/app_url/'"$APP_URL"'/' /etc/nginx/conf.d/default.conf
sed -i 's/app_entrypoint/'"$APP_ENTRYPOINT"'/' /etc/nginx/conf.d/default.conf

exec nginx -g 'daemon off;'