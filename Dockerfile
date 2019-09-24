FROM lsiobase/alpine:3.10

LABEL maintainer 'Sam Burney <sam@burney.io>'

RUN apk add \
    --update-cache \
    --repository http://dl-3.alpinelinux.org/alpine/edge/main/ \
    --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
    --allow-untrusted \
    frr

COPY ./root/ /

ENTRYPOINT [ "/init" ]
