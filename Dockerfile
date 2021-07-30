FROM ubuntu:20.04
RUN mkdir -p ~/project
ADD . ~/project
WORKDIR ~/project
RUN apt update
RUN apt install python3-pip
RUN apt install nginx
RUN pip3 install -r requirements.txt
