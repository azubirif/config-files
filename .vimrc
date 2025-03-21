set backspace=indent,eol,start
set clipboard=unnamedplus

syntax enable
set number
set termguicolors
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set mouse=a

set scrolloff=3
set t_Co=256
set encoding=utf-8

let g:UltiSnipsExpandTrigger='<c-j>'
let g:UltiSnipsSnippetsDir = "~/.vim/plugged/vim-snippets/UltiSnips"
let g:UltiSnipsSnippetDirectories=["my-snippets", "UltiSnips"]

" Desactivar error highlighting en pylsp
let g:lsp_diagnostics_enabled = 0

let mapleader = " "

" Plugins
call plug#begin()
Plug 'lervag/vimtex'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'ycm-core/YouCompleteMe'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'SirVer/ultisnips'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Plug 'ryanoasis/vim-devicons'
Plug 'Donaldttt/fuzzyy'
Plug 'rstacruz/vim-closer'
Plug 'tpope/vim-fugitive'
call plug#end()
let g:ycm_auto_trigger=1

let g:vimtex_compiler_method = "latexmk"
let g:vimtex_view_general_viewer='okular'

let t:is_transparent = 0

function! Toggle_transparent()
    if t:is_transparent == 0
        hi Normal guibg=NONE ctermbg=NONE
        let t:is_transparent = 1
    else
		set background=dark
        let t:is_transparent = 0
     endif
endfunction
nnoremap <F1> : call Toggle_transparent()<CR>

let g:airline_powerline_fonts = 1

set completeopt-=preview

if !exists('g:airline_symbols')

    let g:airline_symbols = {}

endif

" unicode symbols

let g:airline_left_sep = '»'

let g:airline_left_sep = '▶'

let g:airline_right_sep = '«'

let g:airline_right_sep = '◀'

let g:airline_symbols.linenr = '␊'

let g:airline_symbols.linenr = '␤'

let g:airline_symbols.linenr = '¶'

let g:airline_symbols.branch = '⎇'

let g:airline_symbols.paste = 'ρ'

let g:airline_symbols.paste = 'Þ'

let g:airline_symbols.paste = '∥'

let g:airline_symbols.whitespace = 'Ξ'

" airline symbols

let g:airline_left_sep = ''

let g:airline_left_alt_sep = ''

let g:airline_right_sep = ''

let g:airline_right_alt_sep = ''

let g:airline_symbols.branch = ''

let g:airline_symbols.readonly = ''

let g:airline_symbols.linenr = ''

colorscheme gruvbox

set background=dark
" Maps
inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <C-f> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>

" Comandos de C
command! CRun w|!gcc % -o %<.out -lm && clear && ./%<.out

" Files
nmap <Leader>n :NERDTreeToggle <CR>
nmap <Leader>pv :Ex <CR>
nmap <Leader>pf :FuzzyFiles <CR>

" Scroll
" nmap <Down> <C-e>
" nmap <Up> <C-y>

" Comandos de Python
nmap <F5> <Esc>:w<CR>:!clear;python3 %<CR>
