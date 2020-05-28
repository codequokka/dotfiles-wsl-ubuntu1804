#!/bin/bash

# Bin
ln -snf ${HOME}/dotfiles/bin ${HOME}/.bin

# Zsh
ln -snf ${HOME}/dotfiles/zshrc ${HOME}/.zshrc
ln -snf ${HOME}/dotfiles/zsh ${HOME}/.zsh
ln -snf ${HOME}/dotfiles/p10k.zsh ${HOME}/.p10k.zsh

# Tmux
ln -snf ${HOME}/dotfiles/tmux.conf ${HOME}/.tmux.conf