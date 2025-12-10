FROM odoo:19.0

COPY odoo.conf /etc/odoo/odoo.conf
COPY ./addons /mnt/extra-addons

EXPOSE 8069

CMD odoo \
    --db_host=$DB_HOST \
    --db_port=5432 \
    --db_user=$DB_USER \
    --db_password=$DB_PASSWORD \
    -c /etc/odoo/odoo.conf \
    -i base
