# docker-compose
```
docker-compose up
docker-compose down -v
```

# mysql 
+ 第一次创建mysql执行文件目录：`/docker/mysql/init/create`。判断是否有效的方法：清空 `/docker/mysql` 下相关数据，执行 docker-compose up
+ 每次启动都执行的文件目录：`/docker/mysql/init/start`
 
```
docker exec -it mysql /bin/bash

#打开 http://localhost:5601, 通过如下命令查看集群情况：
GET _cluster/health
GET _cat/nodes
```

# zookeeper 相关命令
```
docker exec -it zoo1 /bin/bash
# in zoo1
zkServer.sh status

docker exec -it zoo2 /bin/bash
# in zoo2
zkServer.sh status

docker exec -it zoo3 /bin/bash
# in zoo3
zkServer.sh status
```

# redis
```
docker exec -it redis /bin/bash
redis-cli

# redis 127.0.0.1:6379> keys *
# redis 127.0.0.1:6379> set name "zhengcj"
# redis 127.0.0.1:6379> get name

```

# nginx
```
http://localhost:80/
```











