# Cài đặt

## Cài NeoVim

1. Cài neo vim 

```jsx
sudo pacman install neovim
```

2. Trong root folder

```jsx
cd ./.config
mkdir nvim

```

3. Clone file init.vim trên github về ( ./.config/nvim/init.vim)

4. Chạy lệnh 

```jsx
nvim
:PlugInstall
```

Gói Plug sẽ tự động cài đặt các pagekage cần thiết.

Xem các command Plug để biết thêm. ( Gõ Shift + :  để gõ command ).

# Map phím trong VIM
## Intro

Các mode được hỗ trợ trong Vim là normal, insert, replace, visual, select, command-line and operator-pending.

Cú pháp của 1 lệnh map trong Vim

```jsx
{cmd} {attr} {lhs} {rhs}
```

Trong đó : 

- { cmd } là một trong số : ':map', ':map!', ':nmap', ':vmap', ':imap',
       ':cmap', ':smap', ':xmap', ':omap', ':lmap', etc
- { attr } là 1 hoặc nhiều options <buffer>, <silent>, <expr> <script>, <unique> and <special>. Nhiều hơn một attribute có thể được chỉ định trong 1 câu lệnh mapping.
- { lhs } là phía bên trái, tức là 1 hoặc nhiều phím được bạn sử dụng cho phím gán mới của mình
- { rhs } là phía bên phải, tức là dãy phím tắt được thực thi khi nhấn phím được map

Ví dụ :

```jsx
map <F2> :echo 'Current time is ' . strftime('%c')<CR>
map! <F3> <C-R>=strftime('%c')<CR>
nnoremap <silent> <F2> :lchdir %:p:h<CR>:pwd<CR>
```

## Danh sách các mapping key chính

```jsx
: map
: map!
```

Map hoạt động ở mode : normal, visual, select and operator pendding.

Map! hoạt động ở insert và command-line mode.

Các map trong mode cụ thể ( chỉ hoạt động trong chế độ đó )

```jsx
Overview of which map command works in which mode.  More details below.
     COMMANDS                    MODES ~
:map   :noremap  :unmap     Normal, Visual, Select, Operator-pending
:nmap  :nnoremap :nunmap    Normal
:vmap  :vnoremap :vunmap    Visual and Select
:smap  :snoremap :sunmap    Select
:xmap  :xnoremap :xunmap    Visual
:omap  :onoremap :ounmap    Operator-pending
:map!  :noremap! :unmap!    Insert and Command-line
:imap  :inoremap :iunmap    Insert
:lmap  :lnoremap :lunmap    Insert, Command-line, Lang-Arg
:cmap  :cnoremap :cunmap    Command-line
```

```jsx
n  Normal mode map. Defined using ':nmap' or ':nnoremap'.
i  Insert mode map. Defined using ':imap' or ':inoremap'.
v  Visual and select mode map. Defined using ':vmap' or ':vnoremap'.
x  Visual mode map. Defined using ':xmap' or ':xnoremap'.
s  Select mode map. Defined using ':smap' or ':snoremap'.
c  Command-line mode map. Defined using ':cmap' or ':cnoremap'.
o  Operator pending mode map. Defined using ':omap' or ':onoremap'.
<Space>  Normal, Visual and operator pending mode map. Defined using
         ':map' or ':noremap'.
!  Insert and command-line mode map. Defined using 'map!' or
   'noremap!'.
```

Ví dụ :

```jsx
:nmap
n  <C-W>*      * <C-W><C-S>*
n  <C-W>#      * <C-W><C-S>#
n  <F2>        * :lchdir %:p:h<CR>:pwd<CR>
```

Để remove đi mapping của 1 phím

```jsx
: unmap <F8>
: unmap <F8>!
```

### Notes

- Khi thực hiện những map comment như bên dưới, nếu không có <CR> hoặc <Enter> hoặc <Return> thì sau khi ấn nút map xong, sẽ bị dừng luôn ở dòng lệnh sau :ls. Mà k thực thi.

```jsx
:nnoremap <F3> :ls<CR>
```

- Sự khác nhau giữa map và noremap. map là ánh xạ đệ quy, còn noremap là ánh xạ không đệ quy.  Lấy từ :help map-recursive

> :help recursive_mapping
If you include the {lhs} in the {rhs} you have a recursive mapping. When {lhs} is typed, it will be replaced with {rhs}. When the {lhs} which is included in {rhs} is encountered it will be replaced with {rhs}, and so on.
This makes it possible to repeat a command an infinite number of times ...
There is one exception: If the {rhs} starts with {lhs}, the first character is not mapped again (this is Vi compatible) ... For example, if you use:
:map x y
:map y x
Vim will replace x with y, and then y with x, etc.
When this has happened 'maxmapdepth' times (default 1000), Vim will give the error message "recursive mapping".

Ví dụ như lệnh bên trên, khi x được nhấn thì y được nhấn, y lại gọi đến x ( như  map bên dưới ), và x lại gọi đến y ... Cho đến khi gặp maxmapdepth và lỗi " recursive mapping ".

