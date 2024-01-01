#!/bin/sh

ssh -tt azureuser@20.215.200.116 <<EOF
  cd /home/azureuser/contest-platform/backend
  git checkout fb-cicd
  pkill -f gunicorn
  pipenv run gunicorn -c gunicorn_config.py backend.wsgi --daemon
  exit
EOF
