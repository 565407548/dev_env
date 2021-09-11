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
