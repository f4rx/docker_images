# build:
# docker build -t f3ex/zsh-go:0.1 .
# or
# docker build -t f3ex/zsh-go .

FROM f3ex/zsh:latest

LABEL maintainer="Aleksey Stepanenko"

COPY .zprofile /root/.zprofile

RUN     apt-get update && \
        apt-get -y upgrade && \
        apt install -y wget && \
        apt install -y gcc dh-exec autoconf automake libtool autotools-dev dpkg-dev fakeroot devscripts && \
        cd /tmp && \
        wget https://dl.google.com/go/go1.11.linux-amd64.tar.gz && \
        tar -xvf go1.11.linux-amd64.tar.gz && \
        mv go /usr/local && \
        mkdir /root/go && \
        . /root/.zprofile && \
        go get -u github.com/golang/dep/cmd/dep

CMD [ "/usr/bin/zsh" ]
