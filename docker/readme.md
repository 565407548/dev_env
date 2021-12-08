# startup
## mvn
```
mvn clean package -DskipTests
```

## docker
### cp
```
docker cp container-name:/path/ /local/path
docker cp /local/path container-name:/path
```
### image
```
docker images
docker image rm image-id1 image-id2
#删除所有未运行的镜像
docker image prune
docker image prune -a
docker image prune -a --filter "until=12h"
```
### container
## docker-compose
```
cd path/of/docker-compose.yml

docker-compose build

docker images

docker-compose up
docker-compose ps

docker-compose down
```

