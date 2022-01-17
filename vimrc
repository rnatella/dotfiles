syntax on
set ruler

set shiftwidth=4  " Set number of spaces per auto indentation
set expandtab     " When using <Tab>, put spaces instead of a <tab> character

" ---- Good to have for consistency
set tabstop=4   " Number of spaces that a <Tab> in the file counts for
set smarttab    " At <Tab> at beginning line inserts spaces set in shiftwidth

set encoding=utf-8      " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

" ---- Bonus for proving the setting
" Displays '-' for trailing space, '>-' for tabs and '_' for non breakable space
set listchars=tab:>-,trail:␣,nbsp:␣
set list

" ---- Maps non-breaking spaces to normal spaces
"execute "inoremap \u00A0 <Space>"

" ---- Overridden by vim-polyglot
""filetype plugin indent on " enable file type detection
""set autoindent

set hlsearch    " highlight all search results
""set ignorecase  " do case insensitive search
set incsearch   " show incremental search results as you type
set showmatch   " show matching braces when text indicator is over them

set laststatus=2    " Status bar always shown

if !&scrolloff
  set scrolloff=2   " Show at least n lines above/below the cursor
endif

if !&sidescrolloff
  set sidescrolloff=5   " Show at least n chars on the left/right of the cursor
endif

set display+=lastline   " For very long lines, show as much chars as possible,
                        " then put “@@@” on the last columns

set formatoptions+=j  " Delete comment character when joining commented lines

set autoread          " Automatically read a file when changed outside of Vim

" Remember last position in file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

if &history < 1000
  set history=1000
endif

let $LOCALFILE=expand("~/.vimrc_local")
if filereadable($LOCALFILE)
    source $LOCALFILE
endif

