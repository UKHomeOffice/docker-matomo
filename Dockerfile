FROM matomo:3.13.2

ENV USERMAP_UID 33

COPY docker-entrypoint.sh /entrypoint.sh
COPY config.ini.php /usr/src/matomo/config/
COPY DBIP-City.mmdb /usr/src/matomo/misc/

RUN mkdir -p /var/www/html/plugins/Funnels && \
    chown -R www-data:www-data /var/www/html/plugins/Funnels

RUN chmod 755 /entrypoint.sh

RUN sed -i -e 's/:80/:9000/g' /etc/apache2/sites-enabled/000-default.conf
RUN sed -i -e 's/Listen 80/Listen 9000/g' /etc/apache2/ports.conf

USER ${USERMAP_UID}

ENTRYPOINT ["/entrypoint.sh"]

CMD ["apache2-foreground"]
