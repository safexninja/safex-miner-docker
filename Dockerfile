FROM alpine:3.13

ARG VERSION=6.12.1

ENV ADDRESS=Safex5z45oBAeZA8zrLYgmPnTjrMUzA7DLB5bo58SELGNpYmMXJCFgqTF17A4NntNRGb1zXW1yDp9grAzD6K1fiAc6gGB56nVrk2s
ENV WORKER=safex-miner
ENV MAXCPULOAD=100

RUN apk add --no-cache wget sudo
WORKDIR /root

RUN wget https://github.com/xmrig/xmrig/releases/download/v$VERSION/xmrig-$VERSION-linux-static-x64.tar.gz
RUN tar -xzf xmrig-$VERSION-linux-static-x64.tar.gz
WORKDIR /root/xmrig-$VERSION

LABEL author="Safex.Ninja"
LABEL xmrig-version=$VERSION
LABEL description="Mining with xmrig to default Safex pool"
LABEL info="See https://github.com/safex/"

CMD sudo ./xmrig --cpu-max-threads-hint=$MAXCPULOAD --algo="rx/sfx" --url="pool.safex.org:3311" --user=$ADDRESS --pass=$WORKER --keepalive