" => vim-plug plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"call plug#begin()
call plug#begin('~/.vim/plugged')

" vim-plug plugin manager
Plug 'tpope/vim-sensible'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tmhedberg/SimpylFold'
" Plug 'Valloric/YouCompleteMe'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'tpope/vim-fugitive'
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set 7 lines to the cursor and relative numbers - when moving vertically using j/k
set so=7
set relativenumber

" Areas of the screen where the splits should occur
set splitbelow
set splitright

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

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1


" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable 

try
    colorscheme desert
catch
endtry

set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the
" standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Set to auto read when a file is changed from the outside
set autoread


" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map ; to : 
map ; :

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" => Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable folding
set foldmethod=manual
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Want to see the docstrings for folded code?
let g:SimpylFold_docstring_preview=1

" The former line ensures that the autocomplete window goes away when you’re done with it, and the latter defines a shortcut for goto definition.
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" => Highlight all instances of word under cursor, when idle.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Useful when studying strange source code.
" Type z/ to toggle highlighting on/off.
nnoremap z/ :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction


" => save and run current file
noremap <f9> :w\|!./%<CR>
noremap <f10> :w\|!python3 -i %<CR>

