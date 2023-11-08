#!/bin/bash

ssh root@54.90.100.170<<EOF
 cd /DemoApp
 git pull
 docker-compose -f docker-compose.prod.yml up --build -d
EOF
