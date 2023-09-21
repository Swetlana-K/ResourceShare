dev-start:
	python manage.py runserver --settings=config.settings.dev

dev-install:
	pip install -r requirements/dev.txt

base-install:
	pip install -r requirements/base.txt

dev-migrate:
	python manage.py migrate --settings=config.settings.dev

dev-makemigrations:
	python manage.py makemigrations --settings=config.settings.dev

dev-showmigrations:
	python manage.py showmigrations --settings=config.settings.dev

dev-sqlmigrate:
	python manage.py sqlmigrate $(app) $(m) --settings=config.settings.dev

dev-shell:
	python manage.py shell --settings=config.settings.dev

dev-rollback:
	python manage.py migrate $(app) $(m) --settings=config.settings.dev

# dev-test:
#	python manage.py test --settings=config.settings.dev

v = 1
dev-test:
	python manage.py test -v $(v) --settings=config.settings.dev ## verboose 

# pip list --format=freeze > requirements.txt