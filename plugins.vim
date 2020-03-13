filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

":PluginInstall to install everything below, sourced from github
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'yorickpeterse/happy_hacking.vim.git'
Plugin 'preservim/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'skwp/greplace.vim'

"All Plugins before here"
call vundle#end()            " required

filetype plugin indent on


