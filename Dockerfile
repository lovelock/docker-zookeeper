FROM daocloud.io/centos:6.8
MAINTAINER Frost Wong <frostwong@gmail.com>
RUN yum -y update
COPY jdk-8u102-linux-x64.rpm /
RUN rpm -ivh /jdk-8u102-linux-x64.rpm
COPY zookeeper-3.4.8 /zookeeper/
WORKDIR /zookeeper
RUN cd /zookeeper
CMD ["bin/zkServer.sh start conf/zoo.cfg"]
EXPOSE 2181
