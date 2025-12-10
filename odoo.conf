# Imagen base oficial de Odoo (puedes ajustar la versión)
FROM odoo:19.0

# Variables de entorno (Render las inyecta en runtime)
ENV DB_HOST=${DB_HOST} \
    DB_PORT=5432 \
    DB_USER=${DB_USER} \
    DB_PASSWORD=${DB_PASSWORD} \
    DB_NAME=${DB_NAME} \
    ADMIN_PASSWD=${ADMIN_PASSWD}

# Copiar configuración personalizada
COPY odoo.conf /etc/odoo/odoo.conf

# Copiar módulos adicionales si los tienes en ./addons
COPY ./addons /mnt/extra-addons

# Instalar dependencias adicionales si las necesitas
COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt

# Exponer el puerto de Odoo
EXPOSE 8069

# Comando de inicio
CMD ["odoo", "-c", "/etc/odoo/odoo.conf"]
