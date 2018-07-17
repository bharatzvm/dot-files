set nocompatible

" 
syntax on
filetype plugin indent on

" Initialise vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'mileszs/ack.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-syntastic/syntastic.git'
Plugin 'kien/ctrlp.vim.git'
Plugin 'tpope/vim-commentary.git'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'honza/vim-snippets.git'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'SpaceVim/SpaceVim.git'
Plugin 'pangloss/vim-javascript.git'
Plugin 'mxw/vim-jsx.git'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimproc.vim'
" Plugin 'ujihisa/repl.vim'
Plugin 'rust-lang/rust.vim'
" Plugin 'mattn/webapi-vim.git'
" Plugin 'stephenway/postcss.vim'
Plugin 'elmcast/elm-vim'
Plugin 'tpope/vim-fugitive'

call vundle#end()
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Ignore files in ctrl+p

" Use Dictionary
:set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words

" Thesaurus file
set thesaurus-=/Users/bp/.thesaurus.txt thesaurus+=/Users/bp/.thesaurus.txt

" Complete option - ctrl-n/ctrl-p use dictionary
set complete+=k

" Tab - space fight
set shiftwidth=2 tabstop=2 expandtab softtabstop=0 smarttab

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Global paste
" set clipboard=unnamedplus

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_balloons = 1
let g:syntastic_auto_jump = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_stl_format = "[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]" 

" Default JS linter
let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'

" Rust
" let g:syntastic_rust_checkers = ['rustc']
" let g:rustfmt_autosave = 1

ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>

" let g:EclimCompletionMethod = 'omnifunc'
" let g:EclimJavascriptValidate = 0 
" let g:EclimJavascriptLintEnabled = 0
" let g:EclimLogLevel = 'trace'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""" Java Eclim mapping """""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Import the class under the cursor with <leader>i
" nnoremap <silent> <buffer> <leader>i :JavaImport<cr>

" Search for the javadocs of the element under the cursor with <leader>d
" nnoremap <silent> <buffer> <leader>s :JavaDocSearch -x declarations<cr>

" Perform a context sensitive search of the element under the cursor with
" <enter>
" nnoremap <silent> <buffer> <leader>c :JavaSearchContext<cr>

map <C-t>h :tabp <CR>
map <C-t>l :tabn <CR>
map <C-t>n :tabnew<CR>
map <C-t>w :tabclose<CR>

" Ctrl + p Buffers
nnoremap <leader>b :CtrlPBuffer<CR>

" Ctrl + p Reindex
nnoremap <leader>r :CtrlPClearCache<CR>

" To use project specific setting every project can have its own vimrc file
set exrc
set secure

" Set to auto read when a file is changed from the outside
set autoread

" Line numbers
set number
set relativenumber

scriptencoding utf-8
set encoding=utf-8

" To toggle invisible characters
nnoremap <leader>l :set list!<CR>
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:+\ 

" set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸▸
" To toggle line numbers
nnoremap <leader>nu :set number!<CR> 
nnoremap <leader>nr :set relativenumber!<CR>
nnoremap <leader>na :set number! relativenumber!<CR>

" Toggle paste mode
set pastetoggle=<F2>

" Edit and Source vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Paste in new line
nnoremap <leader>p :pu<CR>
nnoremap <leader>P :pu!<CR>

" Clear search highlighting
nnoremap <cr> :noh<CR><CR>:<backspace><Esc>

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

" Until you get used to using vim delete options backspace will only be able
" to delete whatever is inserted in the current insert mode
" set backspace=


" keep 200 lines of command line history
set history=200

" show the cursor position all the time
set ruler

" display incomplete commands
set showcmd

" display completion matches in a status line
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" time out for key codes
set ttimeout

" wait up to 100ms after Esc for special key
set ttimeoutlen=300

" Show @@@ in the last line if it is truncated.
" set display=truncate

" Show a few lines of context around the cursor.
set scrolloff=15

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" set incremental search and hit <Esc> to go back to the cursor position you
" started search Also use <c-o> to go back if you have searched morethan once
" <c-o> <c-i> moves you between your cursor postions
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Search selection
vnoremap // y/\V<C-R>"<CR>

" Don't use Ex mode, use Q for formatting. Revert with ":unmap Q".
" gq formats text
" If you don't want to unbound Q map it with "<nop>"
nnoremap Q gq

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=1

" Light background
colorscheme Pablo

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off
set nobackup
set nowb
set noswapfile

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif
" Remember info about open buffers on close
set viminfo^=%

" Format the status line
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" augroup configgroup
"     autocmd!
"     autocmd VimEnter * highlight clear SignColumn
"     autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
"                 \:call <SID>StripTrailingWhitespaces()
"     autocmd FileType java setlocal noexpandtab
"     autocmd FileType java setlocal list
"     autocmd FileType java setlocal listchars=tab:+\ ,eol:-
"     autocmd FileType java setlocal formatprg=par\ -w80\ -T4
"     autocmd FileType python setlocal commentstring=#\ %s
"     autocmd BufEnter Makefile setlocal noexpandtab
"     autocmd BufEnter *.sh setlocal tabstop=2
"     autocmd BufEnter *.sh setlocal shiftwidth=2
"     autocmd BufEnter *.sh setlocal softtabstop=2
" augroup END


" Dont open preview window
set completeopt-=preview

" set path
set path+=**

" Tab number
set showtabline=2 " always show tabs in gvim, but not vim

" set up tab labels with tab number, buffer name, number of windows
function! GuiTabLabel()
  let label = ''
  let bufnrlist = tabpagebuflist(v:lnum)
  " Add '+' if one of the buffers in the tab page is modified
  for bufnr in bufnrlist
    if getbufvar(bufnr, "&modified")
      let label = '+'
      break
    endif
  endfor
  " Append the tab number
  let label .= v:lnum.': '
  " Append the buffer name
  let name = bufname(bufnrlist[tabpagewinnr(v:lnum) - 1])
  if name == ''
    " give a name to no-name documents
    if &buftype=='quickfix'
      let name = '[Quickfix List]'
    else
      let name = '[No Name]'
    endif
  else
    " get only the file name
    let name = fnamemodify(name,":t")
  endif
  let label .= name
  " Append the number of windows in the tab page
  let wincount = tabpagewinnr(v:lnum, '$')
  return label . '  [' . wincount . ']'
endfunction
set guitablabel=%{GuiTabLabel()}

" clist movement
nnoremap <silent> <leader>] :cnext<CR>  
nnoremap <silent> <leader>[ :cprevious<CR>

" Elm
autocmd BufRead,BufNewFile *.elm set filetype=elm
let g:elm_jump_to_error = 0
let g:elm_make_show_warnings = 1
let g:elm_make_output_file = '/dev/null'

let g:syntastic_elm_checkers = [ 'elm_make' ]
let g:elm_syntastic_show_warnings = 1
