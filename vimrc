set number
set nocompatible              
filetype off
colorscheme gruvbox
set background=dark
syntax on   
set complete+=kspell
"set completeopt=menuone,longest
set completeopt=noselect
set tabstop=4
set shiftwidth=4
set mouse=a
set clipboard=unnamedplus
set shortmess+=c
set softtabstop=4

if &term =~ '^xterm\|rxvt'
    " solid underscore
    let &t_SI .= "\<Esc>[4 q"
    " solid block
    let &t_EI .= "\<Esc>[2 q"
    " 1 or 0 -> blinking block
    " 3 -> blinking underscore
    " Recent versions of xterm (282 or above) also support
    " 5 -> blinking vertical bar
    " 6 -> solid vertical bar
endif
if &term =~ "xterm"
    let &t_SI = "\<Esc>[6 q"
    let &t_SR = "\<Esc>[4 q"
    let &t_EI = "\<Esc>[2 q"
endif


call plug#begin()
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	"Plug 'prabirshrestha/vim-lsp',
	"Plug 'mattn/vim-lsp-settings',	
	"Plug 'prabirshrestha/asyncomplete.vim',
	Plug 'vim-scripts/AutoComplPop',
call plug#end()

noremap <space>e : NERDTreeToggle<CR>


