FROM luisos:latest
MAINTAINER Luis Alexandre Deschamps Brandão
EXPOSE 22

RUN rpm -Uvh https://rpm.nodesource.com/pub_8.x/el/7/x86_64/nodesource-release-el7-1.noarch.rpm
RUN yum install -y nodejs

RUN yum clean all && rm -rf /var/cache/yum

ENTRYPOINT ["/usr/sbin/sshd", "-D"]
