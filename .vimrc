"set shell=/bin/bash
set ignorecase
set smartcase
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
let mapleader = ';'
ino jk <esc>
cno jk <c-c>
inoremap <C-;> <Right>
" Switching windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Switching from terminal window
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
tnoremap jk  <C-\><C-n>

" copy and paste
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> "+p
imap <C-v> <ESC>"+pa
nmap <C-v> "+p
"open split right and bottom
set splitbelow
set splitright
" Enter newline in normal mode
nmap <S-Enter> o<Esc>k
nmap <CR> O<Esc>j
" Quick compile and run c++ programs
nmap <leader>v :w \| !g++ % && ./a.out
"------------Tabs------------

"map <M-l> gt
"map <M-j> gT
"map <C-1> 1gt
"map <C-2> 2gt
"map <C-3> 3gt
"map <C-4> 4gt
"map <C-5> 5gt
"map <C-6> 6gt
"map <C-7> 7gt
"map <C-8> 8gt
"map <C-9> 9gt
"map <C-0> :tablast<CR>
"------------Tabs End-----------
"------------Buffer Start-----------
set hidden
nmap <leader>T :enew<cr>
nmap <M-l> :bnext<CR>
nmap <M-j> :bprevious<CR>
tmap <M-l> <C-\><C-n>:bnext<CR>
tmap <M-j> <C-\><C-n>:bprevious<CR>

nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>
"switch to alternate buffer
nmap <leader>ba :b#<CR>		
"Jump to buffer number
nnoremap <F4> :buffers<CR>:buffer<Space>
"------------Buffer End-----------
"------------CTRL P Start-----------
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
" Use the nearest .git directory as the cwd
let g:ctrlp_working_path_mode = 'r'
nmap <leader>b :CtrlPBuffer<cr>
nmap <leader>m :CtrlPMixed<cr>
nmap <leader>r :CtrlPMRU<cr>
"------------CTRL P End-----------
"------------Pluign Mappings-----------
"nnoremap <F4> :GundoToggle<CR>
nnoremap <F5> :NERDTreeToggle<CR>
map <Leader> <Plug>(easymotion-prefix)
"------------Pluign Mappings End-----------

"------------Pluign Settings-----------
"set rtp+=/usr/local/lib/python3.4/dist-packages/powerline/bindings/vim/
"set showtabline=1
"set noshowmode
set number
set laststatus=2
set encoding=utf-8
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_idx_mode = 1
set guifont=Meslo\ LG\ S\ for\ Powerline\ 11
colo desert
let g:airline_theme='dark'
set t_Co=256
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
"------------Pluign Settings End-----------
"------------------------Vundle----------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'sjl/gundo.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-syntastic/syntastic'
Plugin 'myusuf3/numbers.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/neocomplete.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-repeat'
Plugin 'jiangmiao/auto-pairs'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()            " required
filetype plugin indent on    " required

"------------------------Vundle End----------------------------

" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2011 Apr 15
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

colorscheme Monokai
"To make Alt key work in terminal
"let c='a'
"while c <= 'z'
  "exec "set <M-".c.">=\e".c
  "exec "imap \e".c." <M-".c.">"
  "let c = nr2char(1+char2nr(c))
"endw

set timeout ttimeoutlen=50