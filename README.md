# skeleton-django

Skeleton of a backend Django App.

## Organization

```shell
apps/
    app_one/
        apputils/
          misc.py
          <some utils filename>.py
          ...
        migrations/
          ...
        models/
          <my model>.py
          <another model>.py
          ...
        serializers/
          <my serializer>.py
          <anotoher serializer>.py
          ...
        tests/
          <my test file>.py
          <anotoher test file>.py
          ...
        views/
          <my view>.py
          <anotoher view>.py
          ...
        urls.py
project_name/
    settings/
        default.py
        development.py
        production.py
        staging.py
utils/
```

- Each package is located inside the apps package.
- Each model, serializer, view is defined in a separate .py file.

## Docker

The app is intended to be run (but not exclusively) in a Docker container.
There is a `docker-compose` and a `Makefile` to execute several useful actions.

e.g. (Initialization):

Clone the repo and execute:

```shell
$ make test
```

The docker-compose file will build an image and setup a database, then run the dummy tests. Now you can start building your app!
