export ZSH=/Users/noahstier/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(sudo colored-man-pages)
source $ZSH/oh-my-zsh.sh

pygmentize_less() {
  pygmentize $1 | less
}

alias pless="pygmentize_less"
alias pcat="pygmentize"
alias gs="git status -s"
alias gd="git diff"
alias gc="git commit -pv"
alias ga="git add"
alias vim="nvim"
alias ag="ag --pager=less"
alias p="pydoc"


export LSCOLORS="exfxcxdxbxegedabagacad"

export HISTSIZE=1000
export SAVEHIST=1000
export HISTFILE=~/.history


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
