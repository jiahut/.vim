set rtp+=/Library/Python/2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
" 加载 pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect() 
"Helptags
