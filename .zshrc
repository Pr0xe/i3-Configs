#Enable colors and change prompt
autoload -U colors && colors
autoload -Uz vcs_info add-zsh-book
precmd() { vcs_info }

#Enable checking for (un)staged changes enabling use of %u and %c
zstyle ':vcs_info:*' check-for-changes true
#Set custom strings for an unstaged vcs repo changes(*) and staged changes (+)
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
#Set the format of the Git information for vcs_info
zstyle ':vcs_info:git:*' formats '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

setopt PROMPT_SUBST
base_prompt="%B%{$fg[yellow]%}%n%{$fg[red]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$reset_color%}"
post_prompt="%{$reset_color%}::⇒ %b"
PROMPT='${base_prompt} %F{green}${vcs_info_msg_0_}%f${post_prompt}'

#History in cache directory
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

#Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

#use lf to switch directories and bind to ctrl-o
lfcd(){
	tmp="$(mktemp)"
	lf -last-dir-path="$tmp" "$@"
	if [ -f "$tmp" ]; then
		dir="$(cat "$tmp")"
		rm -f "$tmp"
		[ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
	fi
}
bindkey -s '^o' 'lfcd\n'

#Edit line with ctrl-e
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

#Aliases
alias zshconfig="nvim ~/.zshrc"
alias i3config="nvim ~/.config/i3/config"
alias nvimconf="nvim ~/.config/nvim/init.vim"
alias pubip="curl ifconfig.me"
bindkey -e
bindkey "^U" backward-kill-line
#PLUGINS
plugins=(git
	web-search
	zsh-autosuggestions
	zsh-syntax-highlighting
	sudo
	copypath
	encode64
	)
export ZSH="/home/pr0xe/.oh-my-zsh"
export EDITOR='nvim'
source $ZSH/oh-my-zsh.sh
