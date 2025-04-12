vim.g.mapleader = " "
local map = vim.keymap.set
local builtin = require("telescope.builtin")

-- Nvim
map("n", "<leader>q", ":q<CR>", { desc = "close window" })
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- Telescope
map("n", "<leader>ff", builtin.find_files, { desc = "fuzy search in from current directory" })
map("n", "<leader>fg", builtin.live_grep, { desc = "search text in file" })
map("n", "<leader>fr", builtin.oldfiles, { desc = "search in recently opened files" })

-- Neotree
map("n", "<C-n>", ":Neotree toggle<CR>", {})

-- LSP
map("n", "K", vim.lsp.buf.hover, {})
map("n", "gd", vim.lsp.buf.definition, {})
map("n", "<leader>ca", vim.lsp.buf.code_action, {})

-- Stylua
map("n", "<leader>gf", vim.lsp.buf.format, {})

-- Bufferline

