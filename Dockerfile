FROM webdevops/php-apache-dev:7.2

MAINTAINER radu.barbu@gmail.com
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y sudo
RUN apt-get install -y ssmtp

RUN adduser docker --ingroup=www-data --disabled-password --gecos="WebUser,,212-555-1212,212-555-1212,212-555-1212"
RUN echo 'docker:docker' | chpasswd
RUN usermod -aG sudo docker