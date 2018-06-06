#!/bin/bash

# some commands must be executable
surf || exit 1
composer || exit 1
yarn || exit 1
gulp || exit 1

# some PHP extensions must be loaded
echo 'search gd' && php -i | grep '^gd$' || exit 1
echo 'search mysqli' && php -i | grep '^mysqli$' || exit 1
echo 'search xdebug' && php -i | grep '^xdebug$' || exit 1
