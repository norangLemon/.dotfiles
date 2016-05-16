# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Theme
ZSH_THEME="agnoster"
export DEFAULT_USER="$USER"

# alias
alias course='cd \Dropbox/2016.\ Spring'

# ssh
alias martini='ssh pinethee@martini.snucse.org'
alias lime='ssh pinethee@lime.ntopia.kr'
alias peche='ssh pinethee@peche.bacchus.snucse.org'
alias lemon='ssh norang@lemon.norang.xyz'

# irc
alias irc='tmux attach -t irc'
plugins=(git)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
source $ZSH/oh-my-zsh.sh
