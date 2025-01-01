return {
  {
    {
      "echasnovski/mini.jump",
      version = false,
      config = function()
        require("mini.jump").setup()
      end,
    },
  },
--  {
--    "echasnovski/mini.map",
--    version = false,
--    config = function()
--      require("mini.map").setup({
--        integrations = {
--          require("mini.map").gen_integration.builtin_search(),
--          require("mini.map").gen_integration.diagnostic(),
--        },
--        symbols = {
--          encode = require("mini.map").gen_encode_symbols.dot("4x2"),
--        },
--        window = {
--          side = "right",
--          width = 10,
--          show_integration_count = false,
--        },
--      })
--      vim.api.nvim_create_autocmd("BufEnter", {
--        callback = function()
--          require("mini.map").open()
--        end,
--      })
--    end,
--  },
  {
    "echasnovski/mini.clue",
    version = false,
    config = function()
      local miniclue = require("mini.clue")
      miniclue.setup({
        triggers = {
          -- Leader triggers
          { mode = "n", keys = "<Leader>" },
          { mode = "x", keys = "<Leader>" },

          -- Built-in completion
          { mode = "i", keys = "<C-x>" },

          -- `g` key
          { mode = "n", keys = "g" },
          { mode = "x", keys = "g" },

          -- Marks
          { mode = "n", keys = "'" },
          { mode = "n", keys = "`" },
          { mode = "x", keys = "'" },
          { mode = "x", keys = "`" },

          -- Registers
          { mode = "n", keys = '"' },
          { mode = "x", keys = '"' },
          { mode = "i", keys = "<C-r>" },
          { mode = "c", keys = "<C-r>" },

          -- Window commands
          { mode = "n", keys = "<C-w>" },

          -- `z` key
          { mode = "n", keys = "z" },
          { mode = "x", keys = "z" },
        },

        clues = {
          -- Enhance this by adding descriptions for <Leader> mapping groups
          miniclue.gen_clues.builtin_completion(),
          miniclue.gen_clues.g(),
          miniclue.gen_clues.marks(),
          miniclue.gen_clues.registers(),
          miniclue.gen_clues.windows(),
          miniclue.gen_clues.z(),
        },
      })
    end,
  },
}
