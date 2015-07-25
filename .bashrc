# Noahs Bashrc

#Alias
alias ll='ls -la'
alias i='ifconfig | grep inet && ping -c3 www.gentoo.org'
alias e='exit'
alias HEAD="lwp-request -m HEAD"
alias mnt-usb="sudo truecrypt --mount $1"
alias t="tree -L $1"
export TERM=xterm-256color

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh

# Some fixes for local lang vars due to perl complaining
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
# Go Stuff
export GOROOT=/opt/local/go
export GOPATH=/opt/local/go/bin
export PATH=$PATH:$GOROOT/bin
# Terraform
export TERRAFORM=/Applications/terraform/
export PATH=$PATH:$TERRAFORM
# Packer
export PACKER=/usr/local/packer
export PATH=$PATH:$PACKER
# Token Helper
export PATH=${PATH}:~/workspace/greyhound

PERL_MB_OPT="--install_base \"/Users/ckunert/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/ckunert/perl5"; export PERL_MM_OPT;
