#!/usr/bin/env bash

wait-for-it -t 30 -h postgres -p 5432

# PostgreSQL opens its port even if it's not really to ready
# to accept connections
sleep 5

python manage.py migrate --no-input

python manage.py collectstatic --noinput

chown -R $UWSGI_USER:$UWSGI_GROUP media

$(command -v uwsgi) --ini /etc/uwsgi.ini
