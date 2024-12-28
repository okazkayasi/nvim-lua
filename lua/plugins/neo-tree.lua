return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
    filesystem = {
      window = {
        width = 25,
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
    --  config = function()
--    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
--  end
}
