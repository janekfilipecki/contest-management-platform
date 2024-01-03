#!/bin/sh

ssh -tt azureuser@20.215.200.116 <<EOF
  cd /home/azureuser/contest-platform/backend
  git checkout fb-cicd
  git pull
  pipenv run python3 manage.py makemigrations
  pipenv run python3 manage.py migrate 
  exit
EOF
