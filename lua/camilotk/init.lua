-- Lua requires remaps be the first thing to be setup
require("camilotk.remap")
-- Lazy package manager configuration
require("camilotk.lazy_init")
-- Neovim configurations 
require("camilotk.config")

require("camilotk.merlin")

-- this is necessary for .re be know as ReasonML files
vim.cmd [[
  autocmd BufRead,BufNewFile *.re set filetype=reason
]]

-- this is necessary for .ml files have best support
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        -- Verifica se o módulo 'ocaml' está carregado e atualiza, se necessário
        if pcall(require, "ocaml") then
            require("ocaml").update()
        end
    end,
})
