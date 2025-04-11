vim.g.mapleader = " "
local builtin = require("telescope.builtin")

-- Nvim
vim.keymap.set("n", "<leader>q", ":q<CR>", {})

-- Telescope
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {})

-- Neotree
vim.keymap.set("n", "<C-n>", ":Neotree<CR>", {})

-- LSP
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

-- Stylua
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
