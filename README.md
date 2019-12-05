# Seligo UniApp Nginx image

Nginx image for Seligo UniApp

Env variables:
 - TYPE=http (optional, can be `http` or `https`, default is `http`)
 - APP_CONTAINER=php_container (required, php container name)
 - APP_URL=example.com (required only when publishing app)
 - APP_ENTRYPOINT=app_dev (optional, can be `app` or `app_dev`, application entrypoint filename)
