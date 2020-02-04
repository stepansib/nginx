# Nginx

Nginx docker container

Env variables:
 - TYPE=http (optional, can be `http` or `https`, default is `http`)
 - APP_CONTAINER=php_container (required, php container name)
 - APP_URL=example.com (required only when publishing app)
 - APP_ENTRYPOINT=app_dev (optional, can be `app` or `app_dev`, application entrypoint filename)
 - APP_FRAMEWORK=sf (optional, can be `sf` or `yii`)
 - APP_PUBLIC_DIR=web (document root)
