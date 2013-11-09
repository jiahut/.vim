let g:ctrlp_regexp = 1
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_max_files = 1000
let g:ctrlp_match_window_bottom = 0
" let g:ctrlp_map = ',,'
let g:ctrlp_open_multiple_files = 'v'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git)$',
  \ 'file': '\v\.(log|jpg|png|jpeg)$',
  \ }
