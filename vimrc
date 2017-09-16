"使用以下命令将示例配置拷贝到主目录
" cp /usr/share/vim/vim74/vimrc_example.vim ~/.vimrc
"然后添加自己的常用设置

"Added by daixin
colorscheme desert  "设置主题
set fileencodings=gbk,utf-8  "设置编码格式显示中文
set guifont=Monospace\ 14   "设置字体，主要用于gVim
set nu  "显示行数
set nobackup  "不要备份

"成对出现方便编程
:inoremap ( ()<ESC>i
:inoremap [ []<ESC>i
:inoremap ' ''<ESC>i
:inoremap " ""<ESC>i    
:inoremap { {<CR>}<ESC>O 

set tabstop=4
set shiftwidth=4
set expandtab   "python编程时设置缩进为4个空格


"以下为打造Python编程环境的配置，不完全版，还需要研究
"git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
"Plugin 'Valloric/YouCompleteMe'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"Enable folding
set foldmethod=indent
set foldlevel=99
"enable folding with the spacebar
nnoremap <space> za

let g:SimpylFold_docstring_preview=1    "可以看到折叠代码的字符串

"使其符合pep8标准
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

"标示不必要的空白字符
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

let python_highlight_all=1
syntax on

"    let g:ycm_autoclose_preview_window_after_completion=1
"    map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

map <F2> :NERDTreeToggle<CR>
