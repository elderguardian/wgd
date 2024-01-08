FROM docker:dind

RUN apk add --no-cache docker-compose
RUN apk add --no-cache wireguard-tools iptables
RUN mkdir -p /etc/wireguard

WORKDIR /data
COPY connect.sh /data/connect.sh
COPY configs /data/configs
RUN chmod +x connect.sh

CMD ["sh", "-c", "./connect.sh && tail -f /dev/null"]