function! PecoOpen()
  for filename in split(system("find . -type f | peco"), "\n")
      execute "e" filename
    endfor
endfunction
nnoremap <Leader>f :call PecoOpen()<CR>
