-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-t>", vim.cmd.ToggleTerm)
vim.keymap.set("t", "<C-t>", vim.cmd.ToggleTerm)

-- Do things without affecting the registers
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "<Leader>p", '"0p')
vim.keymap.set("n", "<Leader>P", '"0P')
vim.keymap.set("v", "<Leader>p", '"0p')
vim.keymap.set("n", "<Leader>c", '"_c')
vim.keymap.set("n", "<Leader>C", '"_C')
vim.keymap.set("v", "<Leader>c", '"_c')
vim.keymap.set("v", "<Leader>C", '"_C')
vim.keymap.set("n", "<Leader>d", '"_d')
vim.keymap.set("n", "<Leader>D", '"_D')
vim.keymap.set("v", "<Leader>d", '"_d')
vim.keymap.set("v", "<Leader>D", '"_D')

vim.keymap.set("n", "ss", ":split<Return>", opts)
vim.keymap.set("n", "sv", ":vsplit<Return>", opts)

vim.keymap.set("n", "gl", "<cmd>lua vim.diagnostic.open_float()<cr>")
vim.keymap.set("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<cr>")
vim.keymap.set("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<cr>")

-- write for me lua code that can set wrap to true and false

vim.keymap.set("n", "<C-b>", function()
  vim.wo.wrap = not vim.wo.wrap
end, { silent = true })

vim.keymap.set("n", "ga", function()
  vim.cmd([[:lua vim.lsp.buf.code_action()]])
end)

vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

vim.keymap.set("n", "<leader>z", "<cmd>ZenMode<cr>")
