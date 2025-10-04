FROM odoo:17

USER root
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Cloner le module directement dans l'image
RUN mkdir -p /mnt/extra-addons && \
    git clone https://github.com/nima-farnoodian/odoo-carpooling.git /mnt/extra-addons/odoo-carpooling

USER odoo
