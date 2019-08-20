#!/usr/bin/env bash

#install oh-my-zsh
echo "Installing oh-my-zsh ..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install pyenv
pyenv_dir=$HOME/.pyenv
if [[ ! -d $pyenv_dir ]];then
    echo "Pyenv not found, Installing..."
    curl -L "https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer" | bash
fi

# install Space-Vim
echo "Installing Space-Vim ..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/liuchengxu/space-vim/master/install.sh)"