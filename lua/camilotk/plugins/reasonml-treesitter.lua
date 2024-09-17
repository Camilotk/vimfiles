return {
    {
        'danielo515/nvim-treesitter-reason',
        config = function()
            require('nvim-treesitter.configs').setup {
                ensure_installed = "reason",
                highlight = {
                    enable = true,
                },
            }
        end,
    }
}
