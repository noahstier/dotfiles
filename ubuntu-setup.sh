sudo apt install -y \
  git tmux vim-gnome zsh \
  curl wget \
  automake autotools-dev cmake \
  python-dev python3-dev \
  gimp mpv libav-tools \
  zlib1g-dev

git clone https://github.com/noahstier/dotfiles

# tmux

cp dotfiles/.tmux.conf ~

# vim

mkdir -p ~/.vim/files
mkdir ~/.vim/files/backup
mkdir ~/.vim/files/swap
mkdir ~/.vim/files/undo
mkdir ~/.vim/files/info

cp dotfiles/.vimrc ~

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer

# zsh + oh-my-zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

curl -sSf https://static.rust-lang.org/rustup.sh | sh
cargo install ripgrep fd-find exa

cp dotfiles/.zshrc ~
chsh -s /usr/bin/zsh

# Freya gnome-terminal color scheme
wget -O xt  http://git.io/v3D4o && chmod +x xt && ./xt && rm xt

# conda + python
curl https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -o miniconda.sh
sh miniconda.sh -b
~/miniconda3/bin/conda install -y python=3.5
~/miniconda3/bin/conda config --prepend channels intel
~/miniconda3/bin/conda install -y intelpython3_core
