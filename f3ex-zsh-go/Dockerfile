# build:
# docker build -t f3ex/zsh-go:0.1 .
# or
# docker build -t f3ex/zsh-go .

FROM f3ex/zsh:latest

LABEL maintainer="Aleksey Stepanenko"

RUN     apt-get update && \
        apt-get -y upgrade && \
        apt install -y wget && \
        cd /tmp && \
        wget https://dl.google.com/go/go1.11.linux-amd64.tar.gz && \
        tar -xvf go1.11.linux-amd64.tar.gz && \
        mv go /usr/local && \
        mkdir /root/go

COPY .profile /root/.profile

CMD [ "/usr/bin/zsh" ]
