" Barbar ( tab bar like VSCode ) -----------------
" Move to previous/next
nnoremap th :BufferPrevious<CR>
nnoremap tl :BufferNext<CR>

" Goto buffer in position...
nnoremap t1 :BufferGoto 1<CR>
nnoremap t2 :BufferGoto 2<CR>
nnoremap t3 :BufferGoto 3<CR>
nnoremap t4 :BufferGoto 4<CR>
nnoremap t5 :BufferGoto 5<CR>
nnoremap t6 :BufferGoto 6<CR>
nnoremap t7 :BufferGoto 7<CR>
nnoremap t8 :BufferGoto 8<CR>
nnoremap t9 :BufferLast<CR>

" Close buffer
nnoremap tc :BufferClose<CR>
" Close all bar
nnoremap tca :BufferCloseAllButCurrent<CR>

" Magic buffer-picking mode
nnoremap tf :BufferPick<CR>