PROMPT='%n@ %{$fg_bold[red]%}»%{$fg_bold[green]%}%p %{$fg[yellow]%}${PWD/#$HOME/~} %{$fg_bold[red]%}$(git_prompt_info)%{$fg_bold[red]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[red]%})"
