""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1. Vbundle
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 2. Plugin list
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " "

Plugin 'scrooloose/nerdtree'
nnoremap <leader>d :NERDTreeToggle<cr>

Plugin 'kien/ctrlp.vim'
map <Leader>b :CtrlPBuffer<CR>
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" https://github.com/airblade/vim-gitgutter
Plugin 'airblade/vim-gitgutter'

Plugin 'sickill/vim-monokai'

Plugin 'sjl/gundo.vim'
nnoremap <leader>g :GundoToggle<cr>

Plugin 'tComment'
Plugin 'chreekat/vim-paren-crosshairs'

Plugin 'git://github.com/ngmy/vim-rubocop.git'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'slim-template/vim-slim.git'
Plugin 'thoughtbot/vim-rspec'
Plugin 'kchmck/vim-coffee-script'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'honza/vim-snippets'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
let g:snipMate = get(g:, 'snipMate', {}) " Allow for vimrc re-sourcing
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['ruby'] = 'ruby,rails'

Plugin 'vim-ruby/vim-ruby'
" Plugin 'tpope/vim-rails'
Plugin 'henrik/vim-ruby-runner'
" Plugin 'SirVer/ultisnips'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

Plugin 'mattn/emmet-vim'
" Emmet leader
" let g:user_emmet_leader_key='<C-M>'

" Plugin 'nono/vim-handlebars'
Plugin 'gaogao1030/vim-slimbars'

Plugin 'easymotion/vim-easymotion'
" Plugin 'leafgarland/typescript-vim'
Plugin 'posva/vim-vue'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'briancollins/vim-jst'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'cespare/vim-toml'
Plugin 'vim-scripts/Align'
Plugin 'vim-scripts/SQLUtilities'
vmap <leader>qf        <Plug>SQLU_Formatter<CR>
" nmap <leader>scl       <Plug>SQLU_CreateColumnList<CR>
" nmap <leader>scd       <Plug>SQLU_GetColumnDef<CR>
" nmap <leader>scdt      <Plug>SQLU_GetColumnDataType<CR>
" nmap <leader>scp       <Plug>SQLU_CreateProcedure<CR>

" Icons
" Plugin 'ryanoasis/vim-devicons'
" set encoding=utf8
" set guifont=DroidSansMono_Nerd_Font:h11

" Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
" let g:NERDTreeFileExtensionHighlightFullName = 1
" let g:NERDTreeExactMatchHighlightFullName = 1
" let g:NERDTreePatternMatchHighlightFullName = 1



" Plugin 'gko/vim-coloresque'
" Plugin 'captbaritone/better-indent-support-for-php-with-html'
" Plugin 'vim-scripts/jade.vim'
" Plugin 'fatih/vim-go'
" Plugin 'othree/html5.vim'
" Plugin 'elixir-lang/vim-elixir'
" Plugin 'scrooloose/syntastic'
" Plugin 'terryma/vim-multiple-cursors'

" Plugin 'godlygeek/tabular'
" Plugin 'kchmck/vim-coffee-script'
" Bundle 'rgp/PHP-Indenting-for-VIm'
" Plugin 'terryma/vim-expand-region'
" Plugin 'MarcWeber/vim-addon-mw-utils'
" Plugin 'tomtom/tlib_vim'
" Plugin 'rgp/snipmate-snippets'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vbundle trailer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

syntax enable
colorscheme monokai

" Prettify JSON files
" autocmd BufRead,BufNewFile *.json set filetype=json
" autocmd Syntax json sou ~/.vim/syntax/json.vim

" Automatically removing all trailing whitespace at the end of line.
" autocmd BufWritePre * :%s/\s\+$//

" Prettify Vagrantfile
autocmd BufRead,BufNewFile Vagrantfile set filetype=ruby

" Prettify Markdown files
augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" Highlight characters that go over 80 columns (by drawing a border on the 81st)
if exists('+colorcolumn')
  set colorcolumn=81
  highlight ColorColumn ctermbg=red
else
  highlight OverLength ctermbg=red ctermfg=white guibg=#592929
  match OverLength /\%81v.\+/
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 4. Configuration
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Backup files (.swo .swp)
set nobackup
set noswapfile
set nowrap

set cursorline
set cursorline cursorcolumn " show cursor vertical highlight

" Format config
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent            " auto-indent
set shiftround            " always indent/outdent to the nearest tabstop

" Search config
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
" Toggle Highlight Search
noremap <F4> :set hlsearch! hlsearch?<CR>

set laststatus=2          " last window always has a statusline
set number                " show line numbers
set relativenumber        " show line numbers
set ruler                 " Always show info along bottom.
set t_Co=256              " enable 256-color mode.

" set showmatch
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P
" set visualbell

autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype coffeescript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype jade setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype php setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype json setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype html setlocal ts=2 sw=2 sts=0 expandtab

" vmap ,x :!tidy -q -i --show-errors 0<CR>
" nnoremap <leader>c :nohlsearch<cr>
" Press F4 to toggle highlighting on/off, and show current value.
" :noremap <leader>h :set hlsearch! hlsearch?<CR>
" :nnoremap <CR> :nohlsearch<CR><CR>

autocmd BufRead,BufNewFile *.axlsx set filetype=ruby
autocmd BufRead,BufNewFile *.vue set filetype=html

" remove trailing whitespace
map <Leader>c :%s/\s\+$//<CR>
" map <Leader>c :FixWhitespace<CR>

" map <leader>aa :set tabstop=2  shiftwidth=2 <cr>
" map <leader>aaaa :set tabstop=4  shiftwidth=4 <cr>
map <leader>rn :set relativenumber <cr>
map <leader>nu :set norelativenumber <cr>

nnoremap <leader>r :RuboCop<cr>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-T> <C-W><C-T>
vnoremap <leader>p "0p
nmap K k

" format JSON
map <Leader>j :%!python3 -m json.tool<CR>
" indent all lines
map <Leader>= mzgg=GG`zzz
" select line
map <Leader>V ^v$h
" select tag
map <Leader>vt vatV
" map <F6> v%Vy

map <Leader>f V$%zf

:command! W :w
:command! Wq :wq
:command! Q :q

if has("gui_macvim")
  " Press Ctrl-Tab to switch between open tabs (like browser tabs) to
  " the right side. Ctrl-Shift-Tab goes the other way.
  noremap <C-Tab> :tabnext<CR>
  noremap <C-S-Tab> :tabprev<CR>

  " Switch to specific tab numbers with Command-number
  noremap <D-1> :tabn 1<CR>
  noremap <D-2> :tabn 2<CR>
  noremap <D-3> :tabn 3<CR>
  noremap <D-4> :tabn 4<CR>
  noremap <D-5> :tabn 5<CR>
  noremap <D-6> :tabn 6<CR>
  noremap <D-7> :tabn 7<CR>
  noremap <D-8> :tabn 8<CR>
  noremap <D-9> :tabn 9<CR>
  " Command-0 goes to the last tab
  noremap <D-0> :tablast<CR>
endif