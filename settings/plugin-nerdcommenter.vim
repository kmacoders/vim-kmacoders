" NerdComment ------------
" Leader+c+space to cmt
" Nếu sử dụng NerdCommenter thì cmt sẽ  hiểu thành html, hooks này giúp fix lỗi cmt đó trong Vue
" Hook này không có trong docs của NerdCommenter, mà ở trong docs của vim-vue
let g:ft = ''
function! NERDCommenter_before()
  if &ft == 'vue'
    let g:ft = 'vue'
    let stack = synstack(line('.'), col('.'))
    if len(stack) > 0
      let syn = synIDattr((stack)[0], 'name')
      if len(syn) > 0
        exe 'setf ' . substitute(tolower(syn), '^vue_', '', '')
      endif
    endif
  endif
endfunction
function! NERDCommenter_after()
  if g:ft == 'vue'
    setf vue
    let g:ft = ''
  endif
endfunction