FROM wordpress:5.3-fpm-alpine

LABEL authors="Albert Iblyaminov <ai@evercity.io>" \
      org.label-schema.vendor="Evercity Site" \
      org.label-schema.name="Evercity Site Image" \
      org.label-schema.description="Evercity Site" \
      org.label-schema.url="https://evercity.io" \
      org.label-schema.schema-version="1.0"

WORKDIR /var/www/html/wp-content/themes/
COPY ./themes /var/www/html/wp-content/themes/
COPY ./plugins /var/www/html/wp-content/plugins/

EXPOSE 8080
