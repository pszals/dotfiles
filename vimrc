execute pathogen#infect()
syntax on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
au BufNewFile,BufRead *.cljs set filetype=clojure
au BufNewFile,BufRead *.hiccup set filetype=clojure
filetype plugin indent on
let g:solarized_termtrans = 1
syntax enable
set background=dark
colorscheme solarized
set number
set cursorline
" Height of the command bar
set cmdheight=2
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 
"
" " For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 

" Show commands as they're typed
set showcmd

" How many tenths of a second to blink when matching brackets
set mat=2

" don't fold text automatically
set foldmethod=manual

" use mouse to change buffer size
" set mouse=a

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8
set termencoding=utf8
" Use spaces instead of tabs
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType ruby setlocal ts=2 sts=2 sw=2
autocmd FileType python setlocal ts=2 sts=2 sw=2
autocmd FileType java setlocal ts=4 sts=4 sw=4
" unlimited characters per line
set lbr
set tw=0
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" open nerd tree
map <leader>nt :NERDTreeToggle<cr>

" <alt-l> toggles colored parens for lisp
map ¬ :RainbowParenthesesLoadRound<cr>:RainbowParenthesesActivate<cr>
set runtimepath^=~/.vim/bundle/ctrlp.vim
" Seeing is Believing
" Gvim
nmap <buffer> <M-r> <Plug>(seeing-is-believing-run)
xmap <buffer> <M-r> <Plug>(seeing-is-believing-run)
imap <buffer> <M-r> <Plug>(seeing-is-believing-run)

nmap <buffer> <M-m> <Plug>(seeing-is-believing-mark)
xmap <buffer> <M-m> <Plug>(seeing-is-believing-mark)
imap <buffer> <M-m> <Plug>(seeing-is-believing-mark)

" Terminal
nmap <buffer> <F5> <Plug>(seeing-is-believing-run)
xmap <buffer> <F5> <Plug>(seeing-is-believing-run)
imap <buffer> <F5> <Plug>(seeing-is-believing-run)

nmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
xmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
imap <buffer> <F4> <Plug>(seeing-is-believing-mark)

" sets cursor at correct indentation on new lines
function! IndentWithI()
    if len(getline('.')) == 0
        return "\"_ccO"
    else
        return "i"
    endif
endfunction
nnoremap <expr> i IndentWithI()

" Resize buffer panes
" set winwidth=125
" set winminwidth=20

" Copy/paste to system
set clipboard=unnamed
"
" CtrlP settings for large projects
let g:ctrlp_max_depth=40
let g:ctrlp_max_files=0
