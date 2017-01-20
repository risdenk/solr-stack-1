FROM centos:6

RUN yum install -y wget

RUN wget -nv http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.4.2.0/ambari.repo -O /etc/yum.repos.d/ambari.repo && yum repolist && yum install -y ambari-server

RUN ambari-server setup -s

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

