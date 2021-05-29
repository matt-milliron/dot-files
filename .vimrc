set nocompatible              " be iMproved, required
filetype off                  " required

:imap jj <Esc>

syntax enable

set number

"Provides tab completion for all file-related trasks
set path+=**

"Display all matching files when we tab complete
set wildmenu

"doesn't function like vi
set nocompatible

"enable filetype plugin
filetype plugin on

" turn relative line numbers on
:set relativenumber
:set rnu
"Turn off Arrow Keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"removes banner in netrw and sets liststyle
let g:netrw_banner = 0


" Sets highlighting on search and sets colors
:set hlsearch

"hilights search text
set incsearch
