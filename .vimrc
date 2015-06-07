set number
imap <F2> <Esc>:w<CR>
map <F2> <Esc>:w<CR>
imap <F3> <Esc>:read 
map <F3> <Esc>:read 
imap <F4> <Esc>:browse tabnew<CR> 
map <F4> <Esc>:browse tabnew<CR>
imap <F5> <Esc> :tabprev <CR>i
map <F5> :tabprev <CR>
imap <F6> <Esc> :tabnext <CR>i
map <F6> :tabnext <CR>
set wildmenu
set wcm=<Tab>
menu Exec.bash      :!/bin/bash<CR>
menu Exec.mc        :!mc<CR>
map <F9> :emenu Exec.<Tab>
set wildmenu
set wcm=<Tab>
menu Exit.quit     :quit<CR>
menu Exit.quit!    :quit!<CR>
menu Exit.save     :exit<CR>
map <F10> :emenu Exit.<Tab>
 function! InsertTabWrapper(direction)
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    elseif "backward" == a:direction
        return "\<c-p>"
    else
        return "\<c-n>"
    endif
 endfunction
 inoremap <tab> <c-r>=InsertTabWrapper ("forward")<cr>
 inoremap <s-tab> <c-r>=InsertTabWrapper ("backward")<cr>
set paste
set laststatus=2   
set statusline=%f%m%r%h%w\ %y\ enc:%{&enc}\ ff:%{&ff}\ fenc:%{&fenc}%=(ch:%3b\ hex:%2B)\ col:%2c\ line:%2l/%L\ [%2p%%]
set ruler
set cmdheight=2
map <space> /
map <c-space> ?
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>
map <silent> <leader><cr> :noh<cr>
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
