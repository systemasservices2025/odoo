FROM odoo:19.0

# Copiar configuración personalizada
COPY odoo.conf /etc/odoo/odoo.conf
COPY ./addons /mnt/extra-addons

EXPOSE 8069

# Comando de inicio (sin --db_name)
CMD odoo \
    --db_host=$DB_HOST \
    --db_port=5432 \
    --db_user=$DB_USER \
    --db_password=$DB_PASSWORD \
    --admin_passwd=$ADMIN_PASSWD \
    -c /etc/odoo/odoo.conf
