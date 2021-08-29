" vim-nerdtree-syntax-highlight --------------
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