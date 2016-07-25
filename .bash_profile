source ~/.bash_aliases

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
GREEN="\[$(tput setaf 107)\]"
BLUE="\[$(tput setaf 110)\]"
PURPLE="\[$(tput setaf 132)\]"
RED="\[$(tput setaf 131)\]"
CYAN="\[$(tput setaf 116)\]"
YELLOW="\[$(tput setaf 216)\]"
DARKGREY="\[$(tput setaf 59)\]"
LIGHTGREY="\[$(tput setaf 188)\]"
WHITE="\[$(tput setaf 231)\]"
BLACK="\[$(tput setaf 16)\]"
RESET="\[$(tput sgr0)\]"
export PS1="${GREEN}\w${PURPLE}\$(parse_git_branch) ${RESET}\$ "

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

test -f ~/.git-completion.bash && . $_
