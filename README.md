# skeleton-django

Skeleton of a backend Django App.

## Organization

```shell
apps/
    app_one/
        apputils/
        migrations/
        models/
        serializers/
        tests/
        views/
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
