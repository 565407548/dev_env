#/bin/bash

# zookeeper
mkdir -p ./zookeeper/instance/zoo1/data ./zookeeper/instance/zoo1/datalog 
mkdir -p ./zookeeper/instance/zoo2/data ./zookeeper/instance/zoo2/datalog
mkdir -p ./zookeeper/instance/zoo3/data ./zookeeper/instance/zoo3/datalog

# mysql
# sudo rm -rf /docker/mysql
mkdir -p ./mysql/instance/data ./mysql/instance/conf ./mysql/instance/log ./mysql/instance/config ./mysql/instance/init
# sudo cp -r ./mysql/init/* /docker/mysql/init/
# sudo cp -r ./mysql/config/* /docker/mysql/config/

# elasticsearch
# The container runs Elasticsearch as user elasticsearch using uid:gid 1000:1000.
# Bind mounted host directories and files, such as custom_elasticsearch.yml above, need to be accessible by this user.
mkdir -p ./elasticsearch/instance/es1/data ./elasticsearch/instance/es1/data/nodes
mkdir -p ./elasticsearch/instance/es2/data ./elasticsearch/instance/es2/data/nodes
# sudo chmod -R g+rwx /docker/elasticsearch
# sudo chgrp 1000 /docker/elasticsearch

# nginx
mkdir -p ./nginx/instance/conf ./nginx/instance/html ./nginx/instance/logs
# sudo cp -r ./nginx /docker/nginx
# sudo chmod -R g+rwx /docker/nginx/html
















