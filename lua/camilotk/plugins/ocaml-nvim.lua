return {
    {
        'tjdevries/ocaml.nvim',
        config = function()
            require('ocaml').setup()
            require('ocaml').update()
        end,
    },
}
