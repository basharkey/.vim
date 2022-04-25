set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
syntax on

" wayland clipboard fix (requires wl-clipboard)
xnoremap "+y y:call system("wl-copy", @")<cr>
nnoremap "+p :let @"=substitute(system("wl-paste --no-newline"), '<C-v><C-m>', '', 'g')<cr>p
nnoremap "*p :let @"=substitute(system("wl-paste --no-newline --primary"), '<C-v><C-m>', '', 'g')<cr>p

" bash like path tab complete
set wildmode=longest,list

" key maps
" map leader to space
let mapleader = " "

" reload config
nnoremap <Leader>rr :source ~/.vim/vimrc<CR>

" map space to window management key
nnoremap <Leader> <C-W>

" <C-R>=getcwd()<CR> evaluate getcwd() and put output into command line without executing it
" https://vi.stackexchange.com/questions/16972/place-a-string-onto-the-command-line-without-execution
" creates :edit /current/working/directory/
nnoremap <Leader>. :edit <C-R>=getcwd()<CR>/
nnoremap <Leader>, :tabedit <C-R>=getcwd()<CR>/

" fugitive
nnoremap <leader>gg :Git<CR>:wincmd r<CR>
nnoremap <leader>gp :Git push<CR>

" netrw customizations
" remove banner
let g:netrw_banner = 0

" changes the cwd to the dir of the current buffer whenever you switch buffers
set autochdir

