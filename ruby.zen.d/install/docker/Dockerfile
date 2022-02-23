FROM debian:latest

MAINTAINER dvarrui 0.1

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y vim tree
RUN apt-get install -y ruby
RUN gem install rubyzen
RUN mkdir /home/rubyzen

EXPOSE 80

WORKDIR /home/rubyzen
CMD ["/bin/bash"]
