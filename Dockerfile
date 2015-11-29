FROM centos:7

RUN yum install -y etcd && \
  yum clean all

VOLUME /var/lib/etcd
EXPOSE 4001 7001

USER etcd
WORKDIR /var/lib/etcd
CMD etcd
