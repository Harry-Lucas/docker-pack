#!/bin/bash

#命令只执行最后一个,所以用 &&

python manage.py collectstatic --noinput &&
python manage.py migrate &&
gunicorn django_test.wsgi:application -c gunicorn.conf
tail -f /dev/null
