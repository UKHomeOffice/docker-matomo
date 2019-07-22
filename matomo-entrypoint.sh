#!/bin/sh
set -e

sed -i -e "s/{MATOMO_MYSQL_HOST}/{{.MATOMO_MYSQL_HOST}}/" /var/www/html/config/config.ini.php
sed -i -e "s/{MATOMO_MYSQL_PORT}/{{.MATOMO_MYSQL_PORT}}/" /var/www/html/config/config.ini.php
sed -i -e "s/{MATOMO_MYSQL_USER}/{{.MATOMO_MYSQL_USER}}/" /var/www/html/config/config.ini.php
sed -i -e "s/{MATOMO_MYSQL_PASSWORD}/{{.MATOMO_MYSQL_PASSWORD}}/" /var/www/html/config/config.ini.php
sed -i -e "s/{MATOMO_MYSQL_DBNAME}/{{.MATOMO_MYSQL_DBNAME}}/" /var/www/html/config/config.ini.php
sed -i -e "s/{HOSTNAME}/{{.HOSTNAME}}/" /var/www/html/config/config.ini.php
sed -i -e "s/{MATOMO_SALT}/{{.MATOMO_SALT}}/" /var/www/html/config/config.ini.php

exec "$@"
