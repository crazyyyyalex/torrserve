FROM ubuntu:latest
RUN apt-get update && apt-get upgrade -y
RUN mkdir /opt/torrserver
RUN apt-get install -y curl wget sudo
RUN wget https://github.com/YouROK/TorrServer/releases/latest/download/TorrServer-linux-amd64 -O /opt/torrserver/torrserver
RUN chmod o+x /opt/torrserver/torrserver
EXPOSE 8090
ENTRYPOINT ["/opt/torrserver/torrserver"]
