FROM odoo:19.0

# Variables de entorno (Render las inyecta)
ENV DB_HOST=${DB_HOST} \
    DB_USER=${DB_USER} \
    DB_PASSWORD=${DB_PASSWORD} \
    DB_NAME=${DB_NAME} \
    ADMIN_PASSWD=${ADMIN_PASSWD}

COPY odoo.conf /etc/odoo/odoo.conf
COPY ./addons /mnt/extra-addons

EXPOSE 8069
CMD ["odoo", "-c", "/etc/odoo/odoo.conf"]
