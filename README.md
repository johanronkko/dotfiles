# dotfiles

## Dependencies

Manage dotfiles:
* brew install stow


Neovim (nightly):
* brew install --HEAD luajit
* brew install --HEAD neovim
* LVBRANCH=master bash <(curl -s https://raw.githubusercontent.com/ChristianChiarulli/lunarvim/rolling/utils/installer/install.sh)


zsh funcs:
* brew install fzf
* brew install git
* brew install diff-so-fancy
* brew install --cask docker
* [Brave](https://brave.com/download/)
* [Chrome](https://www.google.com/chrome/)


zsh aliases:
* brew install exa

tmux:
* brew install tmux

## Install

Dotfiles can be installed using `stow`, which  is a symlink farm manager. It takes distinct packages of software and/or
data located in separate directories on the filesystem, and makes them appear to be installed in the same place. For 
example, install nvim by running `stow nvim`. Install everything (excluding files in this directory) by running `stow */`.
Stow treats each directory as the $HOME directory on your system and will create symlinks following the same file structure. 
For example, the $HOME/.config/zsh/ directory will symlinked to $HOME/dotfiles/.config/zsh (assuming you cloned this
repo into $HOME).

## Notes

In the zsh config, GOPATH is exported to $HOME/.local/share/go. This means that you need to move the Go installation to $HOME/.local/share/go.