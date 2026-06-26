FROM alpine:latest

RUN apk add fastfetch

RUN apk add git curl bind-tools busybox-extras net-tools mtr nmap openssl jq yq neovim strace lsof postgresql-client mysql-client redis wget kubectl openssh

RUN apk add gdb delve

RUN apk add grml-zsh-config

COPY .zshrc /root/.zshrc

USER 1000

CMD ["/bin/zsh"]
