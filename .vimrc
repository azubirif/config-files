syntax enable

set number

call plug#begin()

Plug 'lervag/vimtex'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ycm-core/YouCompleteMe'

call plug#end()

let g:vimtex_view_method = 'zathura'

let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsSnippetDirectories=["~/.vim/plugged/vim-snippets/snippets"]

colorscheme gruvbox

set background=dark
