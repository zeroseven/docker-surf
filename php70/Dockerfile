FROM php:7.0-alpine

# Inspired by official "composer" docker image
RUN apk --no-cache add curl git subversion openssh openssl mercurial tini bash zlib-dev $PHPIZE_DEPS

RUN echo "memory_limit=-1" > "$PHP_INI_DIR/conf.d/memory-limit.ini" \
 && echo "date.timezone=${PHP_TIMEZONE:-UTC}" > "$PHP_INI_DIR/conf.d/date_timezone.ini"

# Install some php modules so we can use this image to run functional tests
RUN docker-php-ext-install zip mysqli \
    && pecl install xdebug \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > "$PHP_INI_DIR/conf.d/xdebug.ini"

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /tmp
WORKDIR /app

# Inspired by "t3easy/surf:gulp" docker image
RUN apk --no-cache add rsync 'nodejs<7.0.0'

# install yarn
RUN curl -o- -L https://yarnpkg.com/install.sh | bash
ENV PATH "/root/.yarn/bin:/root/.config/yarn/global/node_modules/.bin:$PATH"

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

# Install typo3/surf
# Install hirak/prestissimo for composer performance
RUN composer global require typo3/surf:^2@dev hirak/prestissimo \
    && composer clear-cache

CMD ["/bin/ash"]