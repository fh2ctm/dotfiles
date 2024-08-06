" options {{{
set autoread
set backspace=eol,indent,start
set background&
set breakindent
set colorcolumn=81,101,121
set expandtab
set foldenable
set foldlevel=4
set foldmethod=indent
set formatoptions=
set hlsearch
set incsearch
set ignorecase
set laststatus=2
set mouse=a
set nocompatible
set number
set relativenumber
set scrolloff=9
set shiftround
set shiftwidth=2
set shortmess+=aI
set showcmd
set signcolumn=number
set smartcase
set smartindent
set smoothscroll
set statusline=%F%M%=%c;%l/%L
set termguicolors
set t_Co=256
set wildmenu
" }}}

" leader {{{
let mapleader="\ "
let maplocalleader="\\"
" }}}

" variables {{{
let g:context_highlight_tag = '<hide>'

let g:filetype_md = 'pandoc'

let g:fzf_vim = {}
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:pencil_higher_contrast_ui = 1
let g:pencil_terminal_italics = 1

let g:UltiSnipsEditSplit = "tabdo"
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsJumpForwardTrigger = "<Tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"

let g:vimtex_quickfix_ignore_filters = ['Overfull']
" }}}

" filetypes {{{
augroup FtHtml
  autocmd!
  autocmd FileType html :iabbrev _< &lt;
  autocmd FileType html :iabbrev _> &gt;
  autocmd FileType html :iabbrev _" &quot;
  autocmd FileType html :iabbrev _' &apos;
  autocmd FileType html :iabbrev _& &amp;
augroup END

augroup FtMd
  autocmd!
  autocmd FileType md setlocal shiftwidth=4
augroup END

augroup FtVim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim setlocal foldlevel=0
augroup END

filetype plugin indent on
syntax enable
" }}}

" proc {{{
if !empty($COLORFGBG) && stridx($COLORFGBG, ';') != -1
  let parts = split($COLORFGBG, ';')
  if parts[1] == '0'
    set background=dark
  endif
else
  set background=light
endif
" }}}

" keymaps {{{
nnoremap J <c-d>
nnoremap K <c-u>

nnoremap [h <c-t>
nnoremap ]h <c-]>

nnoremap <leader>b      :Buffers<cr>
nnoremap <leader>c      :Commands<cr>
nnoremap <leader>f      :Files<cr>
nnoremap <leader>h      :Helptags<cr>
nnoremap <leader>j      :Jumps<cr>
nnoremap <leader>l      :Lines<cr>
nnoremap <leader>m      :Marks<cr>
nnoremap <leader>r      :Rg<cr>
nnoremap <leader>s      :Snippets<cr>
nnoremap <leader>t      :Tags<cr>
nnoremap <leader>w      :Windows<cr>

nnoremap <leader>N      :setl nu! rnu!<cr>
nnoremap <leader>Pc     :PlugClean<cr>
nnoremap <leader>Pi     :w<cr>:source %<cr>:PlugInstall<cr>
nnoremap <leader>Pu     :PlugUpdate<cr>
nnoremap <leader>U      :UltiSnipsEdit<cr>
" }}}

" plugins {{{
call plug#begin()
  Plug '/opt/homebrew/opt/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'lervag/vimtex'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'SirVer/ultisnips'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'wellle/context.vim'
call plug#end()
" }}}

" theme {{{
colorscheme PaperColor
" }}}

