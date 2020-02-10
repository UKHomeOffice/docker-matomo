FROM matomo:3.13.1

ENV USERMAP_UID 33

COPY docker-entrypoint.sh /entrypoint.sh
COPY config.ini.php /var/www/html/config/
COP DBIP-City.mmdb /var/www/html/misc/

RUN chmod 775 /entrypoint.sh

RUN sed -i -e 's/:80/:9000/g' /etc/apache2/sites-enabled/000-default.conf
RUN sed -i -e 's/Listen 80/Listen 9000/g' /etc/apache2/ports.conf

USER ${USERMAP_UID}

ENTRYPOINT ["/entrypoint.sh"]

CMD ["apache2-foreground"]
