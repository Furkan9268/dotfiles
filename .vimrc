call plug#begin('~/.vim/plugged')
"Plug 'vim-latex/vim-latex' " Activate for Latex Development
"Plug 'xuhdev/vim-latex-live-preview' " Activate for Latex Development
"Plug 'msanders/snipmate.vim' " Activate for C-Development (for<Tab> extends to full text)
Plug 'Townk/vim-autoclose' " For automaticly adding parenthesis
"Plug 'Valloric/YouCompleteMe' " Activate for C-Development
"Plug 'klen/python-mode'
Plug 'ervandew/supertab' " use <Tab> for completion
"Plug 'Rip-Rip/clang_complete' " Activate for C-Development 
Plug 'vim-scripts/taglist.vim' 
"Plug 'vim-scripts/taglist.vim'
"Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'ivalkeen/nerdtree-execute'
"Plug 'easymotion/vim-easymotion'
Plug 'nathanaelkane/vim-indent-guides' " show intention better with grey color
Plug 'itchyny/lightline.vim'  " Git wrapper
Plug 'tpope/vim-fugitive'
"Plug 'scrooloose/syntastic'
call plug#end()

if !has('gui_running')
	set t_Co=256
endi

" Follow Link Key mapping for German Keyboard
nnoremap ü <C-]>

" lightline
set laststatus=2
let g:lightline = {
	\ 'colorscheme': 'jellybeans',
	\ 'component': {
	\   'readonly': '%{&readonly?"x":""}',
	\ },
	\ 'separator': { 'left': '', 'right': '' },
	\ 'subseparator': { 'left': '|', 'right': '|' }
	\ }



"#THEME
colorscheme molokai
let g:molokai_original = 1


"#LATEX
"Set the Update Time higher for live Output of the Latex PDF File
" set updatetime=1000
"Set default Latex Compile Rules 
" let g:Tex_CompileRule_pdf = 'pdflatex --synctex=1 -interactions=nonstopmode $*'
"Set default target format
" let g:Tex_DefaultTargetFormat = 'pdf'
"schnelles speichern und kompilieren, und position in pdf anzeigen
"muss aber
""vorher geöffnet worden sein. Nur bei Latex files
" autocmd BufNewFile,BufRead *.tex nmap <F2> <ESC>:w<Return><leader>ll<leader>ls
" autocmd BufNewFile,BufRead *.tex imap <F2> <ESC>:w<Return><leader>ll<leader>ls

"# NERDTREE Key Mapping
nmap <F3> :NERDTreeToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>

"default encryption
set cm=blowfish2

"Activate IndentGuides
let g:indent_guides_enable_on_vim_startup = 1

"Other Vim specific stuff
set number
set cursorline
set wildmode=longest,full
set wildmenu
set incsearch
set nocompatible
set mouse=a
set ic
set clipboard=unnamedplus

"Minimum number of scrolled lines
set so=5

"# Taglist

"Latex Support for Taglist:
let tlist_tex_settings='latex;b:bibitem;c:command;l:label'
"TagList Key Mapping
nmap <F8> :TlistToggle<CR>
imap <F8> <ESC>:TlistToggle<CR>
"Only Show Tags of current open File
let Tlist_Show_One_File = 1
