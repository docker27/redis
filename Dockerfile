FROM qianchun27/centos-jdk-maven:7.8.3

MAINTAINER qianchun, qianchun27@hotmail.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENV BASE_INSTALL_DIR /opt/install

RUN mkdir -p ${BASE_INSTALL_DIR}

COPY redis.sh ${BASE_INSTALL_DIR}

COPY redis.conf ${BASE_INSTALL_DIR}

COPY redis-4.0.11.tar.gz ${BASE_INSTALL_DIR}

COPY restart.sh ${BASE_INSTALL_DIR}

COPY install.sh ${BASE_INSTALL_DIR}

RUN sh ${BASE_INSTALL_DIR}/install.sh
