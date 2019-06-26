#/bin/bash

# zookeeper
mkdir -p ./zookeeper/zoo1/data ./zookeeper/zoo1/datalog 
mkdir -p ./zookeeper/zoo2/data ./zookeeper/zoo2/datalog
mkdir -p ./zookeeper/zoo3/data ./zookeeper/zoo3/datalog

# mysql
# sudo rm -rf /docker/mysql
mkdir -p ./mysql/data ./mysql/conf ./mysql/log ./mysql/config ./mysql/init
# sudo cp -r ./mysql/init/* /docker/mysql/init/
# sudo cp -r ./mysql/config/* /docker/mysql/config/

# elasticsearch
# The container runs Elasticsearch as user elasticsearch using uid:gid 1000:1000.
# Bind mounted host directories and files, such as custom_elasticsearch.yml above, need to be accessible by this user.
mkdir -p ./elasticsearch/es1/data ./elasticsearch/es1/data/nodes
mkdir -p ./elasticsearch/es2/data ./elasticsearch/es2/data/nodes
# sudo chmod -R g+rwx /docker/elasticsearch
# sudo chgrp 1000 /docker/elasticsearch

# nginx
mkdir -p ./nginx/conf ./nginx/html ./nginx/logs
# sudo cp -r ./nginx /docker/nginx
# sudo chmod -R g+rwx /docker/nginx/html
















