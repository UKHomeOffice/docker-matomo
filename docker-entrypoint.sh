#!/bin/sh
set -e

if [ ! -e matomo.php ]; then
        cp -ax /usr/src/matomo/* .
     if [ "$(id -u)" -eq 0 ]; then
	      chown -R www-data .
     fi
fi

exec "$@"
