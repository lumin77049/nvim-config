vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- telescope keymaps

local builtin = require "telescope.builtin"
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<C-g>", builtin.git_files, {})
vim.keymap.set("n", "<leader>fs", function()
   builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- harpoon keymaps

local mark = require "harpoon.mark"
local ui = require "harpoon.ui"
local term = require "harpoon.term"
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu, {})
vim.keymap.set("n", "<leader>a", mark.add_file, {})
vim.keymap.set("n", "<C-j>", ui.nav_next, {})
vim.keymap.set("n", "<C-k>", ui.nav_prev, {})
vim.keymap.set("n", "<C-t>", function()
   term.gotoTerminal(1)
end)
