#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# VIM setup
git clone https://github.com/VundleVim/Vundle.vim.git\
    $HOME/.vim/bundle/Vundle.vim
cp $SCRIPT_DIR/vimrc $HOME/.vimrc
vim -c "PluginInstall" -c "qa"

# NVIM setup
NVIM_HOME=$HOME/.config/nvim

mkdir -p $NVIM_HOME
mkdir -p $NVIM_HOME/lua

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 $HOME/.local/share/nvim/site/pack/packer/start/packer.nvim
cp $SCRIPT_DIR/init.vim $NVIM_HOME
cp $SCRIPT_DIR/plugins.lua $NVIM_HOME/lua
nvim -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
cat $SCRIPT_DIR/plugins_config-part.lua >> $NVIM_HOME/lua/plugins.lua
