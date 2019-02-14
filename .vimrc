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

