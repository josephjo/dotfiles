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
alias master="git checkout master && st"
alias log="git log --decorate --graph --pretty=format:'%C(red bold) %h %C(yellow bold) | %an | %Cgreen%cr | %Creset %s %C(blue bold) %d' --stat"
alias res="git reset --hard HEAD"
alias re="git fetch && git rebase -i origin/master"
alias clean="git clean -fdx"


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


# Sleep computer after x
function sleeptimer {
    time=$1
    sleep ${time} && osascript -e 'tell application "System Events" to sleep'
}


# Add pwd to prompt and add current branch in Git
function find_git_branch {
    local dir=. head
    until [ "$dir" -ef / ]; do
        if [ -f "$dir/.git/HEAD" ]; then
            head=$(< "$dir/.git/HEAD")
            if [[ $head == ref:\ refs/heads/* ]]; then
                git_branch=" (${head#*/*/})"
            elif [[ $head != '' ]]; then
                git_branch=' (detached)'
            else
                git_branch=' (unknown)'
            fi
            return
        fi
        dir="../$dir"
    done
    git_branch=''
}

PROMPT_COMMAND="find_git_branch; $PROMPT_COMMAND"

yellow=$'\e[0;33m'
red=$'\e[0;91m'
default=$'\e[m'

PS1="\[$default\]\u@\h » \[$yellow\]\w\[$red\]\$git_branch\[$default\] »\[$default\] "
