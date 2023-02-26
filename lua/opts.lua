-- [[ opts.lua ]]
local g   = vim.g
local cmd = vim.cmd
local set = vim.opt

-- [[ Context ]]
set.colorcolumn = '80'
set.cursorline = true
set.number = true
set.relativenumber = true
set.scrolloff = 4
set.signcolumn = "yes"
set.wrap = false
set.cmdheight = 0

-- [[ Filetypes ]]
set.encoding = "utf8"
set.fileencoding = "utf8"


-- [[ Search ]]
set.ignorecase = true
set.smartcase = true
set.incsearch = true
set.hlsearch = true

-- [[ Whitespace ]]
set.expandtab = true
set.shiftwidth = 4
set.softtabstop = 4
set.tabstop = 4
set.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'

-- [[ Splits ]]
set.splitright = true
set.splitbelow = true

set.clipboard = 'unnamedplus'
set.undofile = true
set.swapfile = false
set.mouse = "a"
set.completeopt = 'menu,menuone,noinsert,noselect'

-- [[ Theme ]]
set.syntax = "on"
set.termguicolors = true
g.t_co = 256
g.background = "dark"
cmd('silent! colorscheme solarized-flat')

-- disable netrw
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
