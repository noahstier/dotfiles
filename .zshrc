export ZSH=/home/nstier/.oh-my-zsh
ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"

plugins=(colored-man-pages)
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
alias c="clear"
alias ipy="ipython --pylab auto"
alias py="python"
alias s=less
alias v="vim"
alias vi="vim"

alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc && source ~/.zshrc"
alias tmux.conf="vim ~/.tmux.conf && tmux source ~/.tmux.conf"

alias open="xdg-open"


export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=~/.history

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey -M viins 'fd' vi-cmd-mode
bindkey -M viins 'df' vi-cmd-mode

export PATH=/usr/bin:$PATH:$HOME/BuildAndTest:$HOME/Sandbox/bin:$HOME/DevelopmentTools/CMake
export PATH=$PATH:/usr/local/wx-v3.0.3/bin:/usr/local/Toyon/bin:/usr/local/cuda/bin:/usr/local/ffmpeg-2.8.5/bin
export CMAKE_PREFIX_PATH=$HOME/Source/install
export LD_LIBRARY_PATH=/usr/local/gdal-2.1.3/lib:/usr/local/ffmpeg-2.8.5/lib:/usr/local/opencv-3.2.0/lib:/usr/local/cuda/lib64:/usr/local/wx-v3.0.3/lib:/usr/local/lib
export LIBRARY_PATH=/usr/local/lib
export EDITOR=vim
export FZF_DEFAULT_COMMAND='ag --path-to-ignore ~/.ignore -g ""'

xmodmap ~/.xmodmap
