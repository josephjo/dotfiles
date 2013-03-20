# Load private files
source ~/.private


# dot the cds
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."


# Set Sublime Text 2 as default editor
export EDITOR='subl -w'


# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"


# Make some commands not show up in history
export HISTIGNORE="ls:ls *:cd:cd -:pwd;exit:date:* --help"


# Shortcut for Sublime Text 2
alias s="subl"
alias o="open ."


# Super ls: all, long, append / for directories, add size, color
alias ls="ls -alpsG"


# Super ls, but sort by reverse modification time
alias lsd="ls -alrstG"


# Replicate Tree
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"


# Get IP Address
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias wired="ipconfig getifaddr en0"
alias wireless="ipconfig getifaddr en1"


# Hide/show files
alias hide='defaults write com.apple.Finder AppleShowAllFiles NO && killall Finder && echo Hiding invisible files'
alias show='defaults write com.apple.Finder AppleShowAllFiles YES && killall Finder && echo Showing invisible files'


# Refresh IP
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
alias log="git log --pretty=format:'%Cred%h%Creset %C(yellow)| %an | %Cgreen%cr |%Creset %s%C(yellow)%d' --stat"
alias res="git reset --hard HEAD"
alias re="git fetch && git rebase -i origin/master"
alias clean="git clean -fdx"


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

PS1="\[$default\]\u » \[$yellow\]\w\[$red\]\$git_branch\[$default\] »\[$default\] "
