#!/bin/sh
# vim:sw=4:ts=4:et

set -e

if [ -e /phpconf/php.ini ]; then
    cp /phpconf/php.ini ${PHP_INI_DIR}
fi

php-fpm -D

if [ -z "${NGINX_ENTRYPOINT_QUIET_LOGS:-}" ]; then
    exec 3>&1
else
    exec 3>/dev/null
fi

exec "$@"
