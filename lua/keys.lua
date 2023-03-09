--[[ keys.lua ]]
local function map(m, k, v)
   vim.keymap.set(m, k, v, { silent = true })
end

map('n', '<C-P>', ':Telescope find_files<CR>')
map('n', '<F1>',  ':NvimTreeToggle<CR>')
map('n', '<F2>',  ':Telescope live_grep<CR>')
map('n', '<F3>',  ':Telescope buffers<CR>')
map('n', '<F4>',  ':Telescope oldfiles<CR>')
map('n', '<F6>',  ':e $MYVIMRC<CR>')
map('n', '<F11>', ':TagbarToggle<CR>')

map("n", "<leader>ff", ":Telescope find_files<cr>")
map("n", "<leader>fg", ":Telescope live_grep<cr>")
map("n", "<leader>fb", ":Telescope buffers<cr>")
map("n", "<leader>tt", ":ToggleTerm<cr>")

