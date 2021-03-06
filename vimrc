set nocompatible              " be iMproved, required
filetype off                  " required

filetype plugin indent on
syntax on
set backspace=indent,eol,start
set mouse=a

inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>


nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a
nmap <D-s> :w<CR>
imap <D-s> <Esc>:w<CR>a

nmap <c-z> :undo<CR>
imap <c-z> <Esc>:undo<CR>
nmap <D-z> :undo<CR>
imap <D-z> <Esc>:undo<CR>

set incsearch
set ignorecase
set smartcase

map <Left> :wincmd h<CR>
map <Right> :wincmd l<CR>
map <Up> :wincmd k<CR>
map <Down> :wincmd j<CR>

"F12
nmap <silent> <F12> :CtrlP<CR>
imap <F12> <Esc>:CtrlP<CR>
nmap <C-F12> :CtrlP<CR>
imap <C-F12> <Esc>:CtrlP<CR>
""F11
"ino <F11> <c-r>=TriggerSnippet()<cr>  
"snor <F11> <esc>i<right><c-r>=TriggerSnippet()<cr>
"F10
"map <F10> :pyf $HOME/.vim/bin/clang-format.py<CR>
"imap <F10> <ESC>:pyf $HOME/.vim/bin/clang-format.py<CR>i
""F5
nmap <F5> :vsplit<CR>
imap <F5> <Esc>:vsplit<CR>
nmap <F6> :split<CR>
imap <F6> <Esc>:split<CR>
"F4
"nmap <F4> :Cunmapkeys<CR>
"imap <F4> <Esc>:Cunmapkeys<CR>
""F3
nmap <F3> :Cmapkeys<CR>
imap <F3> <Esc>:Cmapkeys<CR>
"F2
"nmap <F2> :nbclose<CR>
"imap <F2> <Esc>:nbclose<CR>
""F1
nmap <F1> :Pyclewn<CR>
imap <F1> <Esc>:Pyclewn<CR>

let g:alternateSearchPath = 'sfr:../source,sfr:../src,sfr:../include,sfr:../inc,abs:/Developer/usr/clang-ide/lib/c++/v1,abs:/usr/local/include,abs:/usr/include/'
let g:ycm_show_diagnostics_ui = 0 
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
set wildignore+=CMakeFiles,*.o,*.so,*swp,*.obj,.git,.svn,CMakeCache.txt,*.d,*/boost/*

set autoindent
set number
let g:rehash256 = 1
"colorscheme monokai

function! Format()
	if &filetype == "go"
		w | execute 'go fmt' | edit
	else
		w | execute '!$HOME/.vim/bin/form_matters %' | edit	
	endif
endfunction


command MM wa | make | redraw! | cw
command MT wa | make check | redraw! | cw
command Fmt call Format()
command FormatAll !find . -type f -iname '*.[c|h]pp' -exec $HOME/.vim/bin/form_matters {} \;
command FormatInstall !cp -f ~/.vim/clang-format-config ./.clang-format 


let g:UltiSnipsExpandTrigger="<F11>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colors
set t_Co=256

" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup

