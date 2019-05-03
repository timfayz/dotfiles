" A brief help
"  :help cterm to list colors
" :help CTRL-? to recall shortcuts

filetype plugin on
nnoremap <LEADER>ee :e<CR>

" Write sudo
cmap w!! :w !sudo tee > /dev/null %

" Cursor
" hightlight cursor
set cursorline

" Delete/backspace
inoremap <C-L> <C-O>x

" Raw paste mode
set paste "(off)

" Shortcuts
let mapleader=" " "space
"set notimeout

" Update/edit config
nnoremap <LEADER>u :source ~/.config/nvim/init.vim<CR>
nnoremap <LEADER>ec :vsplit ~/.config/nvim/init.vim<CR>

" Highlight brackets
set showmatch

" Show line numbers
set number
nnoremap <LEADER>sr :set relativenumber!<CR>

" Tabs & spaces
set expandtab
set tabstop=4
set shiftwidth=4
set nojoinspaces

" Backup
set nobackup
" make sure /.local/share/nvim/backup exists
"set backupdir=

" Undo
set undofile
" ~/.cache/nvim is default
set undodir=~/.cache/nvim

" Swap
set dir=/tmp// " // trick to store fullpath

" Wrapping
set nowrap
set breakindent
set showbreak=↪
nnoremap <LEADER>sw :set wrap!<CR>

" Vertical column
set textwidth=79 " 0
nnoremap <LEADER>c :let &colorcolumn = &cc == '' ? '80' : ''<CR>
highlight ColorColumn ctermbg=8

" Line numbers
"highlight LineNr ctermfg=1 ctermbg=5

" Scroll experience
set scrolloff=3
set sidescrolloff=5
" save cursor column while moving
"set nostartofline

" Search & replace
set ignorecase
set smartcase
set gdefault
nnoremap <LEADER><SPACE>    :nohl <BAR> :w<CR>
nnoremap /s                 :%s//gc<LEFT><LEFT><LEFT>
nnoremap <silent>/c         :nohlsearch<CR><C-L>
nnoremap //                 /
vnoremap //                 y/<C-R>"<CR>N
vnoremap /s                 y:%s/<C-R>"//gc<LEFT><LEFT><LEFT>

" Auto formatting
set formatoptions+=o " insert comment on O/o

" More natural splits
set splitbelow " horizontal
set splitright " vertical

" Show trailing chars
highlight ExtraWhitespace ctermbg=darkgray
match ExtraWhitespace /\s\+$/
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set list

" Recording
nnoremap Q @q

" Autocmd
autocmd BufWritePre * :%s/\s\+$//e

" Vertical split (hide)
highlight VertSplit ctermbg=8 ctermfg=8
"set fillchars+=vert:\|

" Select all
nnoremap <LEADER>a magg<S-V>G

" Clipboard
vnoremap <LEADER>y "+y


" Statusline
" -------------------------------------------
set showmode
set showcmd
" toggle statusline
set laststatus=2
nnoremap <silent><LEADER>b :let &laststatus = &ls == 1 ? 2 : 0<CR>
" set format
set statusline=
"set statusline+=[%n]               " buffer number
set statusline+=%F%<                " full path to file
set statusline+=\ %m                " modified flag
set statusline+=%h                  " [help]
set statusline+=%r                  " read only flag
set statusline+=%w                  " preview window flag
set statusline+=%=%y                " filetype
set statusline+=\ %4.(%l,%c%V%)     " line, column-virtual column"
set statusline+=\/%-5L              " total lines
" highlight StatusLine ctermbg=7 ctermfg=8
" highlight StatusLineNC ctermbg=7 ctermfg=10

" Rulerformat
set ruler        " ruler on
set rulerformat=
set rulerformat+=%t                 " filename only
set rulerformat+=%=%4.(%l,%c%)      " line, virtual column"

" Plugins
" -------------------------------------------
call plug#begin('~/.local/share/nvim/plugged')
Plug 'chriskempson/base16-vim'
call plug#end()



" Plugin configs
" -------------------------------------------
" base16-vim
set t_Co=256
set t_ut=
set background=dark
let base16colorspace=256
colorscheme base16-default-dark

" netrw
let g:netrw_dirhistmax = 0


" ADHOCs
" -------------------
" Diff
" hi DiffAdd ctermbg=7 ctermfg=0
" hi DiffDelete ctermbg=red ctermfg=red

