FROM matomo:3.10.0

ENV USERMAP_UID 33

COPY docker-entrypoint.sh /entrypoint.sh

RUN chmod 775 /entrypoint.sh

RUN sed -i -e 's/:80/:9000/g' /etc/apache2/sites-enabled/000-default.conf
RUN sed -i -e 's/Listen 80/Listen 9000/g' /etc/apache2/ports.conf

USER ${USERMAP_UID}

ENTRYPOINT ["/entrypoint.sh"]

CMD ["apache2-foreground"]
