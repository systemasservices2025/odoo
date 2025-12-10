FROM odoo:19.0

COPY odoo.conf /etc/odoo/odoo.conf
COPY ./addons /mnt/extra-addons

EXPOSE 8069

CMD odoo \
    --db_host=$DB_HOST \
    --db_port=$PORT \
    --db_user=$DB_USER \
    --db_password=$DB_PASSWORD \
    --admin_passwd=$ADMIN_PASSWD \
    -c /etc/odoo/odoo.conf
