FROM alpine:latest

RUN apk add fastfetch

RUN apk add git curl bind-tools busybox-extras net-tools mtr nmap openssl jq yq neovim strace lsof postgresql-client mysql-client redis wget kubectl openssh

RUN apk add gdb delve

RUN apk add grml-zsh-config

RUN apk add doas

COPY .zshrc /root/.zshrc

RUN adduser -u 1000 -s /bin/zsh -G wheel -D debug debug

RUN echo "permit nopass :wheel" >> /etc/doas.conf

USER 1000

COPY .zshrc /home/debug/.zshrc

CMD ["/bin/zsh"]
