#/bin/bash

# rm -rf ./instance

mkdir -p ./instance/etc/nginx ./instance/usr/share/nginx/html ./instance/log

docker-compose up -d

docker cp `docker ps | grep "nginx" | awk '{print $1}'`:/etc/nginx ./instance/etc
docker cp `docker ps | grep "nginx" | awk '{print $1}'`:/usr/share/nginx/html/ ./instance/usr/share/nginx/
