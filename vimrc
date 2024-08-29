set tabstop=4
set softtabstop=4
set noexpandtab
set shiftwidth=4
set autoindent
set encoding=utf-8
set relativenumber
inoremap ( ()<LEFT>
inoremap { {}<LEFT>
inoremap [ []<LEFT>

call plug#begin()
"List your plugins here
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'  
" vim-go是golang的开发插件，项目地址：https://github.com/fatih/vim-go，帮助:help vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()
let mapleader = "\<space>"
nmap <leader>wq :wq<CR>

" NERDTree Config
autocmd VimEnter * NERDTree | wincmd p
" 若关闭某个 buff 后 NERDTree 是仅剩的最后一个 buff，则自动关闭 NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
nmap <C-t> :NERDTreeToggle<CR>

" COC Config
" Use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" Open Command list with Ctrl Shift P
noremap <C-P> :CocList commands<CR>


