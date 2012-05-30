# Load ~/.bash_rc
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Autocorrect typos in path names when using "cd"
shopt -s cdspell

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend
