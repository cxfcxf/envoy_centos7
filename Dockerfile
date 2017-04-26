FROM centos:7
MAINTAINER Xuefeng Chen <siegfried.chen@gmail.com>

USER root
RUN yum -y update
RUN yum -y groupinstall 'Development Tools'
RUN yum install -y cmake wget gmp-devel mpfr-devel libmpc-devel golang clang c-ares-devel epel-release which
RUN yum -y remove git
RUN rpm -ivh https://centos7.iuscommunity.org/ius-release.rpm
RUN yum install -y libsecret libsecret-devel
RUN yum -y update
RUN yum -y --disablerepo=base,updates --enablerepo=ius install git
RUN mkdir -p /opt/envoy_env
