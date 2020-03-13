"/ PREREQ
"/ Vundle is required to install
"       git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"/

set nocompatible                                        "Latest settings

"-----------------SOURCING-----------------"
so ~/.vim/plugins.vim


"-----------------VISUALS-----------------"
colorscheme happy_hacking                               "have to use the best one there is
set t_CO=256
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R


"-----------------EDITOR---------------" 
syntax enable                                           "use syntax
set number relativenumber                               "line numbers!
set tabstop=4                                           "4 spaces per tab
set expandtab                                           "make tabs spaces
set autoindent                                          "autoindent your code on brackets
set softtabstop=0 shiftwidth=4 smarttab                 "remove a space instead of tab when you delete      
set backspace=start,eol,indent                          "makes backspace function like normal
set laststatus=2
set foldcolumn=2



"-----------------SEARCHING---------------"
set hlsearch
set incsearch
set grepprg=grep 

"-----------------NERD TREE---------------"
nmap <Leader>NT :NERDTreeToggle<cr>
"/ autocmd StdinReadPre * let s:std_in=1
"/ autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
let NERDTreeHijackNetrw = 0

"-----------------CONTROL-P---------------"
"/ if this doesnt work, you need ctags
"/ Mac is brew install ctags
"/ Most 'nix is `sudo apt-get install exuberant-ctags`
nmap <Leader>S :CtrlPBufTag<cr>
nmap <Leader>R :CtrlPMRUFiles<cr>
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'order:ttb,min:1,max:30,results:30'


"-----------------MAPPINGS---------------" 
nmap <Leader>ev :tabedit ~/.vimrc<cr>
nmap <Leader><space> :nohlsearch<cr>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>


"-----------------Auto-Commands--------------"
"auto source vimrc on save"
"autocmd! prevents n+1 on save, clears out group before executing
augroup autsourcing
    autocmd!                                             
    autocmd BufWritePost .vimrc source %
augroup END 


"-----------------EDITOR---------------" 
nmap <Leader>f :tag 

"-----------------Spitting--------------"
set splitbelow
set splitright
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

