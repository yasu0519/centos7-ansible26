FROM centos:7
MAINTAINER yasu0519

RUN yum clean all && \
    yum -y install epel-release && \
    yum -y update && \
    yum -y install git && \
    yum -y --enablerepo=epel -y install python2-pip.noarch && \
    yum -y install sshpass && \
    pip install --upgrade pip && \
    yum -y install centos-release-ansible26.noarch && \
    yum -y install ansible-2.6.20-1.el7.noarch && \
    yum clean all
