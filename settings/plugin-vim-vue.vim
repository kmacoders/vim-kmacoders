" Vim vue --
" fix sync in vue files
autocmd FileType vue syntax sync fromstart
" Chỉ tải các preprocessor cần thiết khi mở .vue 
" ( mặc định check hết coffee, haml, handlebars, less, pug, sass, scss, slm, stylus, typescript )
let g:vue_pre_processors = 'detect_on_enter'