" Syntax highlight
syntax enable                                           " Enable syntax highlight
set showmatch                                           " Highlight matched bracket ()

" Tab witdh and softabs
set autoindent smartindent                              " Increase/reduce the indent where appropriate
set expandtab                                           " Spaces are used in indents
set tabstop=4                                           " Indent width of 4
set softtabstop=4 shiftwidth=4                          " Indent width of 4

" Show linenumber
set number                                              " Show numbered lines
set relativenumber                                      " Numbering is relative to current line (easier for movements)
set numberwidth=4                                       " Pad numbering with space

" Search
set hlsearch                                            " Highlight searching result
set ignorecase                                          " Ignore Case sensitive when searching

" Panel arangements
set splitright splitbelow                               " Open new split panes to right and below

" Disable backup files
set noswapfile                                          " Disable swapfile
set nobackup nowritebackup                              " Disable backup files

" Persistant undos
set undofile                                            " Enable undo-persistence
set undodir=~/.config/nvim/.undos                       " Persist undos to the .undos directory
silent !mkdir ~/.config/nvim/.undos > /dev/null 2>&1    " Make sure the .undos directory exists
au BufWritePre /tmp/* setlocal noundofile               " Disable undo-persistence for /tmp/* files

