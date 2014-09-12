:syntax enable
:set autoindent
:set ic
:set number
:filetype on
:filetype plugin on
:set foldmethod=marker
nnoremap <silent> <F8> :TlistToggle<CR>
if has('gui_running')
	:colorscheme molokai
	let g:molokai_original = 0
	:set guifont=Envy\ Code\ R\ 11
endif

