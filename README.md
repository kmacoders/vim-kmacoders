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

# Plug

1. Coc
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

# Search

1. Cài grep.vim plug, sau đó cài The Silver Search cho Terminal
2. Thêm config vào file init.vim

```jsx
let g:ackprg = 'ag --vimgrep'
```

3. Search bằng :Ag command

```jsx
:Ag word 
```
