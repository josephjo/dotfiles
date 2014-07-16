ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="jjo"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/Users/jjo/.gem/ruby/1.8/bin:/Users/jjo/bin:/usr/local/bin/git:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin

# dot the cds
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."


# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"


# Make some commands not show up in history
export HISTIGNORE="ls:ls *:cd:cd -:pwd;exit:date:* --help"


# Set Sublime Text 3 as default editor
export EDITOR='subl -w'


# Shortcut for Sublime Text 3
alias s="subl"
alias o="open ."


# Super ls: all, long, append / for directories, add size
alias l="ls -alp"


# Super ls, but sort by reverse modification time
alias lsd="ls -alrst"


# Create parent directories on demand
alias mkdir='mkdir -pv'


# Ask before overwriting files and make verbose
alias mv='mv -iv'
alias cp='cp -iv'
alias ln='ln -iv'


# Replicate Tree
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"


# Get IP Address
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias wired="ipconfig getifaddr en0"
alias wireless="ipconfig getifaddr en1"


# Hide/show files
alias hide='defaults write com.apple.Finder AppleShowAllFiles FALSE && killall Finder && echo Hiding invisible files'
alias show='defaults write com.apple.Finder AppleShowAllFiles TRUE && killall Finder && echo Showing invisible files'


# Refresh IP for Linux VirtualBox
alias refresh="sudo dhclient"


# Super WHOIS
alias whois="whois -h whois-servers.net"


# Delete pyc files
alias pyc="find -L . -name '*.pyc' -delete"


# Paste clipboard to dpaste
alias dpaste='pbpaste | curl -si -F "poster=anon" -F "expiry_days=287" -F "content=<-" http://dpaste.com/api/v2/ | grep ^Location: | colrm 1 10 | tr -d "\r" | xargs open'


# Git Shortcuts
alias g="git"
alias st="git status"
alias branch="git branch"
alias branches="git branch"
alias diff="git diff"
alias fetch="git fetch"
alias pull="git pull"
alias push="git push"
alias stash="echo git stash apply && git stash apply"
alias pop="echo git stash pop && git stash pop"
alias co="git commit -av"
alias master="git checkout master"
alias log="git log --decorate --graph --pretty=format:'%C(red bold) %h %C(yellow bold) | %an | %Cgreena: %ar / c: %cr | %Creset %s %C(blue bold) %d' --stat"
alias res="git reset --hard HEAD"
alias re="git fetch && git rebase -i origin/master"
alias clean="git clean -fdx"


# git checkout existing branch
function ch() {
    git checkout $1
}


# git checkout and push new branch
function checkout() {
    git checkout -b $1; git push -u origin $1
    echo 'Created new branch' $1 'and pushed to origin'
}


# Sleep computer after x
function sleeptimer {
    time=$1
    sleep ${time} && osascript -e 'tell application "System Events" to sleep'
}

