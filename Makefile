SHELL := /bin/bash

all: clean build test

build:
	docker-compose build

up:
	docker-compose up -d

test: up
	docker-compose exec skeleton-django-service /env/bin/python /app/manage.py test --noinput

migrate: up
	docker-compose exec skeleton-django-service /env/bin/python /app/manage.py migrate

makemigrations: up
	docker-compose exec skeleton-django-service /env/bin/python /app/manage.py makemigrations

shell: up
	docker-compose exec skeleton-django-service /env/bin/python /app/manage.py shell

down:
	docker-compose down

clean:
	docker-compose down --volumes

.PHONY: build up test clean
