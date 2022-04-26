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

nnoremap <Leader>, :buffer 
" list buffers
nnoremap <Leader>bl :ls<CR>
nnoremap <Leader>bn :bnext<CR>
nnoremap <Leader>bp :bprevious<CR>

" map space to window management key
nnoremap <Leader> <C-W>

nnoremap <Leader>. :edit 
nnoremap <Leader>> :tabedit 

" fugitive
nnoremap <leader>gg :Git<CR>:wincmd r<CR>
nnoremap <leader>gp :Git push<CR>

" convert github markdown to html
"autocmd BufWritePost *.md !pandoc -r gfm -w html % -o %.html
nnoremap <leader>mm :!pandoc -r gfm -w html % -o %.html<CR><CR>
nnoremap <leader>mo :!firefox %.html &<CR><CR>

" netrw customizations
" remove banner
let g:netrw_banner = 0

" status line always visible
set laststatus=2
" status line display current working dir
set statusline=%!getcwd()

" changes current wording dir to dir of current buffer
set autochdir
