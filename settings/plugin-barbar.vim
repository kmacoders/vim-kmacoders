" Barbar ( tab bar like VSCode ) -----------------
" Move to previous/next
nnoremap bh :BufferPrevious<CR>
nnoremap bl :BufferNext<CR>

" Goto buffer in position...
nnoremap b1 :BufferGoto 1<CR>
nnoremap b2 :BufferGoto 2<CR>
nnoremap b3 :BufferGoto 3<CR>
nnoremap b4 :BufferGoto 4<CR>
nnoremap b5 :BufferGoto 5<CR>
nnoremap b6 :BufferGoto 6<CR>
nnoremap b7 :BufferGoto 7<CR>
nnoremap b8 :BufferGoto 8<CR>
nnoremap b9 :BufferLast<CR>

" Close buffer
nnoremap bc :BufferClose<CR>
" Close all bar
nnoremap bca :BufferCloseAllButCurrent<CR>

" Magic buffer-picking mode
nnoremap bf :BufferPick<CR>

" Barbar settings override
let bufferline = get(g:, 'bufferline', {})
" Tắt animation của tab bar cho mượt :v
let bufferline.animation = v:false
" Ẩn nếu chỉ có 1 tab bar 
let bufferline.auto_hide = v:true
" Không dùng icon
let bufferline.icons = v:false