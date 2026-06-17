#!/bin/sh
set -e

python -m pip install -r requirements.txt
python manage.py collectstatic --noinput
python manage.py migrate

python manage.py shell <<EOF
import os
from django.contrib.auth import get_user_model

User = get_user_model()
email = os.environ.get('DJANGO_SUPERUSER_EMAIL', 'admin@example.com')
password = os.environ.get('DJANGO_SUPERUSER_PASSWORD')
fullname = os.environ.get('DJANGO_SUPERUSER_FULLNAME', 'Admin User')

if password and not User.objects.filter(email=email).exists():
    User.objects.create_superuser(
        email=email,
        fullname=fullname,
        password=password
    )
    print("Superuser created")
elif password:
    print("Superuser already exists")
else:
    print("DJANGO_SUPERUSER_PASSWORD is not set; skipping superuser creation")


guest_email = os.environ.get('DJANGO_GUEST_EMAIL')
guest_password = os.environ.get('DJANGO_GUEST_PASSWORD')
guest_fullname = os.environ.get('DJANGO_GUEST_FULLNAME', 'Guest User')

if guest_email and guest_password and not User.objects.filter(email=guest_email).exists():
    User.objects.create_user(
        email=guest_email,
        fullname=guest_fullname,
        password=guest_password
    )
    print("Guest user created")
elif guest_email and guest_password:
    print("Guest user already exists")
else:
    print("Guest credentials are not fully set; skipping guest user creation")
EOF
