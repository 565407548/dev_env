#/bin/bash

# zookeeper
sudo mkdir -p /docker/zookeeper/zoo1/data /docker/zookeeper/zoo1/datalog 
sudo mkdir -p /docker/zookeeper/zoo2/data /docker/zookeeper/zoo2/datalog
sudo mkdir -p /docker/zookeeper/zoo3/data /docker/zookeeper/zoo3/datalog

# mysql
sudo rm -rf /docker/mysql
sudo mkdir -p /docker/mysql/data /docker/mysql/conf /docker/mysql/log /docker/mysql/config /docker/mysql/init
sudo cp -r ./mysql/init/* /docker/mysql/init/
sudo cp -r ./mysql/config/* /docker/mysql/config/

# elasticsearch
# The container runs Elasticsearch as user elasticsearch using uid:gid 1000:1000.
# Bind mounted host directories and files, such as custom_elasticsearch.yml above, need to be accessible by this user.
sudo mkdir -p /docker/elasticsearch/es1/data /docker/elasticsearch/es1/data/nodes
sudo mkdir -p /docker/elasticsearch/es2/data /docker/elasticsearch/es2/data/nodes
sudo chmod -R g+rwx /docker/elasticsearch
sudo chgrp 1000 /docker/elasticsearch



















