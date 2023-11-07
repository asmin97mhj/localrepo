#!/bin/bash

ssh root@192.168.162.22 <<EOF
 cd /DemoApp
 git pull
 docker-compose -f docker-compose.prod.yml up --build -d
EOF
