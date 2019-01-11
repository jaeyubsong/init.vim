
" Editing behavior
set mouse=a                     " Allow use of mouse
set showmode                    " always show what mode we're currently editing in
set tabstop=2                   " spaces for tab
set softtabstop=2               " 
set expandtab                   " convert tabs to spaces
set shiftwidth=2                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start " allow backspacing over everything in indent mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set showmatch                   " set show matching parenthesis
set ignorecase                  " ignore case when searching
set smartcase                   " if search has no uppercase, not casesensitive, case sensitive otherwise
set smarttab                    " insert tabs on the start of a line according to shiftwidth, not tabstop
set scrolloff=4                 " keep 4 lines off the edges of the screen when scrolling

colorscheme gruvbox
set background=dark             " set dark mode

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'zchee/deoplete-jedi'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'morhetz/gruvbox'


" Initialize plugin system
call plug#end()

let g:deoplete#enable_at_startup = 1
