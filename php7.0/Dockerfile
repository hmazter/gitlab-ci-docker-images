FROM php:7.0-cli

# install required OS packages
RUN apt-get -yqq update && apt-get -yqq install git wget zip

# install and activate xdebug
RUN yes | pecl install xdebug \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini

# install required php extensions
RUN docker-php-ext-install bcmath

# download composer and set executable
RUN wget -q https://getcomposer.org/composer.phar \
    && mv composer.phar /usr/local/bin/composer \
    && chmod +x /usr/local/bin/composer

