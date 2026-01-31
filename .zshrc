alias vim='nvim'
alias ll='ls -lah'
zstyle ':prompt:grml:*:items:user' pre '%B%F{red}[DEBUG] '
zstyle ':prompt:grml:*:items:host' pre '%F{red}'

fastfetch

echo "Loaded $(busybox | head -n 1)"

echo -e "\033[1;31m######################################################"
echo -e "#  DEBUG CONTAINER - YOU MAY BE ACCESSING PROD!      #"
echo -e "\033[1;31m######################################################\033[0m"

