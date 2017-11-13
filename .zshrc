export ZSH=/home/nstier/.oh-my-zsh
ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"

plugins=(sudo colored-man-pages zsh-syntax-highlighting vi-mode)
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

alias ls="exa"
alias tm="tmux"
alias tmat="tm a -t"
alias c="clear"
alias ipy="ipython --pylab tk"
alias py="python"
alias s=less
#alias v="vim"
alias vi="vim"

alias sc-status="sudo systemctl status"
alias sc-start="sudo systemctl start"
alias sc-stop="sudo systemctl stop"
alias sc-restart="sudo systemctl restart"

alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc && source ~/.zshrc"
alias tmux.conf="vim ~/.tmux.conf && tmux source ~/.tmux.conf"

export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=~/.history

bindkey -M viins 'fd' vi-cmd-mode
bindkey -M viins 'df' vi-cmd-mode

export CMAKE_PREFIX_PATH=$HOME/Source/install
export LD_LIBRARY_PATH=/usr/local/gdal-2.1.3/lib:/usr/local/ffmpeg-2.8.12/lib:/usr/local/opencv-3.2.0/lib:/usr/local/cuda/lib64:/usr/local/wx-v3.0.3/lib:/usr/local/lib:/usr/local/lib64:/usr/lib64
export LIBRARY_PATH=/usr/local/lib
export EDITOR=vim
export FZF_DEFAULT_COMMAND='fd'
export PATH=/usr/bin:$PATH:$HOME/BuildAndTest:$HOME/Sandbox/bin:$HOME/DevelopmentTools/CMake
export PATH=$PATH:/usr/local/wx-v3.0.3/bin:/usr/local/Toyon/bin:/usr/local/cuda/bin:/usr/local/ffmpeg-2.8.12/bin
export PATH=$PATH:~/.cargo/bin
export PATH=$HOME/miniconda3/bin:$PATH

# incremental command search
bindkey "^[OA" up-line-or-beginning-search
bindkey "^[OB" down-line-or-beginning-search
bindkey -M vicmd "k" up-line-or-beginning-search
bindkey -M vicmd "j" down-line-or-beginning-search

export KEYTIMEOUT=1
