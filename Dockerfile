FROM lsiobase/alpine:3.8

LABEL maintainer 'Sam Burney <sam@burney.io>'

RUN apk add frr --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted

COPY ./root/ /

ENTRYPOINT [ "/init" ]
