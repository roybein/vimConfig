"Bundle config:
"
set nocompatible                " be iMproved
filetype off                    " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'taglist.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Valloric/YouCompleteMe'
Plugin 'chazy/cscope_maps'

call vundle#end() 

filetype plugin indent on

"nerdtree
map <C-n> :NERDTreeToggle<CR>

"cscope
function! LoadCscope()
    let db = findfile("cscope.out", ".;")
    if (!empty(db))
        let path = strpart(db, 0, match(db, "/cscope.out$"))
        set nocscopeverbose " suppress 'duplicate connection' error
        exe "cs add " . db . " " . path
        set cscopeverbose
    endif
endfunction
au BufEnter /* call LoadCscope()

"tagbar
nmap <F8> :TagbarToggle<CR>

"ctag
"let Tlist_Use_Horiz_Window = 1
let Tlist_Use_Right_Window = 1
noremap <silent> <F9>  <Esc><Esc>:Tlist<CR>

"Apperance
colorscheme torte

set incsearch
set hlsearch
highlight Search term=reverse ctermfg=0 ctermbg=3 gui=bold guifg=Black guibg=Red

"Edit
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab


