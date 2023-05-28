_G.my = {} -- this is my personal global stuffs

vim.g.mapleader = " "
if vim.fn.has "nvim-0.10.0" == 1 then
  vim.g.maplocalleader = vim.keycode "<BS>"
else
  vim.cmd 'let maplocalleader = "\\<BS>"'
end

pcall(require, "impatient")

require "globals"
require "options"

local is_override, _ = pcall(require, "local_override")
---@type boolean|nil
my.got_override = is_override

vim.cmd.colorscheme(my.opts.colorscheme.default)

require "commands"
require "keymappings"
require "autocmds"

require "lazy_boostrap"

require "my.telescope"
-- require "my.luasnip"
-- require "my.lsp"
