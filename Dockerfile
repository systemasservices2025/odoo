FROM odoo:19.0

COPY odoo.conf /etc/odoo/odoo.conf
COPY ./addons /mnt/extra-addons

EXPOSE 8069

# Comando de inicio (sin --admin_passwd ni --db_name)
CMD odoo \
    --db_host=$DB_HOST \
    --db_port=$PORT \
    --db_user=$DB_USER \
    --db_password=$DB_PASSWORD \
    -c /etc/odoo/odoo.conf
