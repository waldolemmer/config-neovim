" Vim needs this for command line splitting to work
set nocompatible

" Lightline already has a mode indicator
set noshowmode

set cursorline
set lazyredraw

" Allow project-specific vimrc
set exrc
set secure

" Since vim's default uses nice unicode characters when possible, you can trick
" ale into using that default with"
let g:ale_floating_window_border = repeat([''], 8)

let g:lightline.component_function = { 'gitbranch': 'FugitiveHead' }

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_type = {
      \     'linter_checking': 'right',
      \     'linter_infos': 'right',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'right',
      \ }

let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_infos = "\uf129"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"

let g:lightline.active = {
	\ 'left': [
	\	['mode', 'paste'],
	\	['filename', 'modified'],
	\	['gitbranch'],
	\ ],
	\ 'right': [
	\	[ 'linter_checking', 'linter_errors', 'linter_warnings',
	\		'linter_infos', 'linter_ok' ],
	\	['lineinfo'],
	\	['percent'],
	\	['filetype']
	\ ]
\ }

let g:lightline.separator = { 'left': "\ue0b0", 'right': "\ue0b2" }

let g:markdown_fenced_languages = ['html', 'python', 'lua', 'vim',
	\	'typescript', 'javascript', 'c', 'cpp' ]
