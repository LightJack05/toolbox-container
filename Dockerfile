FROM alpine:latest
USER 1000

RUN apk add fastfetch

RUN apk add git curl bind-tools busybox-extras net-tools mtr nmap openssl jq yq neovim strace lsof postgresql-client mysql-client redis wget kubectl openssh

RUN apk add gdb delve

RUN apk add grml-zsh-config

COPY .zshrc /root/.zshrc

CMD ["/bin/zsh"]
