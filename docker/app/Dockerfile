FROM php:7.2.2-fpm

# Install extensions
RUN apt-get clean all

RUN apt-get update && apt-get install -y libmcrypt-dev \
    mysql-client libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && apt-get install -y openssl zip unzip git \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install pdo_mysql

RUN  pecl install grpc

ADD ./php.ini /usr/local/etc/php/conf.d

RUN apt-get install -y nano


# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install nodejs and yarn
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install nodejs -y
RUN npm install -g yarn

# Add user for laravel application
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

# Copy existing application directory contents
COPY . /var/www/html

# Copy existing application directory permissions
COPY --chown=www:www . /var/www/html

# Change current user to www
USER www

RUN chown -R 775  /var/www/html
RUN chown -R $USER:$USER /var/www/html

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]

