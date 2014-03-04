from os import environ
from os.path import dirname, join
from sys import path as PATH

# Installation directory is the parent directory of this file
INSTALL_DIR = dirname(dirname(__file__))
if INSTALL_DIR not in PATH:
    PATH.insert(0, INSTALL_DIR)

environ.setdefault('DJANGO_LOG_TO_FILE', 'TRUE')
environ.setdefault('USER', 'www-data')
environ['DJANGO_SETTINGS_MODULE'] = 'settings'
environ.setdefault('DJANGO_DATABASE_ENGINE', 'postgresql_psycopg2')
environ.setdefault('DJANGO_DATABASE_HOST', 'localhost')
environ.setdefault('DJANGO_DATABASE_NAME', 'kconfig')
environ.setdefault('DJANGO_DATABASE_USER', 'kconfig')
environ.setdefault('DJANGO_DATABASE_PASSWORD', 'kconfig')

from django.core.handlers import wsgi
application = wsgi.WSGIHandler()
