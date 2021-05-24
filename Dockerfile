FROM ubuntu:latest

 # 必要なパッケージインストール
RUN \
    apt-get update && \
    apt-get -y install bash coreutils grep iproute2 iputils-ping traceroute tcpdump bind9-dnsutils dnsmasq-base netcat-openbsd python3 curl wget iptables procps isc-dhcp-client sudo

 # Ubuntuのユーザ設定
RUN useradd -m hoge
RUN gpasswd -a hoge sudo
RUN echo 'hoge:pass' | chpasswd
