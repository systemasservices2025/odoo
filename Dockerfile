# Usa la imagen oficial de Odoo (ajusta la versión según tu branch)
FROM odoo:19.0

# Copiar configuración personalizada (solo rutas y opciones no sensibles)
COPY odoo.conf /etc/odoo/odoo.conf
COPY ./addons /mnt/extra-addons

# Exponer el puerto de Odoo
EXPOSE 8069

# Comando de inicio con variables de entorno expandidas por Render
CMD odoo \
    --db_host=$DB_HOST \
    --db_port=5432 \
    --db_user=$DB_USER \
    --db_password=$DB_PASSWORD \
    --db_name=$DB_NAME \
    --admin_passwd=$ADMIN_PASSWD \
    -c /etc/odoo/odoo.conf
