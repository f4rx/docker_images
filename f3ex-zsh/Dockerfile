# build:
# docker build -t f3ex/zsh:0.1 .
# or
# docker build -t f3ex/zsh .

FROM ubuntu:16.04

LABEL maintainer="Aleksey Stepanenko"

COPY create_zsh_config.sh /root/create_zsh_config.sh

RUN apt update && apt install -y git zsh vim mc && \
    zsh -c 'git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"' && \
    zsh /root/create_zsh_config.sh && chsh -s /bin/zsh

COPY .zpreztorc /root/.zpreztorc
COPY .zshrc /root/.zshrc

CMD [ "/usr/bin/zsh" ]