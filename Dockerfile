FROM ubuntu:20.04
RUN mkdir -p ~/project
ADD . ~/project
WORKDIR ~/project
RUN apt update
RUN apt install python-pip3
RUN pip3 install -r requirements.txt
