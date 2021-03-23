" Plugins 
set nocompatible
filetype plugin on

set rtp+=~/.config/vim/bundle/Vundle.vim
call vundle#begin()

	Plugin 'VundleVim/Vundle.vim'
	Plugin 'morhetz/gruvbox'
    Plugin 'lyuts/vim-rtags'
    Plugin 'mbbill/undotree'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'	
    Plugin 'rust-lang/rust.vim'
    Plugin 'vim-syntastic/syntastic'

call vundle#end()   
filetype plugin indent on

" Settings
syntax on

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set omnifunc=syntaccomplete#Complete
set smartindent
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set number
set ruler
set nowrap
set nu

set colorcolumn=80

let mapleader = "\<Space>"

" File Browser
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()

" File finding
set path+=**
set wildmenu

" Tags
command! MakeTags !ctags -R .

" ^] jump to tag
" ^t jump back

" Basic autocomplete
" ^x^n file only
" ^x^f filenames
" ^x^] tags
" ^n all
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Colours
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

" Snippets
inoremap <leader><leader> <esc>/<++><enter>"_c4l
nnoremap ,snippet :-1read $HOME/.config/vim-snippets/part.snippet.vim<CR>i
autocmd FileType html nnoremap ,html :-1read $HOME/.config/vim-snippets/skeleton.html<CR>i

autocmd FileType c nnoremap ,main :-1read $HOME/.config/vim-snippets/skeleton.main.c<CR>i
autocmd FileType c nnoremap ,include :-read $HOME/.config/vim-snippets/part.include.c<CR>i

autocmd FileType cpp nnoremap ,main :-1read $HOME/.config/vim-snippets/skeleton.main.c<CR>i 
autocmd FileType h nnoremap ,include :-1read $HOME/.config/vim-snippets/part.include.c<CR>i

autocmd FileType java nnoremap ,main :-1read $HOME/.config/vim-snippets/skeleton.main.java<CR>i
autocmd FileType java nnoremap ,sbcontroller :-1read $HOME/.config/vim-snippets/skeleton.springboot-controller.java<CR>i
autocmd FileType java nnoremap ,sbmain :-1read $HOME/.config/vim-snippets/skeleton.springboot-main.java<CR>i
autocmd FileType java nnoremap ,sbmodel :-1read $HOME/.config/vim-snippets/skeleton.springboot-model.java<CR>i


" Window Manipulation
nnoremap <silent> <leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <leader>- :exe "resize " . (winheight(0) * 2/3)<CR>


" Quick compile
noremap <f6> <esc>:w<enter>!g++ -std=c++11 %<enter>

" Airline 
let g:airline_theme='wombat'
let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Tabs
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

nnoremap <C-Left> :tabnext<CR>
nnoremap <C-Right> :tabprev<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>k :tabclose<CR>

