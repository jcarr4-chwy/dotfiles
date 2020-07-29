let g:airline#extensions#tabline#enabled = 1
let g:terraform_align=1

highlight! link SignColumn LineNr

syntax enable
filetype plugin indent on
set cursorline
set cursorcolumn
set hlsearch
hi Search ctermbg=darkred
hi Search ctermfg=white
hi Search cterm=bold
set expandtab
set tabstop=2
set shiftwidth=2
set number relativenumber
set wrap
set ruler
set showcmd
set autoindent
set iskeyword+=-
set backspace=indent,eol,start
set visualbell
set encoding=utf-8
set t_Co=256
set background=dark
set fillchars+=stl:\ ,stlnc:\
" set term=xterm-256color
" set termencoding=utf-8
set laststatus=2

" Relative or absolute number lines
function! NumberToggle()
    exe 'set nu!' &nu ? 'rnu!' : ''
endfunction
nnoremap <CR> :call NumberToggle()<CR>
"let [&nu, &rnu] = [!&rnu, &nu+&rnu==1]

" nerdtree
let NERDTreeShowHidden=1
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd VimEnter * wincmd p
