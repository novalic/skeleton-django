#!/bin/sh
/usr/bin/envsubst '${UWSGI_WORKERS}${UWSGI_THREADS}' < /etc/uwsgi.ini.template > /etc/uwsgi.ini

/env/bin/python /app/manage.py migrate --noinput

/env/bin/uwsgi --ini /etc/uwsgi.ini
