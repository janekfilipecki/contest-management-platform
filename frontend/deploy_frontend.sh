#!/bin/sh

ssh -tt azureuser@20.215.192.49 <<EOF
  cd /home/azureuser/contest-platform/frontend
  git checkout fb-cicd
  git pull
  pm2 restart pzsp2-frontend
  exit
EOF
