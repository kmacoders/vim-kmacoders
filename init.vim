" ======================================================================================
" Vim-Plug core | Tu dong install Vim Plug neu chua co
" ======================================================================================
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')
if has('win32')&&!has('win64')
  let curl_exists=expand('C:\Windows\Sysnative\curl.exe')
else
  let curl_exists=expand('curl')
endif

if !filereadable(vimplug_exists)
  if !executable(curl_exists)
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!"curl_exists" -fLo " . shellescape(vimplug_exists) . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif


" ======================================================================================
" Plug install packages
" ======================================================================================
" Required: Chi dinh 1 thu muc cho cac plugin {{Plug
call plug#begin(expand('~/.config/nvim/plugged'))

" Tab
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
" Tao icon cho nerdtree
Plug 'ryanoasis/vim-devicons'
" Color cho icon cua vim-devicons
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Theme
Plug 'dracula/vim'

" Editor Config
Plug 'editorconfig/editorconfig-vim'

" Polygot
" Giảm giật lag khi vào file .vue do conflig starup với vim-vue
" https://github.com/posva/vim-vue/issues/95
let g:polyglot_disabled = ['jsx', 'tsx', 'js', 'ts', 'vue']
" All svg html php ...
Plug 'sheerun/vim-polyglot'

" Typescript
Plug 'herringtondarkholme/yats.vim'

" Vue
Plug 'posva/vim-vue'

" Svelte
Plug 'evanleck/vim-svelte', {'branch': 'main'}

" CSS | SCSS
Plug 'hail2u/vim-css3-syntax'
" Color cho các mã màu
Plug 'ap/vim-css-color'
" This project contains the runtime files for Haml, Sass, and SCSS that ship with Vim. 
" You only need it if you want the very latest updates.
" Case: Highligh class html ( '.abcxyz') in scss file
" Note: Đặt trên plug scss-syntax.vim
Plug 'tpope/vim-haml'
Plug 'cakebaker/scss-syntax.vim'

" Liquid
Plug 'tpope/vim-liquid'

" Commnent
Plug 'preservim/nerdcommenter'

" Navbar ( Tab bar like VSCode )
Plug 'romgrk/barbar.nvim'

" Vim Airline ( Bottom bar )
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Searching
Plug 'vim-scripts/grep.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kqito/vim-easy-replace'

" Quick move
Plug 'easymotion/vim-easymotion'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'apzelos/blamer.nvim'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Terminal
Plug 'voldikss/vim-floaterm'

" IdentLine
Plug 'Yggdroot/indentLine'

" Auto close tag
Plug 'Raimondi/delimitMate'

" Linting
Plug 'dense-analysis/ale'

"" Snippets
" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Initialize plugin system Plug}}
call plug#end()


" ======================================================================================
" Mapping
" ======================================================================================

" Double j to Normal Mode
inoremap jj <Esc>

" Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <C-h> <C-W>h

noremap <Left> :echoe "Use h"<CR>
noremap <Right> :echoe "Use l"<CR>
noremap <Up> :echoe "Use k"<CR>
noremap <Down> :echoe "Use j"<CR>

" Key binding ---------
" GÁN LẠI CHO NÚT LEADER = SPACE
let mapleader=" "

" Split
noremap <Leader>l :vsplit<CR>
noremap <Leader>j :split<CR>

" Fzf
noremap af :Files<CR>

" Grep, Silver Search
noremap aw :Ag<CR>

" No hight light
noremap nh :nohl<CR>


" ======================================================================================
" kmacoders Settings
" ======================================================================================

" Enable mouse use in all modes ( bật chuột )
set mouse=a
" turn relative line numbers on ( chuyển hệ thước về relative, dòng hiện tại là số 0)
:set relativenumber
:set rnu

"Copy từ VIM ra ngoài Clipboard, mặc định VIM chỉ lưu trong Register luc yank
set clipboard=unnamedplus

"Tự động cập nhật khi file thay đổi (bởi chương trình khác)
set autoread
set autowrite

"Tự động indent
set autoindent
set smartindent

" ======================================================================================
" General Settings
" ======================================================================================
set termguicolors
set foldmethod=marker

" Di chuot trong vim
set mouse=a 

set nowrap
set number

" utf-8 by default in files
set enc=utf-8	

" show status bar always
set ls=2

" highlight search	
set hlsearch	
set showtabline=0
highlight LineNr ctermfg=gray

" popup autocomplete menu color
highlight Pmenu ctermbg=gray guibg=gray 

" Tắt các thể loại files backup, swap, khá là annoy và không cần thiết vì mình đã dùng git rồi
set nobackup
set nowb
set noswapfile
set backupdir=~/tmp,/tmp
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=/tmp

" Fold ( za de fold, unfold )
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" ======================================================================================
" Plug Config
" ======================================================================================

" Theme --
set t_Co=256
highlight Normal guibg=black guifg=white
set background=dark
color dracula

" nerdtree | vim-nerdtree-tabs
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>

" Grep --
" Cài grep.vim rồi cài Silver Searcher ( khác nhau với từng OS )
" Sau đó import câu lệnh bên dưới vào
" https://github.com/ggreer/the_silver_searcher
let g:ackprg = 'ag --vimgrep'

" =============== Personalized Settings =============
for fpath in split(globpath('~/.config/nvim/settings', '*.vim'), '\n')
  exe 'source' fpath
endfor