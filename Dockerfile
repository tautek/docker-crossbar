FROM python:2.7.9

MAINTAINER Marc Easen <marc@easen.co.uk>

RUN apt-get update -y && apt-get install -y python-pip

RUN pip install --upgrade twisted
RUN pip install ez_setup six pyopenssl pycrypto wsaccel ujson
RUN pip install --upgrade distribute

RUN pip install crossbar[tls,msgpack,manhole,system]

RUN crossbar version

RUN crossbar init

ADD config.json /.crossbar/

EXPOSE 8000

CMD crossbar start --cbdir /.crossbar
