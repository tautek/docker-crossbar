FROM fedora:21

MAINTAINER Abed Halawi <abed.halawi@vinelab.com>

RUN yum install libffi-devel python-pip python-devel gcc openssl-devel -y
# RUN yum update -y
RUN yum clean all

RUN pip install --upgrade twisted
RUN pip install ez_setup six pyopenssl pycrypto wsaccel ujson
RUN pip install --upgrade distribute

RUN pip install crossbar[tls,msgpack,manhole,system]

RUN crossbar version

RUN crossbar init

ADD config.json /.crossbar/

EXPOSE 8000

CMD crossbar start --cbdir /.crossbar
