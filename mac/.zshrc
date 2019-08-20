# =============================================================================
#                                     Theme
# =============================================================================

# powerlevel9k prompt theme

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_RPROMPT_ON_NEWLINE=true


zsh_wifi_signal(){
        local output=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I)
        local airport=$(echo $output | grep 'AirPort' | awk -F': ' '{print $2}')

        if [ "$airport" = "Off" ]; then
                local color='%F{black}'
                echo -n "%{$color%}Wifi Off"
        else
                local ssid=$(echo $output | grep ' SSID' | awk -F': ' '{print $2}')
                local speed=$(echo $output | grep 'lastTxRate' | awk -F': ' '{print $2}')
                local color='%F{black}'

                [[ $speed -gt 100 ]] && color='%F{black}'
                [[ $speed -lt 50 ]] && color='%F{red}'

                echo -n "%{$color%}$speed Mbps \uf1eb%{%f%}" # removed char not in my PowerLine font
        fi
}

POWERLEVEL9K_CONTEXT_TEMPLATE='%n'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
#POWERLEVEL9K_BATTERY_STAGES=($'\u2581 ' $'\u2582 ' $'\u2583 ' $'\u2584 ' $'\u2585 ' $'\u2586 ' $'\u2587 ' $'\u2588 ')
POWERLEVEL9K_BATTERY_ICON='\uf1e6 '
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="❱ "
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}\u2570%F{cyan}\uF460%F{073}\uF460%F{109}\uF460%f "
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_ICON='?'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time dir_writable ip custom_wifi_signal ram load background_jobs)

#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1

POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M \uf073 %d/%m/%y}"
POWERLEVEL9K_TIME_BACKGROUND='white'
POWERLEVEL9K_RAM_BACKGROUND='yellow'
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="white"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="white"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="white"
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="red"
POWERLEVEL9K_LOAD_WARNING_FOREGROUND="yellow"
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="black"
POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_STATUS_VERBOSE=false

# =============================================================================
#                                     Plugins
# =============================================================================
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-completions zsh-syntax-highlighting autojump emoji osx falkor)
plugins+=(git git-flow git-extras git-remote-branch hub)  # Git
plugins+=(pyenv)                                          # Python stuff

# zsh-syntax-highlighting

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
ZSH_HIGHLIGHT_PATTERNS+=("rm -rf *" "fg=white,bold,bg=red")
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]="fg=white"
ZSH_HIGHLIGHT_STYLES[path_pathseparator]="fg=grey"
ZSH_HIGHLIGHT_STYLES[alias]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[builtin]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[function]="fg=cyan"
ZSH_HIGHLIGHT_STYLES[command]='fg=green'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=green'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=green'
ZSH_HIGHLIGHT_STYLES[commandseparator]="fg=yellow"
ZSH_HIGHLIGHT_STYLES[redirection]="fg=magenta"
ZSH_HIGHLIGHT_STYLES[bracket-level-1]="fg=cyan,bold"
ZSH_HIGHLIGHT_STYLES[bracket-level-2]="fg=green,bold"
ZSH_HIGHLIGHT_STYLES[bracket-level-3]="fg=magenta,bold"
ZSH_HIGHLIGHT_STYLES[bracket-level-4]="fg=yellow,bold"


# =============================================================================
#                                   Variables
# =============================================================================

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# =============================================================================
#                                     export
# =============================================================================

export TERM="xterm-256color"
export LANG="en_US.UTF-8"
export GOROOT=/usr/local/go
export GOPATH=$HOME/more-space/xyh/linxueyuan/go:$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin:/home/dlinking-lxy/more-space/xyh/linxueyuan/go/bin
export PATH=$PATH:$HOME/.android-sdk-macosx/platform-tools
export all_proxy=socks5://127.0.0.1:1080/
export socks_proxy=socks5://127.0.0.1:1080/
unset all_proxy
unset socks_proxy

export ANDROID_HOME="/Users/zby/Library/Android/sdk"
export SSH_KEY_PATH="~/.ssh/rsa_id"
export ARCHFLAGS="-arch x86_64"
export MANPATH="/usr/local/man:/usr/local/texlive/2017/texmf-dist/doc:$MANPATH"

# Preferred editor for local and remote sessions
# I like vim, other editor can't satisfy me.
export EDITOR='vim'

export PATH=$PATH:/Library/TeX/texbin
export PATH=$HOME/bin:/usr/local/bin:/usr/local/texlive/2017/bin/x86_64-linux:/home/dlinking-lxy/.local/bin:$PATH
export INFOPATH="/usr/local/texlive/2017/texmf-dist/doc/info"
export MANPATH="/usr/local/texlive/2017/texmf-dist/doc/man"

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# =============================================================================
#                                     alias
# =============================================================================
eval "$(thefuck --alias fuck)"
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias systemInfo="neofetch block_range 1 8 line_wrap off bold off uptime_shorthand on gtk_shorthand on colors 4 1 8 8 8 7"

alias rerc="vim ~/.bashrc"
alias userc="source ~/.bashrc"
alias rezrc="vim ~/.zshrc"
alias usezrc="source ~/.zshrc"

alias usePy35="source ~/more-space/pyworks/venv/bin/activate"

alias swapto="~/more-space/xyh/onwork/exchange/"

alias gotomore="cd ~/more-space/"
alias gotoexchange="cd ~/more-space/exchange/"
alias gotorepo="cd ~/more-space/default-repo/"

alias gotospider="cd ~/more-space/xyh/linxueyuan/go/src/xyh/spider"
alias runspider="gotospider && ./spider -o /home/dlinking-lxy/more-space/xyh/onwork/output"
alias gotonote="cd ~/more-space/default-repo/notes"
alias runnote="usePy35 && jupyter notebook"
alias runnote3="jupyter notebook"
alias gotosite="cd ~/more-space/default-repo/LinXueyuanStdio.github.io/"
alias runsite="gotosite && bundle exec jekyll serve"

alias gotoeth="cd ~/more-space/blockchain/"
alias rungeth='gotoeth && geth --identity "MyTestNet" --rpc --rpccorsdomain "*" --datadir "./.ethereum" --port 8888 --rpcapi "personal,db,eth,net,web3,miner" --networkid 88888 console'
alias runwallet="ethereumwallet --gethpath /usr/bin/geth"

alias rundir="nautilus"

alias newtemp="git clone git@github.com:LinXueyuanStdio/CodeFilesTemplate.git"
alias idepy="~/more-space/IDE/pycharm/bin/pycharm.sh"
alias idego="~/more-space/IDE/GoLand/bin/goland.sh"
alias ideas="~/more-space/IDE/android-studio/bin/studio.sh"

alias sshjp3="ssh linxueyuan@jp3.xyh.io"

alias intargz="sudo tar -xzf "
alias indeb="sudo dpkg -i "


alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'
export PATH="/usr/local/opt/php@7.0/bin:$PATH"
export PATH="/usr/local/opt/php@7.0/sbin:$PATH"
export PATH="/Library/TeX/texbin:$PATH"
eval $(thefuck --alias)

alias sshlab='ssh yanglab@219.135.135.229'
alias seelab='echo "gzthnscc123 then ssh gpu02"'
# proxy
alias proxy='export all_proxy=socks5://127.0.0.1:1080'
alias unproxy='unset all_proxy'
