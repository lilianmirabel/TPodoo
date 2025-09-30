FROM odoo:17

# installer dépendances système si besoin
USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential git \
 && rm -rf /var/lib/apt/lists/*

# installer dépendances python si nécessaires (ex: psycopg2-binary déjà inclus normalement)
# RUN pip3 install some-python-package

# copier des modules si tu veux les baked-in (optionnel)
# COPY ./addons /mnt/extra-addons

USER odoo
