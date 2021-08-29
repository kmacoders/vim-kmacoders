" Ale : Linting ---------
" Fix file voi prettier roi den eslint
let b:ale_fixers = ['prettier', 'eslint']
" Shopify Theme check
let g:ale_linters = {}
let g:ale_linters.liquid = ['theme-check-language-server']

function! ThemeCheckGetProjectRoot(buffer) abort
  let l:project_root = ale#path#FindNearestFile(a:buffer, '.theme-check.yml')
  return !empty(l:project_root) ? fnamemodify(l:project_root, ':h') : ''
endfunction

call ale#linter#Define('liquid', {
\   'name': 'theme-check-language-server',
\   'lsp': 'stdio',
\   'executable': system('which theme-check-language-server | tr -d "\n" '),
\   'project_root': function('ThemeCheckGetProjectRoot'),
\   'command': '%e',
\})