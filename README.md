Dotfiles
=========

### dependancies
* [vim-plug](https://github.com/junegunn/vim-plug)
    1. install vim-plug

        ```
        curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
            https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        ```
    1. install all the plugins in vim
    
        ```
        :PlugUpdate
        ```
* zsh: install zsh with package manager
* [zlug](https://github.com/zplug/zplug):  `curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh`

### How to use

1. cloning repo.

  ```
  cd ~
  git clone git@github.com:norangLemon/.dotfiles.git
  ```

1. make simlink
  ```
  ln -sf ~/.dotfiles/.vimrc ~/.vimrc
  ln -sf ~/.dotfiles/.zshrc ~/.zshrc
  ln -sf ~/.dotfiles/.bash_profile ~/.bash_profile
  ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
  ln -sf ~/.dotfiles/config ~/.ssh/config
  ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf
  ln -sf ~/.dotfiles/editorconfig ~/.editorconfig
  ```

### Docs
**[Cheet Sheet](https://github.com/norangLemon/.dotfiles/blob/master/docs/CheetSheet.md)** 
