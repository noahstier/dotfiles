export ZSH=/Users/noahstier/.oh-my-zsh
ZSH_THEME="robbyrussell"


plugins=(sudo colored-man-pages)
source $ZSH/oh-my-zsh.sh

pygmentize_less() {
  pygmentize $1 | less
}

alias pless="pygmentize_less"
alias pcat="pygmentize"
alias img="imgcat"

alias gs="git status -s"
alias gd="git diff"
alias gc="git commit -pv"
alias gco="git checkout"
alias ga="git add"
alias gp="git push"
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"

alias tm="tmux"
alias vim="nvim"
alias ag="ag --pager=less"
alias p="pydoc"
alias wcl="wc -l"

alias vimrc="vim ~/.vimrc"
alias zshrc="vim ~/.zshrc && source ~/.zshrc"
alias tmux.conf="vim ~/.tmux.conf && tmux source ~/.tmux.conf"


export LSCOLORS="exfxcxdxbxegedabagacad"

export HISTSIZE=1000
export SAVEHIST=1000
export HISTFILE=~/.history

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
