#!/usr/bin/env bash

echo "Installing zsh git ..."
sudo apt install curl zsh git nodejs npm autojump thefuck

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
export PATH=~/.npm-global/bin:$PATH
export NPM_CONFIG_PREFIX=~/.npm-global
source ~/.profile

#install oh-my-zsh
echo "Installing oh-my-zsh ..."
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# install pyenv
pyenv_dir=$HOME/.pyenv
if [[ ! -d $pyenv_dir ]];then
    echo "Pyenv not found, Installing..."
    curl -L "https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer" | bash
fi

# install SpaceVim
echo "Installing Space-Vim ..."
curl -sLf https://spacevim.org/cn/install.sh | bash