FROM centos:7

RUN yum update -y \
    && yum install epel-release -y \
    && yum install -y curl wget tar bzip2 gzip unzip python3 binutils bc jq tmux glibc.i686 libstdc++ libstdc++.i686 file nmap-ncat iproute

RUN useradd -G root arkserver

WORKDIR /home/arkserver

ADD ./linuxgsm.sh ./linuxgsm.sh

USER arkserver

RUN export https_proxy=http://win10:7890 http_proxy=http://win10:7890 all_proxy=socks5://win10:7890
RUN bash ./linuxgsm.sh arkserver

RUN ./arkserver install

ENTRYPOINT ['/home/arkserver/arkserver', 'start']
