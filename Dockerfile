FROM ubuntu

COPY ./work/ /work/
COPY init.sh /

RUN chmod 755 /init.sh
RUN apt update && apt install -y make gcc

WORKDIR /work

ENTRYPOINT /init.sh ; /bin/bash
