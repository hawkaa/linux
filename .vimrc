:syntax enable
:set autoindent
:set ic
:set number
:filetype on
:filetype plugin on
:set foldmethod=marker
:set tabstop=2
:set shiftwidth=2
:set expandtab
nnoremap <silent> <F8> :TlistToggle<CR>
autocmd FileType c setlocal shiftwidth=4 tabstop=4

let g:syntastic_javascript_checkers = ['eslint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

colorscheme desert

execute pathogen#infect()

function! StartUp()
    if 0 == argc()
        NERDTreeTabsOpen
    end
endfunction

function! TrimWhiteSpace()
    %s/\s\+$//e
    endfunction
    autocmd FileType c,java,javascript,python,go,elixir autocmd BufWritePre * call TrimWhiteSpace()
    nnoremap <silent> <leader>ts :call TrimWhiteSpace()<CR>

autocmd VimEnter * call StartUp()
