#!/bin/bash

# backup function to move existing config file
function backup {
    FILE="$HOME/$1"
    if [ -e "$FILE" ]; then
        mv $FILE "$FILE.backup"
        echo -e "$FILE \e[1mis moved to\e[0m $FILE.backup"
    fi
}

echo "start making simlinks"

backup ".zshrc"
if [ -e "exclusives/zshrc" ]; then
    ln -s ~/.dotfiles/exclusives/zshrc ~/.zshrc
    echo -e "  \e[1mUse exclusive zshrc\e[0m"
else
    ln -s ~/.dotfiles/zshrc ~/.zshrc
fi

backup ".vimrc"
ln -s ~/.dotfiles/vimrc ~/.vimrc

backup ".bash_profile"
ln -s ~/.dotfiles/bash_profile ~/.bash_profile

backup ".gitconfig"
ln -s ~/.dotfiles/gitconfig ~/.gitconfig

backup ".gitexclude"
ln -s ~/.dotfiles/gitexclude ~/.gitexclude

backup ".ssh/config"
ln -s ~/.dotfiles/config ~/.ssh/config

backup ".tmux.conf"
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf

backup ".editorconfig"
ln -s ~/.dotfiles/editorconfig ~/.editorconfig
