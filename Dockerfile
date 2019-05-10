FROM lsiobase/ubuntu:bionic

LABEL maintainer 'Sam Burney <sam@burney.io>'

RUN apt update \
    && apt install -f -y -q gnupg \
    && curl -s https://deb.frrouting.org/frr/keys.asc | apt-key add - \
    && echo deb https://deb.frrouting.org/frr bionic frr-stable | tee -a /etc/apt/sources.list.d/frr.list \
    && apt update \
    && apt install -f -y -q frr \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*

COPY ./root/ /

ENTRYPOINT [ "/init" ]
