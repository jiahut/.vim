set guioptions=                     " 无 gui 界面
if (has ("gui_win32"))
    au GUIEnter * simalt ~x         " 最大化启动
    set guifont=Consolas:h13:cANSI  " 字体设置
else
    set guifont=Inconsolata\ Medium\ 18" 字体设置
endif