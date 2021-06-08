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

" Typescript
Plug 'herringtondarkholme/yats.vim'

" Vue
Plug 'posva/vim-vue'

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

" All svg html php ...
Plug 'sheerun/vim-polyglot'

" Emmet
Plug 'mattn/emmet-vim'

" Commnent
Plug 'tpope/vim-commentary'

" Vim Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Coc ( Tu dong cap nhat extension voi #util#install )
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install() } }

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
noremap <Leader>h :split<CR>

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

" Vim vue --
" fix sync in vue files
autocmd FileType vue syntax sync fromstart


" snippets
" click 'tab' de show snipet ( vd: shopify snipet... )
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"

" Git Blamer --
" Tự động bật blamer ( git lens ) khi start vim | delay show msg là 2s
let g:blamer_enabled = 1
let g:blamer_delay = 2000

" Gitgutter
" Mau cua add, change, remove line code
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

" vim-nerdtree-syntax-highlight
" Custom 2 màu đặc biệt
let s:kmacodersAppleFolderColor = "78cdf4"
let s:kmacodersShopifyIconColor = "96BF48"
" Màu của các folder không match rule
let g:WebDevIconsDefaultFolderSymbolColor = s:kmacodersAppleFolderColor
" Màu của các file không match rule ( nhất là .liquid của Shopify )
let g:WebDevIconsDefaultFileSymbolColor = s:kmacodersShopifyIconColor
" Giảm độ lag khi sử dụng plug tô màu icon này
" Limit những cái ít phổ biến
let g:NERDTreeLimitedSyntax = 1
" Giới hạn những .extensions được tô màu
let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeSyntaxDisableDefaultExactMatches = 1
let g:NERDTreeSyntaxDisableDefaultPatternMatches = 1
" Bật màu với những .extension này
let g:NERDTreeSyntaxEnabledExtensions = ['js', 'ts', 'vue', 'svelte', 'liquid', 'html', 'css', 'scss', 'svg', 'png', 'yml', 'json', 'md']
let g:NERDTreeSyntaxEnabledExactMatches = ['node_modules', 'favicon.ico'] " enabled exact matches with default colors
" Tắt nền con trỏ mặc định trên nerdtree
let g:NERDTreeHighlightCursorline = 0

" Ale : Linting ---------
" Fix file voi prettier roi den eslint
let b:ale_fixers = ['prettier', 'eslint']
let g:ale_linters = {}

" IndentLine ( custom line keo tu open tag -> close tag )
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

" Vim Commnetary --
" gc to commnent

" Vim easy replace
" <Leader>ra

" FZF - search ngoai tru node_modules | dist
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

" Coc Default Settings -- 
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" Coc global extenstion --
let g:coc_global_extensions = [
      \'coc-markdownlint',
      \'coc-highlight',
      \'coc-vetur',
      \'coc-tsserver',
      \'coc-eslint',
      \'coc-explorer',
      \'coc-prettier', 
      \'coc-json', 
      \'coc-git',
      \'coc-css',
      \'coc-html',
      \]

" Easy motion ---------------------
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)/W
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Floaterm config ------------------
let g:floaterm_keymap_new    = '<F6>'
let g:floaterm_keymap_prev   = '<F7>'
let g:floaterm_keymap_next   = '<F8>'
let g:floaterm_keymap_toggle = '<F9>'
let g:floaterm_keymap_kill = '<F10>'
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8

" Set floaterm window's background to black
hi Floaterm guibg=black
" Set floating window border line color to red, and background to white
hi FloatermBorder guifg=DarkOrange1
