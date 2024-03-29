[ -f ~/.fzf.bash ] && source ~/.fzf.bash
USER=$(whoami)
export USER

export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/.composer/vendor/bin

export GOPATH=$HOME/go

alias pbcopy=termux-clipboard-set
alias pbpaste=termux-clipboard-get
alias kc=kubectl

[ -f /data/data/com.termux/files/home/git/port/user-leslie-snippets/rc/rc.sh ] && source /data/data/com.termux/files/home/git/port/user-leslie-snippets/rc/rc.sh

export KUBE_EDITOR=hx
