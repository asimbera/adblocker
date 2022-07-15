FROM coredns/coredns:latest

ADD Corefile /
ADD https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts /etc/hosts

EXPOSE 53/udp
EXPOSE 443/tcp
EXPOSE 853/tcp
