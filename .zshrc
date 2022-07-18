#exports
export ZSH="$HOME/.oh-my-zsh"
export EDITOR='nvim'
#Aliases
alias risc="java -jar $HOME/rars/rars.jar &"
alias zshconfig="nvim ~/.zshrc"
alias i3config="nvim ~/.config/i3/config"
alias myip="ifconfig -a"
alias pubip="curl ifconfig.me"
alias doas="sudo "
bindkey -e
bindkey "^U" backward-kill-line
#Theme
ZSH_THEME="lukerandall"

#PLUGINS
plugins=(git
	web-search
	zsh-autosuggestions
	zsh-syntax-highlighting
	sudo
	copypath
	dirhistory)

source $ZSH/oh-my-zsh.sh
