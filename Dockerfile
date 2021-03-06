FROM luisos:latest
MAINTAINER Luis Alexandre Deschamps Brandão

RUN rpm -Uvh https://rpm.nodesource.com/pub_10.x/el/7/x86_64/nodesource-release-el7-1.noarch.rpm && \
    yum install -y nodejs ansible && \
    yum clean all && rm -rf /var/cache/yum

EXPOSE 22
EXPOSE 80
EXPOSE 433
ENTRYPOINT ["/usr/sbin/sshd", "-D"]
