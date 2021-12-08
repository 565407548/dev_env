#!/bin/sh

if [ $# == 0 ];then
	echo "usage:"
	echo "    1. sh init.sh 0"
	echo "    2. source ~/.bashrc"
	echo "    3. sh init.sh 1"
else
	if [ $1 == "0" ];then
		JDK_DIR_NAME=java-se-8u41-ri
		
		sudo mkdir -p /usr/lib/jvm
		
		sudo tar -zxvf openjdk*.tar.gz -C /usr/lib/jvm
		
		rm -rf ~/.bashrc_java
		touch ~/.bashrc_java
		
		cat >> ~/.bashrc_java << EOF 
		# 设置 Oracle JDK 环境变量
		export JAVA_HOME=/usr/lib/jvm/${JDK_DIR_NAME} ## 这里要注意目录要换成自己解压的jdk 目录
		export JRE_HOME=${JAVA_HOME}/jre
		export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib
		export PATH=${JAVA_HOME}/bin:$PATH
EOF
	
		cat >> ~/.bashrc << EOF
		
		. ~/.bashrc_java
	
EOF
		echo "next cmd: source ~/.bashrc, /bin/bash init.sh 1"
	elif [ $1 == "1" ];then
		# sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/${JDK_DIR_NAME}/bin/java 300
		# sudo update-alternatives --display java
		sudo update-alternatives --config java
		# sudo update-alternatives --remove java /usr/lib/jvm/${JDK_DIR_NAME}/bin/java
		java -version
	else
		echo "param error"
	fi
fi
