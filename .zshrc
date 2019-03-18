export ZSH="/home/nstier/.oh-my-zsh"
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias n="ninja"

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
alias ipy="ipython --pylab tk"
alias py="python"
alias s=less
alias v="vim"

alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc && source ~/.zshrc"

export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=~/.history

bindkey -v

source /home/nstier/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey "^P" up-line-or-search
bindkey "^N" down-line-or-search
bindkey '^R' history-incremental-search-backward

export PATH=usr/local/opencv-3.4.5/bin:/usr/local/wx-v3.1.2/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/opencv-3.4.5/lib:/usr/local/wx-v3.1.2/lib:$LD_LIBRARY_PATH

. "/home/nstier/miniconda3/etc/profile.d/conda.sh"

