# makefile env for ps
export CPPFLAGS='-std=c++1z -O3'

# shellder color scheme
export SHELLDER_CONTEXT_BG='white'
export SHELLDER_CONTEXT_FG='black'

export SHELLDER_DIRECTORY_BG='blue'
export SHELLDER_DIRECTORY_FG='black'

export SHELLDER_GIT_CLEAN_BG='green'
export SHELLDER_GIT_CLEAN_FG='black'
export SHELLDER_GIT_DIRTY_BG='yellow'
export SHELLDER_GIT_DIRTY_FG='black'

export SHELLDER_VIRTUALENV_BG='yellow'
export SHELLDER_VIRTUALENV_FG='white'

export SHELLDER_STATUS_BG='black'
export SHELLDER_STATUS_FG='white'

# Theme
export DEFAULT_USER="$USER"

plugins=(git)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
if hash pyenv 2>/dev/null
then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# yarn
if hash yarn 2>/dev/null
    then export PATH="$PATH:`yarn global bin`"
fi

## zplug
source ~/.zplug/init.zsh
zplug 'zsh-users/zsh-syntax-highlighting'
zplug 'simnalamburt/cgitc'
zplug 'simnalamburt/shellder', as:theme
if ! zplug check; then
    zplug install
fi
zplug load


