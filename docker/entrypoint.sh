#!/bin/sh

/env/bin/python /app/manage.py migrate --noinput

/env/bin/uwsgi --ini /etc/uwsgi.ini
