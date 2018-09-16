" Plug (vim-plug) - plugin manager
" https://github.com/junegunn/vim-plug
" Basically: after adding a plug, just remember to run 'PlugInstall'
" This is best with neovim!
" https://neovim.io/
" http://nerditya.com/code/guide-to-neovim/
" Other helpful links:
" http://learnvimscriptthehardway.stevelosh.com/
" http://andrewradev.com/2011/08/06/making-vim-pretty-with-custom-colors/
" =====================================
call plug#begin('~/.vim/plugged')
" ------------------------------------- 

" various color schemes (neovim default is 'dark'; I like 'slate' with dark background)
" http://vimcolors.com/
Plug 'kaicataldo/material.vim'
Plug 'srcery-colors/srcery-vim'

" PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run install script
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  " Both options are optional. You don't have to install fzf in ~/.fzf
  " and you don't have to run install script if you use fzf only in Vim.
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'

Plug 'tpope/vim-surround'

Plug 'terryma/vim-multiple-cursors'

" Initialize plugin system
call plug#end()

" =====================================
" Initial settings
" =====================================

" highlight matches when searching
" Use C-l to clear (see key map section)
set hlsearch

" Line numbering
" Toggle set to ';n' in key map section
set number

" Disable line wrapping
" Toggle set to ';w' in key map section
set wrap

"disable showmode since using vim-airline; otherwise use 'set showmode'
set noshowmode

" file type recognition
filetype on
filetype plugin on
filetype indent on

" syntax highlighting
syntax on


" =====================================
" Theme color scheme settings
" =====================================
" - material
" - srcery

" enable color scheme
colorscheme srcery

" use the included lightline.vim theme:
let g:lightline = { 'colorscheme': 'srcery' }

" enable True colors for material color scheme
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" =====================================
" key map
" Understand mapping modes:
" http://stackoverflow.com/questions/3776117/what-is-the-difference-between-the-remap-noremap-nnoremap-and-vnoremap-mapping#answer-3776182
" http://stackoverflow.com/questions/22849386/difference-between-nnoremap-and-inoremap#answer-22849425
" =====================================

" change the leader key from "\" to ";" ("," is also popular)
let mapleader=","

" toggle line numbers
nnoremap <silent> <leader>n :set number! number?<CR>

" toggle line wrap
nnoremap <silent> <leader>w :set wrap! wrap?<CR>

" list buffers
nnoremap <silent> <leader>bl :ls<CR>
" list and select buffer
nnoremap <silent> <leader>bg :ls<CR>:buffer<Space>

" horizontal split with new buffer
nnoremap <silent> <leader>bh :new<CR>

" vertical split with new buffer
nnoremap <silent> <leader>bv :vnew<CR>

" fzf keybinding
nmap <leader>l :BLines<cr>
