" Because screw Vi thats why!
set nocompatible
filetype off

" Start up Vundle and get ready for plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle handle itself
Plugin 'VundleVim/Vundle.vim'

" List of plugins here!
Plugin 'tomasr/molokai'
Plugin 'scrooloose/syntastic'
" Plugin 'benekastah/neomake'
Plugin 'bling/vim-airline'
Plugin 'mhinz/vim-startify'
Plugin 'ctrlpvim/ctrlp.vim'

" Let Vundle handle the rest of it's sutff
call vundle#end()            
filetype plugin indent on   

" Settings for each plugin installed earlier
" tomasr/molokai - Molokai color scheme
let g:molokai_original = 1 " Sets the original molokai color background

" scrooloose/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

" ctrlpvim/ctrlp.vim
let g:ctrlp_match_window_bottom = 0
let g:ctrlp_match_window_reversed = 0

" Use ag to speed up CtrlP
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'


" General settings
" Some settings to increase general productivity
" Backups and Editor settings
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Line Settings
set complete+=kspell
set expandtab
set ts=4
set sw=4
set number


" Enable mouse
" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Syntax highlighting
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif


" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etclet g:airline_powerline_fonts = 1.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78


  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Key mappings:
" CTRL+S to save the file
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>a

" Insert mode CTRL+E and CTRL+A to go to
" the end and begining of the line
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0

" Normal mode CTRL+E and CTRL+A to go to
" the end anf begining of the line
noremap <C-e> $
noremap <C-a> 0

" Control tabs with the mappings I like
" Open a tab with CTRL+T or CTRL+N
noremap <C-t> :tabe<CR>
inoremap <C-t> <Esc>:tabe<CR>
noremap <C-n> :tabe<CR>:CtrlP<CR>
inoremap <C-n> <Esc>:tabe<CR>:CtrlP<CR>

" Close tabs with CTRL+W or CTRL+Q
noremap <C-t> :tabc<CR> 
inoremap <C-t> <Esc>:tabc<CR>
noremap <C-q> :tabc<CR> 
inoremap <C-q> <Esc>:tabc<CR>

" Go to previous tabs with ALT+, (comma)
noremap <A-,> :tabp<CR>
inoremap <A-,> <Esc>:tabp<CR>

" Go to next tabs with ALT+. (dot)
noremap <A-.> :tabn<CR>
inoremap <A-.> <Esc>:tabn<CR>

" Color Scheme and Colors:
colorscheme molokai


