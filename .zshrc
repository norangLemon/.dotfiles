# zplug
source ~/.zplug/init.zsh
zplug 'zsh-users/zsh-syntax-highlighting'
zplug 'simnalamburt/cgitc'
zplug 'simnalamburt/shellder', as:theme
if ! zplug check; then
    zplug install
fi
zplug load


# Theme
export DEFAULT_USER="$USER"

# alias
alias course='cd ~/Dropbox/2016.\ Spring'

# ssh
alias martini='ssh pinethee@martini.snucse.org'
alias lime='ssh pinethee@lime.ntopia.kr'
alias lemon='ssh norang@lemon.norang.io'

# irc
alias irc='tmux attach -t irc'
plugins=(git)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
if hash pyenv 2>/dev/null
then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
