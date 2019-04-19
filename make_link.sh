#!/bin/zsh

# initialize CORP using hostname.sh
if [[ -e "exclusives/hostname.sh" ]]; then
    source "exclusives/hostname.sh"
fi

# backup function to move existing config file
function backup {
    FILE="$HOME/$1"
    if [ -L "$FILE" ]; then
        rm "$FILE"
        echo -e "$FILE is symlink; \e[1mremoved\e[0m"
    elif [ -e "$FILE" ]; then
        mv "$FILE" "$FILE.backup"
        echo -e "$FILE \e[1mis moved to\e[0m $FILE.backup"
    fi
}

echo "start making simlinks"

backup ".zshrc"
if [[ -e "exclusives/zshrc" && -n "$CORP" ]]; then
    ln -s ~/.dotfiles/exclusives/zshrc ~/.zshrc
    echo -e "  \e[1mUse exclusive zshrc\e[0m"
else
    ln -s ~/.dotfiles/zshrc ~/.zshrc
fi

backup ".vimrc"
if [[ -e "exclusives/vimrc" && -n "$CORP" ]]; then
    ln -s ~/.dotfiles/exclusives/vimrc ~/.vimrc
    echo -e "  \e[1mUse exclusive vimrc\e[0m"
else
    ln -s ~/.dotfiles/vimrc ~/.vimrc
fi

backup ".bash_profile"
ln -s ~/.dotfiles/bash_profile ~/.bash_profile

backup ".gitconfig"
ln -s ~/.dotfiles/gitconfig ~/.gitconfig

backup ".gitexclude"
ln -s ~/.dotfiles/gitexclude ~/.gitexclude

backup ".ssh/config"
ln -s ~/.dotfiles/sshconfig ~/.ssh/config

backup ".tmux.conf"
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf

backup ".editorconfig"
ln -s ~/.dotfiles/editorconfig ~/.editorconfig
