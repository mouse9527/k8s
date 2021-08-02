FROM centos:7

RUN yum update -y; \
  yum install epel-release -y; \
  yum install -y curl wget tar bzip2 gzip unzip python3 binutils bc jq tmux glibc.i686 libstdc++ libstdc++.i686 file nmap-ncat iproute

COPY linuxgsm.sh /linuxgsm.sh

RUN set -ex; \
  groupadd -g 750 linuxgsm; \
  useradd -g linuxgsm -u 750 linuxgsm; \
  chown linuxgsm:linuxgsm /linuxgsm.sh; \
  chmod +x /linuxgsm.sh; \
  mkdir /linuxgsm  ; \
  cp /linuxgsm.sh /linuxgsm/linuxgsm.sh; \
  usermod -G tty linuxgsm; \
  chown -R linuxgsm:linuxgsm /linuxgsm/; \
  chmod 755 /linuxgsm

USER linuxgsm

WORKDIR /linuxgsm

ENV PATH=$PATH:/linuxgsm

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["bash","/entrypoint.sh" ]
