# Load ~/.bash_prompt, ~/.bashrc, ~/.exports, ~/.aliases, and ~/.private
for file in ~/.{bash_prompt,bashrc,exports,aliases,private}; do
	[ -r "$file" ] && source "$file"
done
unset file


# Autocorrect typos in path names when using "cd"
shopt -s cdspell


# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob


# Append to the Bash history file, rather than overwriting it
shopt -s histappend