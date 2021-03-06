zsh

# Load ~/.bashrc
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Load git-completion
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

# Load private files
source ~/.private

# Autocorrect typos in path names when using "cd"
shopt -s cdspell

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend
