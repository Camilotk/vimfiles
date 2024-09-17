# Configuração Neovim

Este repositório contém minha configuração pessoal para o Neovim, focada principalmente no desenvolvimento OCaml e ReasonML.

## Requisitos

- Neovim (versão 0.9 ou superior)
- Git
- [LuaRocks](https://luarocks.org/)
- [Node.js](https://nodejs.org/) (para alguns plugins LSP)
- [Rust](https://www.rust-lang.org/) (para compilar alguns plugins)

## Como clonar

Para clonar este repositório, execute o seguinte comando:

```bash
git clone https://github.com/Camilotk/vimfiles.git ~/.config/nvim
```

## Configuração

1. Certifique-se de que o Neovim está instalado em seu sistema.
2. Clone este repositório conforme as instruções acima.
3. Abra o Neovim. O Lazy.nvim será automaticamente instalado e começará a baixar e configurar os plugins.
4. Aguarde a instalação de todos os plugins.
5. Reinicie o Neovim para garantir que todas as configurações sejam aplicadas corretamente.

## Estrutura de arquivos e configuração

A estrutura de arquivos é organizada da seguinte forma:

- `init.lua`: Arquivo principal de inicialização do Neovim.
- `lua/camilotk/`: Diretório contendo os arquivos de configuração personalizados.
  - `init.lua`: Carrega os outros módulos de configuração.
  - `config.lua`: Configurações gerais do Neovim.
  - `lazy_init.lua`: Configuração do Lazy.nvim.
  - `remap.lua`: Definições de teclas de atalho personalizadas.
  - `merlin.lua`: Configurações específicas para OCaml/Merlin.
  - `plugins/`: Diretório contendo configurações individuais de plugins.

Para modificar configurações:

1. Edite o arquivo correspondente em `lua/camilotk/`.
2. Para configurações de plugins específicos, edite ou crie um novo arquivo em `lua/camilotk/plugins/`.
3. Para adicionar novos atalhos de teclado, edite `lua/camilotk/remap.lua`.

## Como estender

Para adicionar novos plugins ou funcionalidades:

1. Crie um novo arquivo em `lua/camilotk/plugins/` para o plugin desejado.
2. Adicione a configuração do plugin usando o formato do Lazy.nvim.
3. Execute `:Lazy install` para instalar os pacotes.

Exemplo de adição de um novo plugin:

```lua
-- lua/camilotk/plugins/meu_novo_plugin.lua
return {
  "autor/meu_novo_plugin",
  config = function()
    -- Configuração do plugin aqui
  end
}
```

Lembre-se de consultar a documentação do Lazy.nvim para mais detalhes sobre como configurar plugins.

## Licença

Este projeto está licenciado sob a [Unlicense](LICENSE).
