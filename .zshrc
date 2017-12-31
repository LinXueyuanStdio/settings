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
    
}

zsh_internet_signal(){
  local signal=$(nmcli device wifi | grep yes | awk '{print $8}')
  local color='%F{yellow}'
  [[ $signal -gt 75 ]] && color='%F{green}'
  [[ $signal -lt 50 ]] && color='%F{red}'
  echo -n "%{$color%}\uf1eb  $signal%{%f%}" # \uf1eb is  
  local noise=""
  local SNR=""

  local net=""
  local symbol="\uf197"

  # Excellent Signal (5 bars)
  if [[ ! -z "${signal// }" ]] && [[ $SNR -gt .40 ]] ; 
    then color='%F{blue}' ; symbol="\uf1eb" ;
  fi

  # Good Signal (3-4 bars)
  if [[ ! -z "${signal// }" ]] && [[ ! $SNR -gt .40 ]] && [[ $SNR -gt .25 ]] ; 
    then color='%F{green}' ; symbol="\uf1eb" ;
  fi

  # Low Signal (2 bars)
  if [[ ! -z "${signal// }" ]] && [[ ! $SNR -gt .25 ]] && [[ $SNR -gt .15 ]] ; 
    then color='%F{yellow}' ; symbol="\uf1eb" ;
  fi

  # Very Low Signal (1 bar)
  if [[ ! -z "${signal// }" ]] && [[ ! $SNR -gt .15 ]] && [[ $SNR -gt .10 ]] ; 
    then color='%F{red}' ; symbol="\uf1eb" ;
  fi

  # No Signal - No Internet
  if [[ ! -z "${signal// }" ]] && [[ ! $SNR -gt .10 ]] ; 
    then color='%F{red}' ; symbol="\uf011";
  fi

  if [[ -z "${signal// }" ]] && [[ "$net" -ne 200 ]] ; 
    then color='%F{red}' ; symbol="\uf011" ;
  fi

  # Ethernet Connection (no wifi, hardline)
  if [[ -z "${signal// }" ]] && [[ "$net" -eq 200 ]] ; 
    then color='%F{blue}' ; symbol="\uf197" ;
  fi

  echo -n "%{$color%}$symbol " # \f1eb is wifi bars
}
POWERLEVEL9K_CUSTOM_INTERNET_SIGNAL="zsh_internet_signal"

DEFAULT_USER=$USER
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_left"

#POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{cyan}\/%F{blue}"
#POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{grey}\/%F{white}"
POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{white}\/%F{grey}"
#POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{235}\/%F{235}"
POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=false
#POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="❯"
#POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR="❯"
#POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR="❮"
#POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR="❮"

#POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=""
#POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=""

# Separators
#POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B4'
#POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=$'\uE0B5'
#POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0B6'
#POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=$'\uE0B7'

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="\uE0B4"
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=""
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR="\uE0B6"
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=""

#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{cyan}\u256D\u2500%f"
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{grey}\u2570\uF460%f "
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{grey}\uF460%f "
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%K{clear}%F{cyan}%m%f%k %F{123}\uF460%f "

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{cyan}\u256D\u2500%f%F{white}\uE0B6"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{cyan}\u2570%F{cyan}\uF460%F{073}\uF460%F{109}\uF460%f "

POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_DISABLE_RPROMPT=false

POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_BACKGROUND="235"

prompt_left(){
  echo "%F{white}%K{235}\uE0B6%{%f%}"
}
prompt_right(){
  echo "%F{white}%K{235}\uE0B4%{%f%}"
}
POWERLEVEL9K_NODE_VERSION_BACKGROUND='yellow'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_wifi_signal custom_internet_signal os_icon host dir_writable dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time background_jobs ssh status virtualenv rbenv rvm time right)

POWERLEVEL9K_VCS_CLEAN_BACKGROUND="green"
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="black"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="yellow"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="black"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="yellow"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="black"
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=""
POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON=""
POWERLEVEL9K_VCS_GIT_GITLAB_ICON=""
POWERLEVEL9K_VCS_GIT_ICON=""
POWERLEVEL9K_VCS_STAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'

POWERLEVEL9K_DIR_HOME_BACKGROUND="cyan"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="cyan"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="cyan"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="cyan"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="black"

POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="235"
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND="red"
POWERLEVEL9K_STATUS_OK_BACKGROUND="235"
POWERLEVEL9K_STATUS_OK_FOREGROUND="green"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="235"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"

POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %T} %F{red}%D{%m/%d}" #  15:29:33
POWERLEVEL9K_TIME_FOREGROUND="blue"
POWERLEVEL9K_TIME_BACKGROUND="white"

POWERLEVEL9K_RIGHT_BACKGROUND="yellow"

#POWERLEVEL9K_SSH_FOREGROUND="226"
POWERLEVEL9K_SSH_FOREGROUND="yellow"
POWERLEVEL9K_SSH_BACKGROUND="235"

POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="235"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="magenta"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_ICON="\u231A"

POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND="235"
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND="magenta"
POWERLEVEL9K_USER_DEFAULT_BACKGROUND="235"
POWERLEVEL9K_USER_DEFAULT_FOREGROUND="cyan"
POWERLEVEL9K_USER_ROOT_BACKGROUND="235"
POWERLEVEL9K_USER_ROOT_FOREGROUND="red"
POWERLEVEL9K_USER_ICON="\uF415" # 
POWERLEVEL9K_ROOT_ICON="\u26A1" # ⚡

POWERLEVEL9K_HOST_LOCAL_BACKGROUND="235"
POWERLEVEL9K_HOST_LOCAL_FOREGROUND="cyan"
POWERLEVEL9K_HOST_REMOTE_BACKGROUND="235"
POWERLEVEL9K_HOST_REMOTE_FOREGROUND="cyan"

POWERLEVEL9K_HOST_ICON="\uF109" # 
POWERLEVEL9K_HOST_ICON_FOREGROUND="red"
POWERLEVEL9K_HOST_ICON_BACKGROUND="black"
POWERLEVEL9K_SSH_ICON="\uF489"  # 

POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="cyan"


# =============================================================================
#                                     Plugins
# =============================================================================
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-completions zsh-syntax-highlighting autojump emoji fastfile osx falkor)
plugins+=(git git-flow git-extras git-remote-branch hub)  # Git
plugins+=(pyenv)                                          # Python stuff
. /usr/share/autojump/autojump.sh

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

export all_proxy=socks5://127.0.0.1:1080/
export socks_proxy=socks5://127.0.0.1:1080/

export SSH_KEY_PATH="~/.ssh/rsa_id"
export ARCHFLAGS="-arch x86_64"
export MANPATH="/usr/local/man:/usr/local/texlive/2017/texmf-dist/doc:$MANPATH"

# Preferred editor for local and remote sessions
# I like vim, other editor can't satisfy me.
export EDITOR='vim'

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
