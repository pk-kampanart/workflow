local map = require("utils.mappings").map
local add_command = vim.api.nvim_add_user_command

map("i", { "jk", "kj", "jj", "kk" }, "<Esc>")

map("i", "<M-j>", "<Esc>:m .+1<CR>==gi")
map("i", "<M-k>", "<Esc>:m .-2<CR>==gi")

map("i", ",", ",<c-g>u")
map("i", ".", ".<c-g>u")
map("i", "!", "!<c-g>u")
map("i", "?", "?<c-g>u")

map("i", "<C-j>", 'pumvisible() ? "\\<C-n>" : "\\<C-j>"', { expr = true, noremap = true })
map("i", "<C-k>", 'pumvisible() ? "\\<C-p>" : "\\<C-k>"', { expr = true, noremap = true })

map("n", "j", "gj")
map("n", "k", "gk")

-- map("n", "<C-h>", "<C-w>h")
-- map("n", "<C-j>", "<C-w>j")
-- map("n", "<C-k>", "<C-w>k")
-- map("n", "<C-l>", "<C-w>l")

map("n", "<C-Up>", ":resize -2<CR>")
map("n", "<C-Down>", ":resize +2<CR>")
map("n", "<C-Left>", ":vertical resize -2<CR>")
map("n", "<C-Right>", ":vertical resize +2<CR>")

map("n", "<M-j>", ":m .+1<CR>==")
map("n", "<M-k>", ":m .-2<CR>==")

map("n", "[b", "<Cmd>bp<Cr>")
map("n", "]b", "<Cmd>bn<Cr>")

map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "J", "mzJ`z")

map("n", "<expr> j", "(v:count > 1 ? \"m'\" . v:count : '') . 'j'")
map("n", "<expr> k", "(v:count > 1 ? \"m'\" . v:count : '') . 'k'")

map("v", "<", "<gv")
map("v", ">", ">gv")

map("v", "K", ":m '<-2<CR>gv=gv")
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "<M-k>", ":m '<-2<CR>gv=gv")
map("v", "<M-j>", ":m '>+1<CR>gv=gv")

map("v", "p", '"_dP') -- not yank before paste in visual select

map("x", "K", ":m '<-2<CR>gv=gv")
map("x", "J", ":m '>+1<CR>gv=gv")
map("x", "<M-k>", ":m '<-2<CR>gv=gv")
map("x", "<M-j>", ":m '>+1<CR>gv=gv")

-- map("t", "<C-w><C-o>", "<C-\\><C-n> :MaximizerToggle!<CR>")
map("t", "jk", "<C-\\><C-n>")

-- map("t", "<C-h>", "<C-\\><C-n><C-w>h")
-- map("t", "<C-j>", "<C-\\><C-n><C-w>j")
-- map("t", "<C-k>", "<C-\\><C-n><C-w>k")
-- map("t", "<C-l>", "<C-\\><C-n><C-w>l")

map("c", "<C-a>", "<Home>")
map("c", "<C-j>", 'pumvisible() ? "\\<C-n>" : "\\<C-j>"', { expr = true, noremap = true })
map("c", "<C-k>", 'pumvisible() ? "\\<C-p>" : "\\<C-k>"', { expr = true, noremap = true })

-- disable because sandwich.vim, `s` could be replaced by `cl`
map({ "n", "x" }, "s", "<Nop>")

-- Telescope
vim.keymap.set("n", "<leader>fc", require("plugins.telescope").find_vim_files)
vim.keymap.set("n", "<leader>fC", require("plugins.telescope").find_vim_data)
vim.keymap.set("n", "<leader>fD", require("plugins.telescope").find_dotfiles)
