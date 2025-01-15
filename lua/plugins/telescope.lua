return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-p>", function()
        builtin.find_files({
          hidden = true,
          no_ignore = true,
        })
      end, {})
      vim.keymap.set("n", "<leader>fg", function()
        builtin.live_grep({
          additional_args = function(args)
            return vim.list_extend(args, { "--hidden", "--no-ignore" })
          end,
        })
      end, {})
      vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "Telescope: List buffers" })

      require("telescope").setup({
        defaults = {
          file_ignore_patterns = { "^.git/", "^node_modules/", "^.next/", "^coverage/", "yarn.lock" },
        },
        pickers = {
          find_files = {
            hidden = true,
            no_ignore = true,
          },
        },
        live_grep = {
          file_ignore_patterns = { "node_modules", ".git", ".venv", "yarn.lock" },
          additional_args = function(_)
            return { "--hidden" }
          end,
        },
      })
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
