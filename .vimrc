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
set guioptions-=
"fix file style
let g:php_cs_fixer_level = "psr2"


"-----------------EDITOR---------------" 
syntax enable                                           "use syntax
set autoindent                                          "autoindent your code on brackets
set autowriteall                                        "write when switching buffer
set backspace=start,eol,indent                          "makes backspace function like normal
set complete=.,w,b,u
set expandtab                                           "make tabs spaces
set foldcolumn=2
set laststatus=2
set number relativenumber                               "line numbers!
set softtabstop=4 shiftwidth=4 smarttab                 
set tabstop=4                                           "4 spaces per tab



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


"namespace import 
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

"expand import
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>

"-----------------EDITOR---------------" 
nmap <Leader>f :tag 

"-----------------Splitting--------------"
set splitbelow
set splitright
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>



"---------------SNIPPET------------------"

 

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


"----------------NOTES-------------"
"redo tags with ctags -R --exclude

