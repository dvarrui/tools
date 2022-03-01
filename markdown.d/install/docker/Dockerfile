FROM debian:latest

MAINTAINER tool-markdown 0.0

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y vim tree
RUN apt-get install -y ruby
RUN gem install tool-markdown
RUN mkdir /home/dvarrui

EXPOSE 80

WORKDIR /home/dvarrui
CMD ["/bin/bash"]
