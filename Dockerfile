FROM ubuntu:latest

MAINTAINER Hariharan Subramanian <hariharans16@gmail.com>

ADD containers /opt/containers

ENTRYPOINT ["/opt/containers/main.sh"]
