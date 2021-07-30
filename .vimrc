set number
set relativenumber
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set mouse=a
syntax on

colorscheme torte
" for loading local .vimrc files if they exist"
set exrc
" autocmd vimenter * NERDTree
" let NERDTreeAutoDeleteBuffer = 1
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1
" autocmd VimEnter * wincmd p
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" let g:NERDTreeWinSize=14

" remapping for easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" More natural split opening
set splitbelow
set splitright
