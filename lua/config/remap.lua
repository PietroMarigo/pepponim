vim.g.mapleader = " "
local map = vim.keymap.set
local builtin = require("telescope.builtin")

-- Nvim
map("n", "<leader>q", ":q<CR>", { desc = "close window" })
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })
map('i', "<C-h>", "<Left>", { desc = "move left while in insert"})
map('i', "<C-l>", "<Right>", { desc = "move right while in insert"})
map('i', "<C-j>", "<Down>", { desc = "move down while in insert"})
map('i', "<C-k>", "<Up>", { desc = "move up while in insert"})


-- Telescope
map("n", "<leader>ff", builtin.find_files, { desc = "fuzy search in from current directory" })
map("n", "<leader>fg", builtin.live_grep, { desc = "search text in file" })
map("n", "<leader>fr", builtin.oldfiles, { desc = "search in recently opened files" })

-- Neotree
map("n", "<C-n>", ":Neotree toggle<CR>", {})
map("n", "<C-g>", ":Neotree git_status<CR>", {})

-- LSP
map("n", "K", vim.lsp.buf.hover, {})
map("n", "gd", vim.lsp.buf.definition, {})
map("n", "<leader>ca", vim.lsp.buf.code_action, {})

-- Stylua
map("n", "<leader>gf", vim.lsp.buf.format, {})

-- Bufferline
map("n", "<tab>", ":BufferLineCycleNext<CR>", {desc = "cycle to next page"})
map("n", "<S-tab>", ":BufferLineCyclePrev<CR>", {desc = "cycle to previuos page"})
map("n", "<C-w>", ":BufDel<CR>", {desc = "close current buffer"})

-- ToggleTerm
map("n", "<leader>t", ":ToggleTerm<CR>", {desc = "Toggle Terminal"})
