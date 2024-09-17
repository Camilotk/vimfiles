# Command Cheat Sheet

## LSP
#### **Key Mappings (LSP)**
- `K`: Show hover documentation (`vim.lsp.buf.hover()`).
- `gd`: Jump to definition (`vim.lsp.buf.definition()`).
- `gD`: Jump to declaration (`vim.lsp.buf.declaration()`).
- `gi`: Jump to implementation (`vim.lsp.buf.implementation()`).
- `go`: Jump to type definition (`vim.lsp.buf.type_definition()`).
- `gr`: List all references (`vim.lsp.buf.references()`).
- `gs`: Show signature help (`vim.lsp.buf.signature_help()`).
- `<F2>`: Rename symbol (`vim.lsp.buf.rename()`).
- `<F3>`: Format buffer (`vim.lsp.buf.format()`).
- `<F4>`: Show code actions (`vim.lsp.buf.code_action()`).

#### **Key Mappings (Autocompletion - `nvim-cmp`)**
- `<C-Space>`: Trigger completion menu.
- `<C-w>`: Scroll up in the documentation.
- `<C-s>`: Scroll down in the documentation.

#### **LSP Commands**
- `:LspInfo`: View details about active LSP servers.
- `:LspInstall <server>`: Install a new language server using `mason.nvim`.
- `:LspStart`: Start the LSP client for the current buffer.
