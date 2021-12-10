" set leader key
let g:mapleader = "\<Space>"

" syntax enable                     " Enables syntax highlighing
"set nowrap                         " Display long lines as just one line
set hidden                          " Required to keep multiple buffers open multiple buffers
set wrap linebreak nolist           " Line wrapping
set encoding=utf-8                  " The encoding displayed
set pumheight=10                    " Makes popup menu smaller
set fileencoding=utf-8              " The encoding written to file
set ruler              			    " Show the cursor position all the time
set cmdheight=2                     " More space for displaying messages
set iskeyword+=-                    " treat dash separated words as a word text object"
set mouse=a                         " Enable your mouse
set splitbelow                      " Horizontal splits will automatically be below
set splitright                      " Vertical splits will automatically be to the right
set t_Co=256                        " Support 256 colors
set conceallevel=0                  " So that I can see `` in markdown files
set tabstop=4                       " Insert 2 spaces for a tab
set shiftwidth=4                    " Change the number of space characters inserted for indentation
set smarttab                        " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                       " Converts tabs to spaces
set smartindent                     " Makes indenting smart
set autoindent                      " Good auto indent
set laststatus=0                    " Always display the status line
set number relativenumber           " Set relative line numbers
set cursorline                      " Enable highlighting of the current line
set background=dark                 " tell vim what the background color looks like
set showtabline=2                   " Always show tabs
set noshowmode                      " We don't need to see things like -- INSERT -- anymore
set nobackup                        " This is recommended by coc
set nowritebackup                   " This is recommended by coc
set updatetime=300                  " Faster completion
set timeoutlen=100                  " By default timeoutlen is 1000 ms
set formatoptions-=cro              " Stop newline continution of comments
set clipboard=unnamedplus           " Copy paste between vim and everything else
set autochdir                       " Your working directory will always be the same as your working directory
set termguicolors

au! BufWritePost $MYVIMRC source %  " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>


" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

noremap j gj
noremap k gk

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

