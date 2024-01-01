#!/bin/sh

ssh -tt azureuser@20.215.200.116 <<EOF
  cd /home/azureuser/contest-platform/backend
  git checkout fb-cicd
  git pull
  nohup pipenv run python3 manage.py runserver 0.0.0.0:8000 &
  exit
EOF
