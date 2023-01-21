FROM ubuntu:focal

COPY pvsneslib /pvsneslib
COPY target /target

ENV PVSNESLIB_HOME=/pvsneslib

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 python3 make -y && \
    apt-get clean autoclean && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt && \
    ln -s /usr/bin/python3 /usr/bin/python

WORKDIR /target

ENTRYPOINT ["/usr/bin/make"]
