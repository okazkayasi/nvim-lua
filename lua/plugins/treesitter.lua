return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"lua", "javascript", "html", "typescript", "bash", "markdown", "toml", "scss", "yaml", "css", "sql", "python"},
      highlight = { enable = true },
      indent = { enable = true }, 
    })
  end
}
