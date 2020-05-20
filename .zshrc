export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias n="ninja"
alias open="xdg-open"

alias act="conda activate"
alias deact="conda deactivate"

alias g="git"
alias gs="git status -s"
alias gd="git diff"
alias gc="git commit -v"
alias gco="git checkout"
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias gst="git stash"
alias gsta="git stash apply"

alias tm="tmux"
alias tmat="tm a -t"
alias c="clear"
alias ipy="ipython --matplotlib"
alias py="python"
alias s=less
alias v="vim"
alias feh="feh --keep-zoom-vp"
alias ffprobe="ffprobe -hide_banner"

alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc && source ~/.zshrc"

alias fogsphere="ssh noah@fogsphere.mat.ucsb.edu"
alias wilson="ssh noah@brachio.cs.ucsb.edu"
alias theropod="ssh noah@theropod.cs.ucsb.edu"

export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=~/.history

export EDITOR=vim
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow'

bindkey -v

source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey "^P" up-line-or-search
bindkey "^N" down-line-or-search
bindkey "^R" history-incremental-search-backward
bindkey "^A" vi-beginning-of-line
bindkey "^E" vi-end-of-line

export PATH=$HOME/.cargo/bin:$PATH
export PATH=/usr/local/julia-1.1.0/bin:/usr/local/cuda/bin:$HOME/.local/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:/usr/local/lib:$LD_LIBRARY_PATH

. "$HOME/miniconda3/etc/profile.d/conda.sh"
