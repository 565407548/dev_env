#!/bin/sh

rm -rf ~/.bashrc_docker
touch ~/.bashrc_docker

cat >> ~/.bashrc_docker << EOF 
# docker
alias d='docker'
alias dp='docker ps'
alias dc='docker-compose'

EOF

cat >> ~/.bashrc << EOF

. ~/.bashrc_docker

EOF

# docker image
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<- EOF
{
	"registry-mirrors":["https://s885toh0.mirror.aliyuncs.com","https://reg-mirror.qiniu.com","https://hub-mirror.c.163.com/"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker
