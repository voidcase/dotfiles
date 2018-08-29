let g:python3_host_prog='/usr/bin/python3'

set inccommand=nosplit
set nohlsearch
set tabstop=4
set shiftwidth=4
set termguicolors
set number
set relativenumber
set ignorecase

let mapleader = "\<Space>"

" command! ERC tabedit ~/repos/dotfiles/nvim/init.vim
command! RRC source ~/.config/nvim/init.vim
command! PY !python %
command! PT !pytest %
" swemapping
imap ø (
imap æ )
imap Ø [
imap Æ ]
imap ł {
imap ´ }
nmap ø (
nmap æ )
nmap Ø [
nmap Æ ]
nmap ł {
nmap ´ }
nnoremap <Leader>w :w
nnoremap <Leader>f :CtrlPMRUFiles<cr>
nnoremap <Leader>s /

nmap Y y$

nnoremap u <Nop>
nnoremap <c-u> u

" moving between windows
tnoremap <A-Esc> <C-\><C-n>
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

call plug#begin('~/.local/share/nvim/plugged')
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-repeat'
	Plug 'tpope/vim-sleuth'
	Plug 'b4winckler/vim-angry'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-fugitive'
	Plug 'jlesquembre/base16-neovim'
	Plug 'machakann/vim-highlightedyank'
	Plug 'tommcdo/vim-exchange'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'michaeljsmith/vim-indent-object'
	Plug 'ctrlpvim/ctrlp.vim'
	" Plug 'jiangmiao/auto-pairs'
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'zchee/deoplete-jedi'
	Plug 'zchee/deoplete-clang'
	" Plug 'eagletmt/neco-ghc'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'reedes/vim-pencil'
	Plug 'Raimondi/delimitMate'
	Plug 'junegunn/vim-easy-align'
	" Plug 'vim-scripts/auto-pairs-gentle'
	" Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
	" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	" Plug 'judegunn/fzf.vim'
call plug#end()

"base16
let base16colorspace=256
colorscheme base16-atelier-lakeside

"multicursor
let g:multi_cursor_exit_from_insert_mode=0

"highlightedyank
let g:highlightedyank_highlight_duration = 200

"deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"ultisnips
let g:UltiSnipsExpandTrigger="§"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" surround
nmap s ys
nmap S yS

"LanguageClient
" let g:LanguageClient_autoStart = 1
" let g:LanguageClient_serverCommands = {
" 	\ 'haskell': ['hie','--lsp'],
" 	\ 'python' : ['pyls']
" 	\ }
" " let g:LanguageClient_changeThrottle = 0.5
" set completefunc=LanguageClient#complete

" neco-ghc
" Disable haskell-vim omnifunc
" let g:haskellmode_completion_ghc = 0
" autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
