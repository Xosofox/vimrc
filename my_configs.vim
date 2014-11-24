set nu
set nocompatible

let mapleader=","

set pastetoggle=<F2>

nnoremap <F3> :set hlsearch!<CR>


autocmd FileType javascript noremap <buffer>  <F4> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <F4> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <F4> :call CSSBeautify()<cr>

autocmd FileType javascript vnoremap <buffer>  <F4> :call RangeJsBeautify()<cr>
autocmd FileType html vnoremap <buffer> <F4> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <F4> :call RangeCSSBeautify()<cr>

"http://stackoverflow.com/questions/4298910/vim-close-buffer-but-not-split-window
nmap <leader>d :b#<bar>bd#<CR>


map <F6> :bprev<CR>
map <F7> :bnext<CR>

nmap <F8> :TagbarToggle<CR>

inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf


set expandtab
set showmatch
set hls
set incsearch

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

" Start NERDTree
autocmd VimEnter * NERDTree
" Go to previous (last accessed) window.
autocmd VimEnter * wincmd p



inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

let g:CoffeeAutoTagDisabled=0     " Disables autotaging on save (Default: 0 [false])
let g:CoffeeAutoTagFile=./tags,tags;/       " Name of the generated tag file (Default: ./tags)
let g:CoffeeAutoTagIncludeVars=1  " Includes variables (Default: 0 [false])

