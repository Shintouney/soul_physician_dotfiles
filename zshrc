# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"
 alias zshconfig="$EDITOR ~/.zshrc"
 alias ohmyzsh="$EDITOR ~/.oh-my-zsh"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

DEFAULT_USER='ranska'

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

plugins=(git git-flow vi-mode )
source $ZSH/oh-my-zsh.sh
# Customize to your needs...
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

# recommended by brew doctor
export PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin'
export PATH=$PATH:$HOME/tool_kit


export EDITOR='vim'
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
alias tmux='tmux -2'

alias a='TERM=xterm-256color ranger'
alias 'q'='exit'

source ~/soul_physician_dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
test -e ~/.dircolors && eval `dircolors -b ~/.dircolors`
#alias ls="ls --color=always"
alias lsl="ls++"
alias lda="ls++"
alias ls="ls --color=always"
alias grep="grep --color=always"
alias egrep="egrep --color=always"

alias t="tmuxifier s"
alias beb="bundle exec middleman build"
alias besy="bundle exec middleman s3_sync"
alias bes="bundle exec middleman server -p"
alias bnd="bundle exec middleman build && bundle exec middleman s3_sync"

source ~/soul_physician_dotfiles/zsh-history-substring-search/zsh-history-substring-search.zsh

# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey "$terminfo[cuu1]" history-substring-search-up
bindkey "$terminfo[cud1]" history-substring-search-down

bindkey "✔" history-substring-search-up
bindkey "☆" history-substring-search-down


#eval '$(dircolors -b $HOME/.dircolors)'


# Setup zsh-autosuggestions
source ~/soul_physician_dotfiles/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable autosuggestions automatically
zle -N zle-line-init
# Accept suggestions without leaving insert mode
bindkey '^f' vi-forward-word
#bindkey 'é' vi-forward-word
# or
bindkey '^f' vi-forward-blank-word
#bindkey 'é' vi-forward-blank-word

bindkey "⦿" vi-forward-word
bindkey "⦿" vi-forward-blank-word


# use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
bindkey '^T' autosuggest-toggle

export PATH="$HOME/.tmuxifier/bin:$PATH"
eval "$(tmuxifier init -)"

export PATH="$HOME/midman_apps/creator:$PATH"

#AUTOSUGGESTION_HIGHLIGHT_COLOR="fg=7"

# Finexcap kerl bin
export PATH="$HOME/clients/finexkap/kerl_bin/:$PATH"

# Docker config

alias tk="tmux kill-session -t"

alias gbpurge='git branch --merged | grep -v "\*" | grep -v "master" | grep -v "develop" | grep -v "staging" | xargs -n 1 git branch -d'

alias gprac='ga . && gc && gp && pullr -i develop -I origin'
alias gcld='gcd && gl origin develop'
alias gclm='gcd && gl origin master'

alias gcal="vim -c 'colorscheme pablo' -c 'Calendar'"
alias gflfp="gfl feature pull origin"
alias overmind="./bin/overmind-v2.1.0-linux-386"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export APPNAME_DATABASE_PASSWORD="riveton"
