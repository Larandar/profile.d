" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" disable numbering in terminals
au TermOpen * setlocal nonumber norelativenumber

" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>
