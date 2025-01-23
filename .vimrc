set backspace=indent,eol,start
syntax enable
set number
set termguicolors
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

set scrolloff=3
set t_Co=256
set encoding=utf-8

let g:UltiSnipsExpandTrigger='<c-j>'
let g:UltiSnipsSnippetsDir = "~/.vim/plugged/vim-snippets/UltiSnips"
let g:UltiSnipsSnippetDirectories=["my-snippets", "UltiSnips"]

call plug#begin()
Plug 'lervag/vimtex'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'ycm-core/YouCompleteMe'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'SirVer/ultisnips'
call plug#end()
let g:ycm_auto_trigger=1

let g:vimtex_compiler_method = "latexmk"
let g:vimtex_view_method='okular'

let g:airline_powerline_fonts = 1

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

"Toggle YouCompleteMe on and off with F3
function Toggle_ycm()
    if g:ycm_show_diagnostics_ui == 0
        let g:ycm_auto_trigger = 1
        let g:ycm_show_diagnostics_ui = 1
        :YcmRestartServer
        :e
        :echo "YCM on"
    elseif g:ycm_show_diagnostics_ui == 1
        let g:ycm_auto_trigger = 0
        let g:ycm_show_diagnostics_ui = 0
        :YcmRestartServer
        :e
        :echo "YCM off"
    endif
endfunction
map <F3> :call Toggle_ycm() <CR>

" Comandos de C
command! CRun w|!gcc % -o %<.out && ./%<.out

" Comandos de Python
nmap <F5> <Esc>:w<CR>:!clear;python3 %<CR>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
