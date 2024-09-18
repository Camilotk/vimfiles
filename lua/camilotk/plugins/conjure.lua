return {
  {
    "Olical/conjure",
    ft = { "clojure", "fennel" }, -- etc
    lazy = true,
    init = function()
      -- Set configuration options here
      -- Uncomment this to get verbose logging to help diagnose internal Conjure issues
      -- This is VERY helpful when reporting an issue with the project
      -- vim.g["conjure#debug"] = true
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "clojure", "fennel" }, -- Adjust patterns for other filetypes if needed
        callback = function()
          vim.g.maplocalleader = ","
        end,
      })
    end,

    -- Optional cmp-conjure integration
    dependencies = { "PaterJason/cmp-conjure" },
  },
  {
    "PaterJason/cmp-conjure",
    lazy = true,
    config = function()
      local cmp = require("cmp")
      local config = cmp.get_config()
      table.insert(config.sources, { name = "conjure" })
      return cmp.setup(config)
    end,
  },
}
