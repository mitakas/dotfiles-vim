# my vim configuration

## Installation

I use [pathogen.vim](https://github.com/tpope/vim-pathogen) to manage my plugins.

    pushd .
    mkdir ~/.vim
    cd ~/.vim && git clone https://github.com/mitakas/dotfiles-vim.git .
    git submodule update --init # pathogen, as well as the other plugins are submodules
    cd ~/.vim/bundle/vimproc/ && make -f make_unix.mak # compile vimproc
    ln -s ~/.vim/vimrc ~/.vimrc
    popd

For included plugins see the [bundle](https://github.com/mitakas/dotfiles-vim/tree/master/bundle) folder.
