" Use pathogen plugin manager
" execute pathogen#infect()

" Remove netrw banner
let g:netrw_banner = 0

" Enable folding. Use zM and space
set foldmethod=indent
set foldlevel=99
highlight Folded ctermbg=black
			
set nowrap
set tabstop=4	    " tab length
set shiftwidth=4    " auto indent
set expandtab       " convert tab to spaces
set paste

augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost ~/.vimrc source ~/.vimrc
augroup END " }


" Vim-Latex settings
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
"filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'