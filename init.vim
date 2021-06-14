set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set hlsearch                " highlight search results
set tabstop=2               " number of columns occupied by a tab character
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=120                   " set an 80 column border for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting

set splitbelow
set splitright

" spellchecking
set spell
set spelllang=en_us

" Plugins are managed with vim-plug
" https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdTree'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'davidhalter/jedi-vim'
Plug 'deoplete-plugins/deoplete-jedi'

Plug 'jiangmiao/auto-pairs'

Plug 'morhetz/gruvbox'

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'

call plug#end()

" airline
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" nerdtree
nmap <C-t> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" jedi-vim
let g:jedi#completions_enabled = 0
let g:jedi#use_splits_not_buffers = "right"

" deoplete
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
let g:deoplete#enable_at_startup = 1

if has('win32')
  let g:python3_host_prog = 'C:\Program Files\Python38\python.exe'
endif

" Code linting
let g:neomake_python_enabled_makers = ['pylint']

" colorscheme
set background=dark
colorscheme gruvbox

" Markdown preview
let g:mkdp_auto_close = 0

" FZF file search
nnoremap <C-g> :Rg<CR>
nnoremap <C-p> :Files<cr>
nnoremap <C-b> :Buffers<cr>
nnoremap <C-l> :BLines<cr>

set list
set listchar+=trail:+
