export ZSH="$HOME/.oh-my-zsh"


ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export LANG=es_ES.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
 fi

alias cdgh="cd ~/Documentos/GitHub"

alias condaenv='eval "$(/home/azubirif/anaconda3/bin/conda shell.zsh hook)"'
alias hx="helix"

# Para Arch
alias log_out="hyprctl dispatch exit"
alias waybar_reload="killall -SIGUSR2 waybar"

export EDITOR=helix
export VISUAL=helix
export PATH
export MANPATH
export INFOPATH

clear

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# eval "$(oh-my-posh init zsh --config 'https://github.com/JanDeDobbeleer/oh-my-posh/blob/main/themes/easy-term.omp.json')"

. "$HOME/.local/bin/env"
