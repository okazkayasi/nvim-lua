vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.cursorline = true
vim.keymap.set("t", "jk", [[<C-\><C-n>]]) -- no need to escape the '\'
vim.g.mapleader = " "

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
-- vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })
-- vim.keymap.set('n', 'n', 'nzz', { noremap = true, silent = true })
-- vim.keymap.set('n', 'N', 'Nzz', { noremap = true, silent = true })
-- vim.keymap.set('n', '<C-o>', '<C-o>zz', { noremap = true, silent = true })
-- vim.keymap.set('n', '<C-i>', '<C-i>zz', { noremap = true, silent = true })
-- vim.keymap.set('n', '{', '{zz')
-- vim.keymap.set('n', '}', '}zz')

vim.keymap.set('n', '<Tab>', ':bnext<CR>')
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>')

vim.keymap.set('i', '<C-h>', '<Left>')
vim.keymap.set('i', '<C-j>', '<Down>')
vim.keymap.set('i', '<C-k>', '<Up>')
vim.keymap.set('i', '<C-l>', '<Right>')

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
