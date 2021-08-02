FROM centos:7

RUN yum update -y; \
  yum install epel-release -y; \
  yum install -y curl wget tar bzip2 gzip unzip python3 binutils bc jq tmux glibc.i686 libstdc++ libstdc++.i686 file nmap-ncat iproute

COPY linuxgsm.sh /linuxgsm.sh

RUN set -ex; \
  groupadd -g 750 -o linuxgsm; \
  adduser --uid 750 --disabled-password --gecos "" --ingroup linuxgsm linuxgsm; \
  chown linuxgsm:linuxgsm /linuxgsm.sh; \
  chmod +x /linuxgsm.sh; \
  cp /linuxgsm.sh /home/linuxgsm/linuxgsm.sh; \
  usermod -G tty linuxgsm; \
  chown -R linuxgsm:linuxgsm /home/linuxgsm/; \
  chmod 755 /home/linuxgsm

USER linuxgsm

WORKDIR /home/linuxgsm

ENV PATH=$PATH:/home/linuxgsm

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["bash","/entrypoint.sh" ]
