"
"                                       ██
"                                      ░░
"    ███████   █████   ██████  ██    ██ ██ ██████████
"   ░░██░░░██ ██░░░██ ██░░░░██░██   ░██░██░░██░░██░░██
"    ░██  ░██░███████░██   ░██░░██ ░██ ░██ ░██ ░██ ░██
"    ░██  ░██░██░░░░ ░██   ░██ ░░████  ░██ ░██ ░██ ░██
"    ███  ░██░░██████░░██████   ░░██   ░██ ███ ░██ ░██
"   ░░░   ░░  ░░░░░░  ░░░░░░     ░░    ░░ ░░░  ░░  ░░

call plug#begin('~/.vim/plugged')

" Color Scheme
Plug 'nanotech/jellybeans.vim'
Plug 'ryanoasis/vim-devicons'

" Autocomplete in neovim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'ervandew/supertab'

" Shows level of indentation
Plug 'Yggdroot/indentLine'

" Commenter for neovim
Plug 'scrooloose/nerdcommenter'

" File tree
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }

" Auto pair brackets or quotes
Plug 'jiangmiao/auto-pairs'

" Status bar for neovim 
Plug 'itchyny/lightline.vim'

" Git status
Plug 'airblade/vim-gitgutter'

" Show rgb or hex colors in neovim
Plug 'lilydjwg/colorizer', { 'for': [ 'css', 'cpp' ] }

call plug#end()

" For plugins to work (still not sure what it does)
set nocompatible

set history=500

" Colorscheme
set background=dark
colorscheme jellybeans
let g:jellybeans_use_term_italics = 1
set termguicolors

filetype plugin on
filetype indent on
filetype on
syntax on

set autoread                      " Auto read changes to file outside vim
set hidden                        " Hide unsave file to hidden buffers
set nowrap                        " Don't wrap text
set cursorline cursorcolumn       " Highlight curr column and row of code

set smartindent autoindent
set tabstop=2 shiftwidth=2 expandtab
" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2
set number                        " Show current line number
set relativenumber                " Show other line nums relative to curr
set wildmenu                      " Command completion in enhanced mode
" Ignore compiled files
set wildignore=*.pyc,*.o,*.obj,*.svn,*.class,*.aux,*.fdb_latexmk,*.fls,*.gz
set noshowcmd                     " Don't show the used command

" For regular expressions turn magic on
" set magic

set foldcolumn=1                  " Add a bit extra margin to the left

set hlsearch                      " Highlight search word
set incsearch                     " Search as you type
set ignorecase                    " Ignore case while searching
set smartcase                     " But not when there is a char in CAPS

set ai                            " Auto indent
set si                            " Smart indent
set wrap                          " Wrap lines

" Center vertically when going in insert
autocmd InsertEnter * norm zz

"Get backspace to work 
set backspace=indent,eol,start

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

""""""""""""""""""""""""""""""
" => Mapping
""""""""""""""""""""""""""""""
" Map leader key to space
let mapleader=" "
" Remap escape
inoremap kj <Esc>
tnoremap kj <C-\><C-N>

" Replace
nmap <leader>r :%s///g<Left><Left><Left>
" Replace word under the cursor
nmap <leader>R :%s/<C-R><C-W>//g<Left><Left>
" End search
nnoremap <silent>,, :noh<CR>

