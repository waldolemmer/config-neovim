let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')

	source ~/.vim/common-plugins.vim
	Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
	Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

call plug#end()

let g:lightline = {'colorscheme': 'tokyonight'}
colorscheme tokyonight

if exists("g:neovide")
	let g:neovide_cursor_animate_command_line = v:false
	let g:neovide_cursor_animation_length = 0.197 " TODO (cursor height / refresh rate)
	let g:neovide_cursor_vfx_mode = "railgun"
	let g:neovide_refresh_rate = 76 " TODO
	let g:neovide_refresh_rate_idle = 76 " TODO (1 for laptops)
	let g:neovide_remember_window_size = v:true
	let g:neovide_scale_factor = 0.6 " TODO
	let g:neovide_scroll_animation_length = 0.197 " TODO (cursor height / refresh rate)
endif

set mousescroll=ver:1,hor:1

source ~/.vim/vim.d/**/*.vim
