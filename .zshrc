# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh


plugins=(git)


export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/jjo/Library/Python/2.7/bin"


source $ZSH/oh-my-zsh.sh


# Personal file
source ~/.private


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
# export EDITOR='atom -w'


# Shortcut for editors
alias s="subl"
alias a="atom"


# Shortcut to open with default app
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


# Pretty print the path
alias path="echo $PATH | tr -s ':' '\n'"


# Open the /etc/hosts file
alias hosts="open /etc/hosts"


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


# Start a quick server
function serve() {
    python -m SimpleHTTPServer ${1:-8000}
}


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
alias undo="git reset --soft HEAD~"
alias amend="git commit --amend"


# git revert hash
function revert() {
    git revert -m 1 $1
}

# git checkout existing branch
function ch() {
    git checkout $1
}


# git checkout existing branch
function checkout() {
    git checkout $1
}


# git checkout and push new branch
function chpush() {
    git checkout -b $1; git push -u origin $1
    echo 'Created new branch' $1 'and pushed to origin'
}


# Delete branch on server
function del() {
    git push origin :$1
}


# Make a empty commit
function emptycommit() {
    git commit --allow-empty -m "$1"
}


# Sleep computer after x
function sleeptimer {
    time=$1
    sleep ${time} && osascript -e 'tell application "System Events" to sleep'
}


# Flush DNS cache
function flush {
    sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; echo "Cache flushed"
}


# Search for files
function search() {
    find . -iname "*$@*" | less;
}


# Search history
function hist() {
    history | grep $1
}


# Prompt
PROMPT='%n@ %{$fg_bold[red]%}»%{$fg_bold[green]%}%p %{$fg[yellow]%}${PWD/#$HOME/~} %{$fg_bold[red]%}$(git_prompt_info)%{$fg_bold[red]%} % %{$reset_color%}'
ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[red]%})"
eval $(/usr/libexec/path_helper -s)


export ANDROID_HOME=/usr/local/opt/android-sdk
export JAVA_HOME=/Library/Java/Home

