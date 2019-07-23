#!/bin/sh
set -e

if [ ! -e matomo.php ]; then
        cp -ax /usr/src/matomo/* .
     if [ "$(id -u)" -eq 0 ]; then
	      chown -R www-data .
     fi
fi

echo "== Starting environment variable substitution =="
for file in /var/www/html/config/config.ini.php
do
  echo "== Environment variable substitution for $file =="
  sed -i 's,{{.MATOMO_MYSQL_HOST}},'${MATOMO_MYSQL_HOST}',g' $file
  sed -i 's,{{.MATOMO_MYSQL_PORT}},'${MATOMO_MYSQL_PORT}',g' $file
  sed -i 's,{{.MATOMO_MYSQL_USER}},'${MATOMO_MYSQL_USER}',g' $file
  sed -i 's,{{.MATOMO_MYSQL_PASSWORD}},'${MATOMO_MYSQL_PASSWORD}',g' $file
  sed -i 's,{{.MATOMO_MYSQL_DBNAME}},'${MATOMO_MYSQL_DBNAME}',g' $file
  sed -i 's,{{.MATOMO_MYSQL_TBL_PREFIX}},'${MATOMO_MYSQL_TBL_PREFIX}',g' $file
  sed -i 's,{{.HOSTNAME}},'${HOSTNAME}',g' $file
  sed -i 's,{{.MATOMO_SALT}},'${MATOMO_SALT}',g' $file
done
echo "== Finished environment variable substitution =="

exec "$@"
