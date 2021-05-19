FROM matomo:4.3.0

ENV USERMAP_UID 33

COPY docker-entrypoint.sh /entrypoint.sh
COPY config.ini.php /usr/src/matomo/config/
COPY DBIP-City.mmdb /usr/src/matomo/misc/
COPY security.conf /etc/apache2/conf-available/

RUN chmod 755 /entrypoint.sh

RUN sed -i -e 's/:80/:9000/g' /etc/apache2/sites-enabled/000-default.conf ; \
    sed -i -e 's/Listen 80/Listen 9000/g' /etc/apache2/ports.conf ; \
    /usr/sbin/a2dismod status ; \
    rm -vf /etc/apache2/mods-available/status.conf /etc/apache2/mods-enabled/status.conf

USER ${USERMAP_UID}

ENTRYPOINT ["/entrypoint.sh"]

CMD ["apache2-foreground"]
