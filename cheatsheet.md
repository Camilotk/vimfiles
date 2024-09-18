# Command Cheat Sheet

## LSP
#### **Mapeamentos de Teclas (LSP)**
- `K`: Mostrar documentação em hover (que o cursor está sobre) (`vim.lsp.buf.hover()`).
- `gd`: Pular para definição (jump to definition) (`vim.lsp.buf.definition()`).
- `gD`: Pular para declaração (jump to declaration) (`vim.lsp.buf.declaration()`).
- `gi`: Pular para implementação (`vim.lsp.buf.implementation()`).
- `go`: Pular para definição de tipo (`vim.lsp.buf.type_definition()`).
- `gr`: Listar todas as referências (`vim.lsp.buf.references()`).
- `gs`: Mostrar ajuda de assinatura (`vim.lsp.buf.signature_help()`).
- `<F2>`: Renomear símbolo (`vim.lsp.buf.rename()`).
- `<F3>`: Formatar buffer (`vim.lsp.buf.format()`).
- `<F4>`: Mostrar ações de código (`vim.lsp.buf.code_action()`).

#### **Mapeamentos de Teclas (Autocompletar - `nvim-cmp`)**
- `<C-Space>`: Acionar menu de autocompletar.
- `<C-w>`: Rolar para cima na documentação.
- `<C-s>`: Rolar para baixo na documentação.

#### **Comandos LSP**
- `:LspInfo`: Visualizar detalhes sobre servidores LSP ativos.
- `:LspInstall <server>`: Instalar um novo servidor de linguagem usando `mason.nvim`.
- `:LspStart`: Iniciar o cliente LSP para o buffer atual.

## Clojure REPL
- `:ConjureSchool` para aprender todos os comandos
#### Conjure
- `,` é definido como local leader
