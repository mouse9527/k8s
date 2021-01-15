FROM gocd/gocd-agent-centos-7:v21.1.0

USER root

RUN yum update && yum install epel-release -y && yum install -y java-latest-openjdk nodejs docker-client

ENV TZ=Asia/Shanghai
ENV JAVA_HOME=/usr/lib/jvm/jre-14-openjdk
