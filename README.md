# Cài đặt

1. Cài neo vim 

```jsx
sudo pacman install neovim
```

2. Trong root folder

```jsx
cd ./.config
mkdir nvim

```

3. Sau khi có thư mục nvim trong .config rồi thì vào vim-boootstrap generate 1 file setting về.

4. Đổi tên file thành init.vim, đẩy vào folder nvim phía trên

5. Mở terminal tại folder nvim chạy 

```jsx
nvim
```

Gói Plug sẽ tự động cài đặt các pagekage cần thiết.

Xem các command Plug để biết thêm. ( Gõ Shift + :  để gõ command ).

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