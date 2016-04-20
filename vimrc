"使用以下命令将示例配置拷贝到主目录
" cp /usr/share/vim/vim74/vimrc_example.vim ~/.vimrc
"然后添加自己的常用设置

"Added by daixin
colorscheme desert  "设置主题
set fileencodings=gbk, utf-8  "设置编码格式显示中文
set guifont=Monospace\ 14   "设置字体，主要用于gVim
set nu  "显示行数
set nobackup  "不要备份

:inoremap ( ()<ESC>i
:inoremap [ []<ESC>i
:inoremap ' ''<ESC>i
:inoremap " ""<ESC>i    "成对出现方便编程

set tabstop=4
set shiftwidth=4
set expandtab   "python编程时设置缩进为4个空格
