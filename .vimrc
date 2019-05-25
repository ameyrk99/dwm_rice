" Vim config by Amey Khairnar

execute pathogen#infect()

set nocompatible

set history=500

" Base 16 theme to use terminal colors
set background=dark
set termguicolors
" colorscheme breezy
colorscheme material
let g:material_theme_style = 'palenight'
let g:material_terminal_italics = 1

filetype plugin on
filetype indent on
filetype on
syntax on

set autoread
set hidden
set nowrap
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
" set colorcolumn=100

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2
set number
set wildmenu
set ruler

" For regular expressions turn magic on
set magic

" Add a bit extra margin to the left
set foldcolumn=1

"Vim will highlight searched words
set hlsearch

set ai      "Auto indent
set si      "Smart indent
set wrap    "Wrap lines

"Get backspace to work 
set backspace=indent,eol,start

" Change shell
set shell=/bin/zsh

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

augroup litecorrect 
    autocmd!  
    autocmd FileType markdown,mkd call litecorrect#init() 
    autocmd FileType textile call litecorrect#init()
augroup END


""""""""""""""""""""""""""""""
" => Mapping
""""""""""""""""""""""""""""""
let mapleader= " "
nmap <leader>w :w!<cr>                          " Fast saving
nmap <leader>g :Goyo<cr>                        " Toggle goyo
nmap <leader>ty :source ~/.vim/vimty.vim<cr>    " Typewriter mode
nmap <leader>m *                                " Find all the words below cursor
" Replace stuff
nmap <leader>r :%s/
" Fix indentation
nmap <leader>i =i{
" Add lines without exiting normal"
nmap <CR> o<Esc>k

"Copy to system clipboard
noremap <leader>tsc "+y
"Paste from system clipboard
map <leader>fsp o<Esc>"+Pk

"Navigation between window panes
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"split
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Pressing <space>ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

"cancel search with escape
nnoremap <silent>,, :nohlsearch<CR>

" Using the Guides
inoremap <C-Space> <Esc>/<++><CR>"_c4l
inoremap <C-@> <C-Space>
vnoremap <C-Space> <Esc>/<++><CR>"_c4l
vnoremap <C-@> <C-Space>
map <C-Space> <Esc>/<++><CR>"_c4l
map <C-@> <C-Space>

""""""""""""""""""""""""""""""
" => SimpleFold
""""""""""""""""""""""""""""""
set foldmethod=indent
set foldlevel=99
nnoremap <leader>F za
let g:SimpylFold_docstring_preview=1

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" set noshowmode

" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

let g:lightline = {
      \ 'colorscheme': 'material_vim',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

""""""""""""""""""""""""""""""
" => Syntastic
""""""""""""""""""""""""""""""
let g:stntastic_alwayspopulate_loc_list=1
let g:stntastic_auto_loc_list=1
let g:stntastic_check_on_open=1
let g:stntastic_check_on_wq=1

""""""""""""""""""""""""""""""
" => Nerd Tree
""""""""""""""""""""""""""""""
map <leader>f :NERDTreeToggle<CR>
let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
nmap <leader>j :NERDTreeFind<CR>
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

""""""""""""""""""""""""""""""
" => YouCompleteMe
""""""""""""""""""""""""""""""
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>'
nnoremap <leader>yj :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>yg :YcmCompleter GoTo<CR>
nnoremap <leader>yi :YcmCompleter GoToImplementationElseDeclaration<CR>
nnoremap <leader>yt :YcmCompleter GetTypeImprecise<CR>
nnoremap <leader>yd :YcmCompleter GetDoc<CR>
nnoremap <leader>yf :YcmCompleter FixIt<CR>
nnoremap <leader>ys :YcmDiags<CR>
nnoremap <leader>yD :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>yR :YcmRestartServer<CR>

""""""""""""""""""""""""""""""
" => Multiple Cursors
""""""""""""""""""""""""""""""
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<leader>fwa'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
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
" => Vim Markdown
""""""""""""""""""""""""""""""
let g:vim_markdown_conceal = 0

let g:tex_conceal = ""

" Tex
let g:livepreview_previewer = 'zathura'

" let vim_markdown_preview_github=1

""""""""""""""""""""""""""""""
" => Latex Files
""""""""""""""""""""""""""""""
autocmd FileType tex map \gs o\smel{<++>}{<++>}{<++>}<Esc>0<C-Space>
autocmd FileType tex map \go o\onln{<++>}{<++>}{<++>}<Esc>0<C-Space>
autocmd FileType tex map \tb i\textbf{<++>}<Esc>0<C-Space>
autocmd FileType tex map \ti i\textit{<++>}<Esc>0<C-Space>
autocmd FileType tex map \ss o\[<CR>\begin{split}<CR>\end{split}<Esc>O<++> & = <++><Esc>jo\]<Esc>3k$<C-Space>
autocmd FileType tex map \sm o\begin{minipage}<CR><++><CR>\end{minipage}<CR>\begin{minipage}<CR><++><CR>\end{minipage}<Esc>5k$<C-Space>
autocmd FileType tex map <leader>l i\documentclass[<++>, margin=<++>]{<++>}<CR><CR>\title{<++>}<CR>\author{<++>}<CR><CR>\begin{document}<CR><CR>\maketitle<CR><CR><++><CR>\end{document}<Esc>gg
autocmd FileType tex map \sf <Esc>:w!<CR>:!pdflatex %<CR><CR>

""""""""""""""""""""""""""""""
" => C, C++
""""""""""""""""""""""""""""""
autocmd FileType c,cpp set colorcolumn=100
autocmd FileType c,cpp map \mi oint main(int argc, char** argv) {<CR>return 0;}<ESC>3k$/main<CR>,,o
autocmd FileType c,cpp map \fi o<++>(<++>) {<CR>return <++>;}<Esc>3k$<C-Space>
autocmd FileType c,cpp map \if oif(<++>) {<CR><++>}<Esc>3k$<C-Space>
autocmd FileType c,cpp map \ie oif(<++>) {<CR><++>} else {<CR><++>}<Esc>6k$<C-Space>
autocmd FileType c,cpp map \lf ofor(<++>; <++>; <++>) {<CR><++>}<Esc>3k$<C-Space>
autocmd FileType c,cpp map \lw owhile(<++>) {<CR><++>}<Esc>3k$<C-Space>
autocmd FileType c,cpp map \ld odo {<CR><++>} while(<++>);<Esc>2k$<C-Space>
autocmd FileType c,cpp map \sp oprintf("<++>", <++>);<Esc>0<C-Space>
autocmd FileType c,cpp map \si o#include <<++>><Esc>0<C-Space>
autocmd FileType c,cpp map \cf o/*<CR>===  FUNCTION  ==================================================================<CR>         Name:  <++><CR>Description:  <++><Esc>0wlxxxxxxxo=================================================================================<Esc>0wlxxA<CR>/<Esc>5k$<C-Space>
autocmd FileType c,cpp map \cc o/*--------------------------------------------------------------------------<CR><++><CR>-------------------------------------------------------------------------*/<Esc>2k<C-Space>
