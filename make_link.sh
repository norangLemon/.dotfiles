#!/bin/bash

# backup function to move existing config file
function backup {
    FILE="$HOME/$1"
    if [ -e "$FILE" ]; then
        mv $FILE "$FILE.backup"
        echo "$FILE moved to $FILE.backup"
    fi
}

backup ".vimrc"
ln -sf ~/.dotfiles/vimrc ~/.vimrc

backup ".zshrc"
ln -sf ~/.dotfiles/zshrc ~/.zshrc

backup ".bash_profile"
ln -sf ~/.dotfiles/bash_profile ~/.bash_profile

backup ".gitconifg"
ln -sf ~/.dotfiles/gitconfig ~/.gitconfig

backup ".gitexclude"
ln -sf ~/.dotfiles/gitexclude ~/.gitexclude

backup ".ssh/config"
ln -sf ~/.dotfiles/config ~/.ssh/config

backup ".tmux.conf"
ln -sf ~/.dotfiles/tmux.conf ~/.tmux.conf

backup ".editorconfig"
ln -sf ~/.dotfiles/editorconfig ~/.editorconfig
