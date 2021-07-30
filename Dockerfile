FROM ubuntu:20.04
RUN mkdir -p ~/project
ADD . ~/project
WORKDIR ~/project
RUN apt update
RUN apt install python3-pip -y
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt install nginx -y
RUN pip3 install -r requirements.txt
