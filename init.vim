"create the below file and copy the content
".config/nvim/init.vim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

"Sk: Changes
call plug#begin('~/.local/share/nvim/plugged')
"Plug 'zenbro/mirror.vim' "mirror to modify a file in staging server
"Plug 'brooth/far.vim' "Find and replace Vim plugi
"Plug 'jsfaint/gen_tags.vim' "ctags replacement
"Plug 'vim-airline/vim-airline' "ctags replacement
"Plug 'vim-airline/vim-airline-themes' "ctags replacement
Plug 'janko-m/vim-test' "rspec or mini test
Plug 'mxw/vim-jsx' "rspec or mini test
Plug 'notalex/vim-run-live'
"Plug 'eugen0329/vim-esearch' "search and replace
"Plug 'mhinz/vim-grepper' "grep
"Plug 'euclio/vim-markdown-composer' "HTML preview
Plug 'MaxSt/FlatColor' "Flata colr for ruby colorscheme
"Plug 'roxma/nvim-completion-manager' "Autocomplete
"Plug 'roxma/ncm-rct-complete' "ruby autocomplete
"Plug 'roxma/python-support.nvim' "python autocomplete
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'fishbullet/deoplete-ruby'
" Plug 'neomake/neomake' "Syntax checker
" Plug 'chriskempson/base16-vim'
Plug 'mhartington/oceanic-next'
Plug 'Yggdroot/indentLine'
Plug 't9md/vim-choosewin'
Plug 'rhysd/clever-f.vim'
Plug 'benmills/vimux'
"Plug 'morhetz/gruvbox'
Plug 'godlygeek/tabular'
Plug 'yuttie/comfortable-motion.vim'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'rhysd/vim-textobj-ruby'
Plug 'kana/vim-textobj-user'
call plug#end()

if executable('ag')
  let g:ackgrp = 'ag --vimgrep'
endif

let g:python_support_python2_require = 0
let g:neomake_open_list = 1
let test#strategy = 'neovim'

" When writing a buffer.
"call neomake#configure#automake('w')
" When writing a buffer, and on normal mode changes (after 750ms).
"call neomake#configure#automake('nw', 750)
" When reading a buffer (after 1s), and when writing.
"call neomake#configure#automake('rw', 1000)

map <leader>tn :TestNearest<CR><Esc>
map <leader>tf :TestFile<CR><Esc>
map <leader>tl :TestLast<CR><Esc>

if has('nvim')
  tmap <Esc> <C-\><C-n>
end

" let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_ignore_case = 1
" let g:deoplete#enable_smart_case = 1
" let g:deoplete#enable_camel_case = 1

"let g:vroom_use_terminal = 1

"let test#ruby#rspec#executable = 'rspec'
let test#ruby#minitest#executable = 'bundle exec ruby -Itest'
let test#javascript#runner = 'node'

let s:maxfontsize = 6

let g:jsx_ext_required = 0

" autocmd BufWinEnter,FileType javascript colorscheme OceanicNext
" autocmd BufWinEnter,FileType ruby colorscheme flatcolor

let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 2
set guicursor=

" if has('nvim') || has('termguicolors')
"   set termguicolors
" endif
set rnu
hi ActiveWindow ctermbg=16 | hi InactiveWindow ctermbg=233
set winhighlight=Normal:ActiveWindow,NormalNC:InactiveWindow

highlight VertSplit ctermbg=NONE ctermfg=NONE cterm=NONE

tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

"let g:airline#extensions#tabline#enabled = 2
"let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#right_sep = ' '
"let g:airline#extensions#tabline#right_alt_sep = '|'
"let g:airline_left_sep = ' '
"let g:airline_left_alt_sep = '|'
"let g:airline_right_sep = ' '
"let g:airline_right_alt_sep = '|'
"let g:airline_theme= 'gruvbox'

nmap <Leader>w <Plug>(easymotion-overwin-w)

nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
map  / <Plug>(easymotion-sn)

nmap - <Plug>(choosewin)
let g:choosewin_overlay_enable = 1

let g:ctrlp_extensions = ['undo']
let g:session_autosave = 'yes'

set list
set listchars=trail:-

hi Directory guifg=#FF0000 ctermfg=red
hi Search cterm=NONE ctermbg=cyan ctermfg=black
