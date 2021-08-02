FROM centos:7

RUN yum update -y \
    && yum install epel-release -y \
    && yum install -y curl wget tar bzip2 gzip unzip python3 binutils bc jq tmux glibc.i686 libstdc++ libstdc++.i686 file nmap-ncat iproute

USER arkserver

ADD ./linuxgsm.sh ./

RUN chmod +x ./linuxgsm.sh

RUN bash linuxgsm.sh arkserver

RUN ./arkserver install

ENTRYPOINT ['/home/arkserver/arkserver', 'start']