Đó là lý do vì sao thường khuyến nghị sử dụng noremap không đệ quy ( ngoại trừ khi bạn có <Plug> ánh xạ, lúc đấy map sẽ ánh xạ đến map của plug, plug lại ánh xạ đến phím nó đã gán mặc định... ). Điều này ngăn việc treo Vim khi bạn có tình tạo các ánh xạ đệ quy.

## Config Terminal + Theme NeoVim

- Font Family cho Terminal: Fira Code Medium
- Font size: 16
- Theme terminal + theme Neovim : Dracular

# Tuts

## **Indent code**

Một trong những thao tác quan trọng nhất là việc thò ra thụt vào cho code =)) à ý là căn lề cho code, các bạn đừng có nghĩ bậy nhé.

### **Thò ra**

**Cách 1:** Bôi đen code bằng visual mode (gõ phím **`v`** rồi di chuyển con trỏ để chọn vùng code cần bôi).

Gõ **`Shift + .`** (tức là phím **`>`**) để đẩy khối code về bên phải.

**Cách 2:** Không cần bôi đen, gõ **`>`** + **`số dòng cần thò`** + **`j`**

### **Thụt vào**

**Cách 1:** Tương tự như trên, bôi đen đoạn code cần căn lề.

Gõ **`Shift + ,`** (tức là phím **`<`**) để kéo đoạn code đang chọn về bên trái.

**Cách 2:** Tương tự, gõ **`<`** + **`số dòng cần thụt`** + **`j`**

### **Tự động căn lề**

Để tự động căn lề một đoạn code cho đẹp mắt, bạn làm như sau:

**Cách 1:** Bôi đen đoạn code cần căn lề bằng visual mode.

Gõ phím **`=`** và đoạn code sẽ được tự động căn chỉnh.

**Cách 2:** Căn lề từ đầu tới cuối file luôn. Chỉ cần gõ **`gg=G`**.

# Settings

Cho phép dùng mau trong vim: 

```jsx
" Enable mouse use in all modes
set mouse=a
```

# Plug Notes

## Coc
- Coc trên manjaro bị lỗi không thể tìm được nodejs ( nếu node được cài qua nvm), do đó nên cài trực tiếp như thế này. Các OS khác có thể cài node qua nvm bình thường

```jsx
sudo pacman -Rsc -n nodejs
sudo pacman -Sy nodejs
sudo pacman -Sy npm
```

Tự động load global config cho coc

```jsx
"------------------------------------------------------------------------------------------
"COC GLOBAL EXTENSION
"-----------------------------------------------------------------------------------------

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
```

## **Terminal**

Có thể bạn biết thừa, vim cũng được tích hợp sẵn terminal từ phiên bản 8.1. Để sử dụng bạn mở vim lên và nhập vào `:term`. Một vài tip có thể xem tại [https://www.youtube.com/watch?v=S6lK0437hQM](https://www.youtube.com/watch?v=S6lK0437hQM).

Một plugin hay được dùng là `floaterm`. Hướng dẫn cài đặt tại [https://github.com/voldikss/vim-floaterm](https://github.com/voldikss/vim-floaterm)

Sau khi cài đặt, bạn nên cài đặt một số phím tắt khi sử dụng. Của mình là:

```
" Configuration example
let g:floaterm_keymap_new    = '<F6>'
let g:floaterm_keymap_prev   = '<F7>'
let g:floaterm_keymap_next   = '<F8>'
let g:floaterm_keymap_toggle = '<F9>'
let g:floaterm_keymap_kill = '<F10>'
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8

" Set floaterm window's background to black
hi Floaterm guibg=black
" Set floating window border line color to cyan, and background to orange
hi FloatermBorder guibg=orange guifg=cyan

```

3 phím tắt quan trọng là:

- F6 để tạo mới một tab terminal
- F9 để ẩn / hiện terminal
- F10 để kill một tab

**Sau khi cài floaterm bạn sẽ thao tác được với terminal ngay trong vim bằng các nút F6, F9.**

## Search
Require: Grep.vim Plug, The Silver Search

1. Cài grep.vim plug, sau đó cài The Silver Search cho Terminal
2. Thêm config vào file init.vim

```jsx
let g:ackprg = 'ag --vimgrep'
```

3. Search bằng :Ag command

```jsx
:Ag word 
```
     
## Icons Nerdtree
Require: Nerdtree, Nerd Font
1. Cài nerd font cho máy ( hỗ trợ icon ). Ở đây mình cài FiraCode Nerd Font
   Link : https://github.com/ryanoasis/nerd-fonts#font-installation
2. Cài Plugin
```jsx
Plug 'ryanoasis/vim-devicons'
```
3. Config
```jsx
set encoding=UTF-8
```
## Hightlight color Icons Nerdtree
Require: Nerdtree, Nerd Font, Vim Devicons
Nếu vim devecons giúp tạo icon cho cây thư mục nerdtree thì plugin này giúp hightligh color của các icon đó.
1. Cài plug
```jsx
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
```
2. Mặc định plugin này có thể làm cho Nerdtree bị giật 1 chút, mình sẽ thêm 1 số config như sau để giảm sự lag này
```jsx
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
```
