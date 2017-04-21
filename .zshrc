export ZSH=/Users/noahstier/.oh-my-zsh
ZSH_THEME="noah"
COMPLETION_WAITING_DOTS="true"


plugins=(sudo colored-man-pages)
source $ZSH/oh-my-zsh.sh

alias g="git"
alias gs="git status -s"
alias gd="git diff"
alias gc="git commit -v"
alias gco="git checkout"
alias ga="git add"
alias gp="git push"
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias gst="git stash"
alias gsta="git stash apply"

alias tm="tmux"
alias tmat="tm a -t"
alias ag="ag --pager=less"
alias c="clear"
alias vim="nvim"

alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc && source ~/.zshrc"
alias tmux.conf="vim ~/.tmux.conf && tmux source ~/.tmux.conf"

export LSCOLORS="exfxcxdxbxegedabagacad"

export HISTSIZE=1000
export SAVEHIST=1000
export HISTFILE=~/.history

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey -v
bindkey -M viins 'fd' vi-cmd-mode
bindkey -M viins 'df' vi-cmd-mode
bindkey "^?" backward-delete-char
bindkey '^R' history-incremental-pattern-search-backward
export KEYTIMEOUT=1