" Fix indentation
nmap <leader>i =i{
" Add lines without exiting normal mode
nmap <CR> o<Esc>k

" Go new next visual line (to tackle wraped text)
nnoremap <silent> k gk
nnoremap <silent> j gj

" Toggle spell checking (EN US)
map <leader>ss :setlocal spell! spelllang=en_us<cr>

""""""""""""""""""""""""""""""
" => Multiple files
""""""""""""""""""""""""""""""
set splitbelow splitright

" Remap movement b/w splits
" Normal mode:
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" Insert mode:
inoremap <C-J> <Esc><C-W><C-J>
inoremap <C-K> <Esc><C-W><C-K>
inoremap <C-H> <Esc><C-W><C-H>
inoremap <C-L> <Esc><C-W><C-L>

" Terminal mode:
tnoremap <C-J> <C-\><C-N><C-W><C-J>
tnoremap <C-K> <C-\><C-N><C-W><C-K>
tnoremap <C-H> <C-\><C-N><C-W><C-H>
tnoremap <C-L> <C-\><C-N><C-W><C-L>

" Resize the splits
nnoremap <silent> <C-Down> :resize -3<CR>
nnoremap <silent> <C-Up> :resize +3<CR>
nnoremap <silent> <C-Left> :vertical resize +3<CR>
nnoremap <silent> <C-Right> :vertical resize -3<CR>

" Change splits from hori to vert and vice-versa
map <leader>th <C-W>t<C-W>H
map <leader>tk <C-W>t<C-W>K

" Remove | (pipe) from the split bar 
set fillchars+=vert:\ 

" Tabs
" gt to go up, gT to go down, #gt to # tag
nnoremap <silent> H gT
nnoremap <silent> L gt

""""""""""""""""""""""""""""""
" => Status & tab (Lightline)
""""""""""""""""""""""""""""""
set laststatus=2                " Always show the status line
set showtabline=2               " Always show the tabline

" Dont show mode cause lightline is doing it already
set noshowmode

let g:lightline = {
    \   'colorscheme': 'jellybeans',
    \   'component_function': {
    \       'filetype': 'MyFiletype',
    \   }
    \   }

  function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
  endfunction
  
  let g:lightline.separator = {
  \   'left': '', 'right': ''
  \   }
let g:lightline.subseparator = {
  \   'left': '', 'right': ''
  \   }

let g:lightline.component_expand = {
  \   'coc_error'        : 'LightlineCocErrors',
  \   'coc_warning'      : 'LightlineCocWarnings',
  \   'coc_info'         : 'LightlineCocInfos',
  \   'coc_hint'         : 'LightlineCocHints',
  \   'coc_fix'          : 'LightlineCocFixes'
  \ }

let g:lightline.component_type = {
  \   'coc_error'        : 'error',
  \   'coc_warning'      : 'warning',
  \   'coc_info'         : 'tabsel',
  \   'coc_hint'         : 'middle',
  \   'coc_fix'          : 'middle',
  \ }

function! s:lightline_coc_diagnostic(kind, sign) abort
  let info = get(b:, 'coc_diagnostic_info', 0)
  if empty(info) || get(info, a:kind, 0) == 0
    return ''
  endif
  try
    let s = g:coc_user_config['diagnostic'][a:sign . 'Sign']
  catch
    let s = ''
  endtry
  return printf('%s %d', s, info[a:kind])
endfunction

function! LightlineCocErrors() abort
  return s:lightline_coc_diagnostic('error', 'error')
endfunction

function! LightlineCocWarnings() abort
  return s:lightline_coc_diagnostic('warning', 'warning')
endfunction

function! LightlineCocInfos() abort
  return s:lightline_coc_diagnostic('information', 'info')
endfunction

function! LightlineCocHints() abort
  return s:lightline_coc_diagnostic('hints', 'hint')
endfunction
\ }

autocmd User CocDiagnosticChange call lightline#update()

let g:lightline.active = {
  \  'left': [[ 'mode', 'paste' ], [ 'filename' ], [ 'readonly', 'modified' ]],
  \  'right': [[ 'lineinfo' ], [ 'percent' ], [ 'coc_error', 'coc_warning', 'coc_hint', 'coc_info' ]]
  \ }

let g:lightline.tabline = {
	\  'left': [ [ 'tabs' ] ],
	\  'right': [ [ 'filetype' ] ] }

let g:indentLine_setConceal = 0

""""""""""""""""""""""""""""""
" => NerdTree
""""""""""""""""""""""""""""""
" Start NERDTree at startup
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeRespectWildIgnore=1

""""""""""""""""""""""""""""""
" => Git-gutter
""""""""""""""""""""""""""""""
nmap <leader>\g :GitGutterLineHighlightsToggle<CR>
" let g:gitgutter_highlight_linenrs = 1

""""""""""""""""""""""""""""""
" => NerdCommenter
""""""""""""""""""""""""""""""
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

""""""""""""""""""""""""""""""
" Autocompletion
"""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

""""""""""""""""""""""""""""""
" => Run/Compile
""""""""""""""""""""""""""""""
autocmd FileType python map \sr <Esc>:w!<CR>:!python %<CR>
" TODO Fix error of building when c, cpp open in same session
autocmd FileType c map \sb <Esc>:w!<CR>:!make %:r<CR>
autocmd FileType cpp map \sb <Esc>:w!<CR>:!g++ % -o %:r<CR>
autocmd FileType c,cpp map \mb <Esc>:w!<CR>:!make<CR>
autocmd FileType c,cpp map \sr <Esc>:w!<CR>:!./%:r<CR>
autocmd FileType go map \sb <Esc>:w!<CR>:!go build<CR>
autocmd FileType go map \sr <Esc>:w!<CR>:!go run main.go<CR>

