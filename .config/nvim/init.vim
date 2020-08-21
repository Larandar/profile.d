" General configs
colorscheme delek

" Search
set hlsearch                       " highlight searching result
set ignorecase                     " ignore Case sensitive when searching

" Syntax highlight
syntax enable                       " enable syntax highlight
set showmatch                       " highlight matched bracket ()

" Custom syntax for files
au BufRead,BufNewFile *.rc set filetype=zsh

" Tab witdh and softabs
set autoindent smartindent          " increase/reduce the indent where appropriate
set expandtab                       " spaces are used in indents
set tabstop=4                       " indent width of 4
set softtabstop=4 shiftwidth=4      " indent width of 4

" Show linenumber
set number                          " show nubered lines
set relativenumber                  " numbering is relative to current line (easier for relative movements)
set numberwidth=4                   " pad numbering with space

" Persistant undos
set undofile                        " enable undo-persistence
set undodir=~/.config/nvim/.undos   " persist undos to the .undos directory
silent !mkdir ~/.config/nvim/.undos > /dev/null 2>&1    " make sure the .undos directory exists
au BufWritePre /tmp/* setlocal noundofile               " disable undo-persistence for /tmp/* files

" Disable backup files
set noswapfile                      " disable swapfile
set nobackup nowritebackup          " disable backup files

" open new split panes to right and below
set splitright
set splitbelow

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
