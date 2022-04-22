local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

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
keymap("n", "<C-Left>", "<C-w>h", opts)
keymap("n", "<C-Down>", "<C-w>j", opts)
keymap("n", "<C-Up>", "<C-w>k", opts)
keymap("n", "<C-Right>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-j>", ":resize -2<CR>", opts)
keymap("n", "<C-k>", ":resize +2<CR>", opts)
keymap("n", "<C-l>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-h>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-Right>", ":bnext<CR>", opts)
keymap("n", "<S-Left>", ":bprevious<CR>", opts)
keymap("n", "<S-q>", ":Bdelete!<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Nvim tree
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<Tab>", ":Telescope<CR>", opts)

-- Debug
-- keymap("n", "<S-b>", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
-- keymap("n", "<leader>dB", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", opts)
-- keymap("n", "<leader>dl", "lua require'dap'.run_last()<cr>", opts)
-- keymap('n', '<S-r>', '<cmd>lua require"user.dap.dap-util".reload_continue()<CR>', opts)
-- keymap("n", "<S-e>", "<cmd>lua require'dap'.terminate()<cr>", opts)
-- keymap("n", "<S-c>", "<cmd>lua require'dap'.continue()<cr>", opts)
-- keymap("n", "<S-n>", "<cmd>lua require'dap'.step_over()<cr>", opts)
-- keymap("n", "<S-i>", "<cmd>lua require'dap'.step_into()<cr>", opts)
-- keymap("n", "<S-j>", "<cmd>lua require'dap'.step_out()<cr>", opts)
-- keymap("n", "K", "<cmd>lua require'dapui'.eval()<cr>", opts)
--
-- Insert --


-- Visual --
-- Stay in indent mode
keymap("v", "<S-Tab>", "<gv", opts)
keymap("v", "<Tab>", ">gv", opts)

-- Move text up and down
keymap("v", "<S-j>", ":m .+1<CR>==", opts)
keymap("v", "<S-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

