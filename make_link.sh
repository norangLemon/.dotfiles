#!/bin/zsh

# initialize CORP using hostname.sh
if [[ -e "exclusives/hostname.sh" ]]; then
    source "exclusives/hostname.sh"
    CORP="$HOSTNAME_ALIAS"
fi

# backup function to move existing config file
function backup {
    FILE="$HOME/$1"
    if [ ! -e "$FILE" ]; then
        return
    fi
    DEST="$FILE"
    NUM=0
    while [ -e "$DEST" ]; do
        if [ -L "$DEST" ]; then
            rm "$DEST"
            echo -e "$DEST is symlink; \e[1mremoved\e[0m"
            break
        fi
        ((NUM++))
        DEST="$FILE.backup$NUM"
    done
    if [ -e "$FILE" ]; then
        mv "$FILE" "$DEST"
        echo -e "$FILE \e[1mis moved to\e[0m $DEST"
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

backup ".hgrc"
if [[ -e "exclusives/hgrc" && -n "$CORP" ]]; then
    ln -s ~/.dotfiles/exclusives/hgrc ~/.hgrc
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
