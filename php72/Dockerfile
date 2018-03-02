FROM php:7.2-alpine

# Inspired by official "composer" docker image
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev

RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini" \
 && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"

# Install MySQLi so we can use this image to run functional tests
RUN docker-php-ext-install zip mysqli

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /tmp
WORKDIR /app

# Inspired by "t3easy/surf:gulp" docker image
RUN apk --no-cache add rsync 'nodejs<7.0.0' nodejs-npm yarn

# install gulp-cli as global module (npm and yarn)
RUN npm install gulp-cli -g \
    && yarn global add gulp-cli \
    && touch ~/.dummy \
    && npm cache clean \
    && yarn cache clean \
    && rm -f ~/.dummy

ENV PATH "/tmp/vendor/bin:$PATH"

# Install composer https://getcomposer.org/download/
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php  --no-ansi --install-dir=/usr/bin --filename=composer \
    && php -r "unlink('composer-setup.php');"

ENV PATH "/tmp/vendor/bin:$PATH"

# Install surf
RUN composer global require typo3/surf:^2@dev \
    && composer clear-cache

CMD ["/bin/ash"]