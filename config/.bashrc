# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:" ]]; then
	PATH="$HOME/.local/bin:$PATH"
fi
if ! [[ "$PATH" =~ "$HOME/bin:" ]]; then
	PATH="$HOME/bin:$PATH"
fi
if ! [[ "$PATH" =~ "$HOME/.krew/bin:" ]]; then
  PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
fi
export PATH

PAGER='less -r'
export PAGER

GPG_TTY=$(tty)
export GPG_TTY

# User specific functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi
unset rc

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f /usr/local/git/port/user-leslie-snippets/rc/rc.sh ] && source /usr/local/git/port/user-leslie-snippets/rc/rc.sh

# User specific aliases
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# Completions
[ -x $HOME/.asdf/asdf.sh ] && . $HOME/.asdf/asdf.sh
[ -x $HOME/.asdf/completions/asdf.bash ] && . $HOME/.asdf/completions/asdf.bash
if command -v terraform >/dev/null ; then
	complete -C /usr/local/bin/terraform terraform
	complete -C /usr/bin/terraform terraform
fi
