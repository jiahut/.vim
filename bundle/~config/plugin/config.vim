" 色彩主题
colo molokai
" colorscheme desertEx

if $TERM == "xterm-256color"
    set t_Co=256 " 256 色
endif

" 关闭兼容模式
set nocompatible
" 开启魔法匹配
set magic
" 退格键行为
set backspace=indent,eol,start
" 右下角显示标尺
set ruler
" 编码设置
set fileencodings=ucs-bom,utf-8,gbk
set fileformats=unix,dos,mac

" 缩进设置
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" 当鼠标距离上下位置时保留行数
set scrolloff=3 

" 高亮括号对
set showmatch
" 自动缩进
set autoindent
" 高亮搜索
set hlsearch
" 状态栏显示键入的命令
set showcmd
" 不创建备份文件
set nobackup
" 高亮当前行
set cursorline
" 智能大小写判断
set ignorecase smartcase
" 语法高亮
syntax on
" 打开文件类型支持
filetype plugin indent on
" 递归向上查找 tags
set tags=.tags;
" 修复 Terminal 下面中文双引号的问题
set ambiwidth=double

" 即时搜索
set incsearch

" 永远显示状态栏
set laststatus=2

" undo dir
if v:version >= 703
  set undodir=$HOME/.vimundodir
  set undofile
endif

" 打开文件时跳到上次编辑的位置
autocmd BufReadPost * call handy#JumpToLatest()

if (!(has("win32") || has("win64")))
    autocmd BufWritePost * call system('bsync '.expand('%:p').' &')
endif

" 保存文件时自动去除 trailing whitespace
autocmd BufWritePre *.js call handy#RemoveTrailingWhitespace()

" 写文件时去去找 jstags.sh 生成 tag
autocmd BufWritePost *.js call handy#GenerateTag()

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
set wildignore+=*/*target/*,*/target*/*,*/node_modules/*

" ######### 括号、引号、中括号等自动匹配 ######### start"

:inoremap ( ()<ESC>i

:inoremap ) <c-r>=ClosePair(')')<CR>

:inoremap { {}<ESC>i

:inoremap } <c-r>=ClosePair('}')<CR>

:inoremap [ []<ESC>i

:inoremap ] <c-r>=ClosePair(']')<CR>

":inoremap < <><ESC>i
	
":inoremap > <c-r>=ClosePair('>')<CR>

:inoremap " ""<ESC>i

:inoremap ' ''<ESC>i

:inoremap ` ``<ESC>i

function ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endf
" ######### 括号、引号、中括号等自动匹配 #########  end"
" open NERDTree only when I start vim without file argumentsee NERDTree only
" when I start vim without file arguments  
" autocmd VimEnter * if !argc() | NERDTree | endif
" show number when startup 
set number

" ######### 访问系统剪切版 start

set clipboard=unnamed
vmap <leader>y "+y
vmap <leader>p "*p
nmap <leader>s :call SearchWord()<CR>

" ######### 访问系统剪切版 end
"
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口 

