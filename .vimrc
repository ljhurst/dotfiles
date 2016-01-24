"COLORS

"Allow Vim to use 256 colors
set t_Co=256

"Set color scheme to up
colorscheme up

"Set background to dark
set background=dark

"Enable syntax processing
syntax enable

"Set LaTeX syntax highlighting
let g:tex_flavor = "latex"

"Enable spell checking
set spell spelllang=en_us

"Turn on a ruler at column 80
set colorcolumn=80


"SPACES AND TABS

"Number of visual spaces per tab
set tabstop=4

"Number of visual spaces per indent
set shiftwidth=4

"Number of spaces in a tab when editing
set softtabstop=4

"Tabs are spaces
set expandtab

"Use auto indent
set autoindent

"For Java files use these settings
autocmd FileType java set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

"For Python files use these settings
autocmd FileType python set tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab

"For Makefiles use these settings
autocmd FileType make set shiftwidth=4 tabstop=4 noexpandtab

"Show line numbers
set number

"Show the most recent command in bottom bar
set showcmd

"Visual auto-complete for command menu
set wildmenu

"Redraw only when necessary
set lazyredraw

"Highlight matching []{}()
set showmatch


"SEARCH

"Search as characters are entered
set incsearch

"Highlight matches
set hlsearch


"KEY MAPPINGS

"Arrow keys have no effect in normal mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"Arrow keys have no effect in insert mode
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

"jk is escape in insert mode
inoremap jk <esc>


"ALIASES

"Alias for formatting JSON
command Prettify execute '%!python -m json.tool'

"PLUGINS

"Don't ask to load local vimrc
let g:localvimrc_ask=0
let g:localvimrc_sandbox=0

"Call pathogen to enable plugins in ~/.vim/bundle
execute pathogen#infect()
