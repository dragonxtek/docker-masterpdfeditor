FROM ubuntu:18.10
LABEL maintainer="nicolas.boettcher@mail.udp.cl"

RUN sed -i 's/archive/old-releases/g' /etc/apt/sources.list
RUN sed -i '/security/d' /etc/apt/sources.list
RUN apt-get -yqq update \
    && apt-get clean \
    && apt-get install -yqq x11-apps libqt4-svg

ADD master-pdf-editor-3.5.81_amd64.tar.gz /home
CMD /home/master-pdf-editor-3/masterpdfeditor3