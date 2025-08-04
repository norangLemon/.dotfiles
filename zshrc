export TERM="xterm-256color"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PATH="$PATH:/usr/bin/"

############################################################
# https://docs.google.com/document/d/1G_c5lJGNRqePm2IiTU8rLaum-CUyvF1Yeuvw59hTf4g

### Powerlevel9k ###
# https://github.com/Powerlevel9k/powerlevel9k.git
# Will be installed by Zplug:
#   https://github.com/Powerlevel9k/powerlevel9k/wiki/Install-Instructions#option-5-install-for-zplug
# Need to install font:
#   https://powerline.readthedocs.io/en/latest/installation/linux.html#fonts-installation

# What to show in the begin of prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir_writable)
POWERLEVEL9K_SSH_ICON=local
POWERLEVEL9K_SSH_BACKGROUND="white"
POWERLEVEL9K_SSH_FOREGROUND="black"
# What to show in the tail of prompt
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
############################################################
# Zplug
# https://github.com/zplug/zplug
source ~/.zplug/init.zsh
zplug 'zsh-users/zsh-syntax-highlighting'
zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zplug load


