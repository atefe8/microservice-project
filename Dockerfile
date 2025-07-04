FROM php:8.4-fpm


WORKDIR /var/www


RUN apt-get update && apt-get install -y \
   libpng-dev \
   libjpeg-dev \
   libfreetype6-dev \
   zip \
   unzip \
   && docker-php-ext-install pdo_mysql gd


RUN docker-php-ext-enable pdo_mysql


RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer


CMD ["php-fpm"]
