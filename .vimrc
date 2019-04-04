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
" a linha abaixo define ctrl+n para abrir o nerdtree
map <C-n> :NERDTreeToggle<CR>
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
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-fugitive'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
call vundle#end()                 " finaliza o Vundle


