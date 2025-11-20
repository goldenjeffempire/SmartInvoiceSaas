#!/usr/bin/env bash

set -o errexit

apt-get update
apt-get install -y libpango-1.0-0 libpangocairo-1.0-0 libgdk-pixbuf2.0-0 libffi-dev shared-mime-info libcairo2 libpangoft2-1.0-0

pip install -r requirements.txt

python manage.py collectstatic --no-input
python manage.py migrate
