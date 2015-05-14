""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" global settings
set nocompatible
set cursorline
set cursorcolumn
set ruler
set nomore
set noeb
set nowrap
set nobackup
set cindent
set showcmd
set hlsearch
set autoread
set autoindent
set linebreak
set smartindent
set smarttab
set expandtab
set tabstop=8
set shiftwidth=4
set backspace=indent,eol,start
set whichwrap=b,s,<,>,[,],h,l,~
set pastetoggle=<F9>
set clipboard=unnamed

syntax on
filetype off

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" goto the last place when openning a file
if has("autocmd")
   au BufReadPost * if line("'\"") | exe "normal! g'\"" | endif
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" plugin mananger
Bundle 'gmarik/vundle'

"""" edit assistant plugins
Bundle 'https://github.com/vim-scripts/AutoClose.git'
Bundle 'https://github.com/vim-scripts/Tabular.git'
Bundle 'https://github.com/vim-scripts/ShowTrailingWhitespace.git'
Bundle 'https://github.com/vim-scripts/DeleteTrailingWhitespace.git'

"""" syntax highlight plugins
Bundle 'https://github.com/vim-scripts/Markdown.git'

"""" file manange plugins
Bundle 'https://github.com/vim-scripts/ctrlp.vim.git'
Bundle 'https://github.com/vim-scripts/grep.vim.git'
Bundle 'https://github.com/vim-scripts/The-NERD-tree.git'

"""" source code browse plugins
Bundle 'https://github.com/vim-scripts/taglist.vim.git'
Bundle 'https://github.com/vim-scripts/Tagbar.git'
Bundle 'https://github.com/vim-scripts/cscope.vim'

"""" colorscheme plugins

"""" status line plugins

"""" auto complete plugins
Bundle 'https://github.com/vim-scripts/SuperTab.git'

"""" programming related plugins
Bundle 'https://github.com/vim-scripts/indentpython.vim.git'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin on
filetype indent on
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" setting vim & gvim
""if has("gui_running")
""    set guioptions=gR
""    set mousemodel=popup
""    hi LineNr cterm=bold guibg=black guifg=white
""    hi CursorLine cterm=none ctermbg=lightgray ctermfg=none
""    hi CursorColumn cterm=none ctermbg=lightgray ctermfg=none
""else
""    hi LineNr cterm=bold ctermbg=black ctermfg=white
""    hi CursorLine cterm=none ctermbg=darkgray ctermfg=none
""    hi CursorColumn cterm=none ctermbg=darkgray ctermfg=none
""endif
set background=dark
colorscheme solarized
"""" setting line number
set number
set numberwidth=5
hi MatchParen ctermbg=blue ctermfg=white
hi VertSplit ctermbg=black ctermfg=black
"""" setting status line
hi StatusLine ctermfg=darkgray ctermbg=blue
hi StatusLineNC ctermfg=black ctermbg=white
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" key mapping settings
nmap <s-j> <c-w>j
nmap <s-k> <c-w>k
nmap <s-h> <c-w>h
nmap <s-l> <c-w>l
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" auto commands
if has('autocmd')
    au BufWritePre /tmp/pentadactyl.txt write! /tmp/pentadactyl-lastedit
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" setting grep plugin
let Grep_Skip_Files = '*.bak *~ *tags'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""setting taglist plugin
let Tlist_WinWidth=28
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1
set tags+=tags,../tags,../../tags,../../../tags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""setting tagbar plugin
let g:tagbar_width = 28
let g:tagbar_autoclose = 0
let g:tagbar_sort = 0
let g:tagbar_compact = 1
let g:tagbar_iconchars = ['▸', '▾']
noremap  <silent> <F12> :TagbarToggle<CR>
inoremap <silent> <F12> :TagbarToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" setting NRED file explorer
let NERDTreeWinSize = 28
let NERDTreeWinPos = "left"
nmap <M-F12> <ESC>:NERDTreeToggle<RETURN>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""setting Grep plugin
let Grep_Skip_Files = '*.bak *~ *tags'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""