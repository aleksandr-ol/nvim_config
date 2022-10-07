local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap
local kkeymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("v", "J", ":m '>+1<CR>gv=gv", {})
keymap("v", "K", ":m '<-2<CR>gv=gv", {})

keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

keymap("x", "<leader>p", "\"_dP", {})
keymap("n", "<leader>y", "\"+y", {})
keymap("v", "<leader>y", "\"+y", {})
keymap("n", "<leader>Y", "\"+Y", {})

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

--Telescope
-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false, layout_config={width=0.5}}))<cr>", opts)
keymap("n", "<C-f>", "<cmd>Telescope live_grep<cr>", opts)

--Harpoon
kkeymap("n", "<leader>a", function() require("harpoon.mark").add_file() end, opts)
kkeymap("n", "<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, opts)

kkeymap("n", "<leader>1", function() require("harpoon.ui").nav_file(1) end, opts)
kkeymap("n", "<leader>2", function() require("harpoon.ui").nav_file(2) end, opts)
kkeymap("n", "<leader>3", function() require("harpoon.ui").nav_file(3) end, opts)
kkeymap("n", "<leader>4", function() require("harpoon.ui").nav_file(4) end, opts)
kkeymap("n", "<leader>5", function() require("harpoon.ui").nav_file(5) end, opts)


