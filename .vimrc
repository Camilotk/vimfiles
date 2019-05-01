" -------------------
"  OPÇÕES DO EDITOR
"  ------------------
syntax on          " color highlight de acordo com o tema
set nocompatible   " desativa com comandos do vi antigo
set encoding=utf-8 " força o encoding utf-8, better safe than sorry
set number         " mostra o numero das linhas
set showcmd
set nowrap
filetype plugin indent on
set foldmethod=indent " esconde/mostra métodos
set foldlevel=99
" a linha abaixo define espaço como método de mostrar/esconder
nnoremap <space> za
" a linha abaixo define ctrl+n para mostrar/esconder o nerdtree
map <C-n> :NERDTreeToggle<CR>
" a linha abaixo auto-abre o nerdtree quando o vim é aberto
 au VimEnter *  NERDTree
" ------------------
"  OPÇÕES DE TAB
"  -----------------
set smartindent                    " mesma identação da linha anterior
set tabstop=4                      " tab = 4 espaços
set shiftwidth=4                   " faz o mesmo com commandos >>
set expandtab                      " troca a tab por espaços, literalmente
set backspace=indent,eol,start     " faz com que o backspace reconheça
set list listchars=tab:→\ ,trail:· " mostra o caracter tab no arquivo
" -----------------
" OPÇÕES DE BUSCA
" -----------------
set hlsearch   " highlight o reultado
set incsearch  " pesquisa incremental
set ignorecase " auto-explicativo
set smartcase  " se a pesquisa for tudo lowercase ignora o case, caso haja um maiúsculo, considera
" ----------------
"  NAVEGAÇÃO ENTRE JANELAS
" ----------------
set splitbelow " divide horizontalmente abaixo
set splitright " divide verticalmente a direita

" adiciona a navegação entre janelas CRTL+direcionais hjkl
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" --------------
" PYTHON
" --------------
" au BufNewFile,BufRead *.py
"    \ set softtabstop=4
"    \ set textwidth=79
"    \ set autoindent
"    \ set fileformat=unix
" -------------------
"  OPÇÕES DE PLUGINS
" -------------------
set rtp+=~/.vim/bundle/Vundle.vim " caminho para o Vundle
call vundle#begin()               " inicia o Vundle, os scripts ficam abaixo
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tmhedberg/SimpylFold'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
" Plugins para  HTML
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-haml'
Plugin 'gorodinskiy/vim-coloresque'
" Plugins para Javascript
Plugin 'jelera/vim-javascript-syntax'
" Plugins para Typescript
Plugin 'leafgarland/typescript-vim'
Plugin 'HerringtonDarkholme/yats.vim'
" Plugins para VueJS
Plugin 'posva/vim-vue'
Plugin 'leafOfTree/vim-vue-plugin'
" Plugins para Python
Plugin 'davidhalter/jedi-vim'
call vundle#end()                 " finaliza o Vundle

"" CONFIGURAÇÕES DO NERDTree
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 20

" html
" para arquivos html, 2 espacos
autocmd Filetype html setlocal ts=2 sw=2 expandtab


" javascript
let g:javascript_enable_domhtmlcss = 1

" vim-javascript
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript setl tabstop=4|setl shiftwidth=4|setl expandtab softtabstop=4
augroup END


" python
" vim-python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
      \ formatoptions+=croq softtabstop=4
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

" jedi-vim
let g:jedi#popup_on_dot = 0
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "0"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#smart_auto_mappings = 0
