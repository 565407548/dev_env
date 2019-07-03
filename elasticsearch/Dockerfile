# Docker image of elasticsearch with ik and pinyin
# VERSION 7.2.0
# Author: zhengcj01

FROM elasticsearch:7.2.0

#author
MAINTAINER zhengcj01 <565407548@qq.com>

ENV ES_BASE_PATH /opt
ENV ES_TMP_PATH /opt/es

ENV ES_PLUGINS_PATH /usr/share/elasticsearch/plugins
ENV ES_PLUGINS_IK_PATH /usr/share/elasticsearch/plugins/ik
ENV ES_PLUGINS_PINYIN_PATH /usr/share/elasticsearch/plugins/pinyin

RUN cd $ES_BASE_PATH && \
yum -y install wget && \
yum -y install unzip && \
mkdir -p $ES_PLUGINS_PATH && \
mkdir -p $ES_TMP_PATH && \
cd $ES_TMP_PATH && \
#下载ik源码包
wget https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.2.0/elasticsearch-analysis-ik-7.2.0.zip && \
#构建成功后，将文件移动到插件目录
mkdir -p $ES_PLUGINS_IK_PATH && \
mv elasticsearch-analysis-ik-7.2.0.zip $ES_PLUGINS_IK_PATH && \
cd $ES_PLUGINS_IK_PATH && \
unzip *.zip && \
rm -rf *.zip && \
cd $ES_TMP_PATH && \
#下载ik源码包
wget https://github.com/medcl/elasticsearch-analysis-pinyin/releases/download/v7.2.0/elasticsearch-analysis-pinyin-7.2.0.zip && \
#构建成功后，将文件移动到插件目录
mkdir -p $ES_PLUGINS_PINYIN_PATH && \
mv elasticsearch-analysis-pinyin-7.2.0.zip $ES_PLUGINS_PINYIN_PATH && \
cd $ES_PLUGINS_PINYIN_PATH && \
#解压
unzip *.zip && \
rm -rf *.zip && \
#删除ik的源码目录
rm -rf $ES_TMP_PATH
