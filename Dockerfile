FROM python:3.11.2-alpine3.17

WORKDIR /app

COPY . /app

RUN apk add --no-cache \
        mariadb-client \
        py3-mysqlclient \
        mysql-client \
        libffi \
        gettext \
        gettext-libs \
        jpeg-dev \
        zlib-dev \
    && apk add --no-cache --virtual build-requirements \
        cargo \
        freetype-dev \
        gcc \
        libffi-dev \
        linux-headers \
        mariadb-dev \
        musl-dev \
        rust \
    && pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir virtualenv \
    && virtualenv /env \
    && /env/bin/pip install --no-cache-dir --upgrade \
        pip \
        uwsgi \
    && /env/bin/pip install -r /app/requirements.txt \
    && apk del build-requirements \
    && rm -rf /root/.cache

RUN adduser -D -H nicolas \
    && mkdir -p /app/log \
    && touch /app/log/skeletondjango.log \
    && chown -R nicolas:nicolas /app \
    && chmod +x /app/docker/entrypoint.sh


COPY docker/uwsgi.ini.template /etc/uwsgi.ini.template

EXPOSE 8091

CMD ["/app/docker/entrypoint.sh"]
