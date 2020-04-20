call plug#begin('~/.vim/plugged')

Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-surround'
Plug 'dylanaraps/wal.vim'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'lervag/vimtex'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'

call plug#end()

let g:airline_theme='zenburn'
let g:goyo_linenr=1

" Maps

map <C-o> :NERDTreeToggle<CR>
map ; :Files<CR>

hi clear CursorLine
augroup CLClear
    autocmd! ColorScheme * hi clear CursorLine
augroup END

hi CursorLineNR cterm=bold
augroup CLNRSet
    autocmd! ColorScheme * hi CursorLineNR cterm=bold
augroup END

autocmd BufNewFile,BufRead *.md set filetype=markdown

" Always show statusline
"set laststatus=2
"set relativenumber
set rnu
set number
set noshowmode
let g:airline_powerline_fonts=1
