setxkbmap -option caps:ctrl_modifier

sudo apt install git tmux vim zsh

if ! vim --version | grep -o '+clipboard'
then
  echo 'vim missing clipboard'
  exit 1
fi

if ! vim --version | grep -o '+python/'
then
  echo 'vim missing python'
  exit 1
fi

if ! vim --version | grep -o '+python3/'
then
  echo 'vim missing python3'
  exit 1
fi

git clone https://github.com/noahstier/dotfiles
cp dotfiles/.zshrc dotfiles/.vimrc dotfiles/.tmux.conf ~

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

vim -S plugininstall.vim

cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer


curl https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
./miniconda.sh -b
conda install -y python=3.5
conda install -y intelpython3_core

curl -sSf https://static.rust-lang.org/rustup.sh | sh
cargo install ripgrep fd-find
