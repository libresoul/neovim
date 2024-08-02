vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pe", function ()
    vim.cmd("Ex")
    vim.cmd("set number")
    vim.cmd("set relativenumber")
end)
vim.keymap.set("n", "<leader>t", vim.cmd.tabnew)
vim.keymap.set("n", "<C-h>", vim.cmd.tabprevious)
vim.keymap.set("n", "<C-l>", vim.cmd.tabnext)
vim.keymap.set("n", "<C-j>", "<C-w><C-w>")
vim.keymap.set("n", "<C-k>", "<C-w><C-p>")
vim.keymap.set("n", "<C-c>", "<cmd>nohlsearch<CR>")
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("v", "<C-c>", "<Esc>")
vim.keymap.set("i", "<C-a>", "<C-o><S-a>")
vim.keymap.set("i", "<C-s>", "<C-o><S-i>")
vim.keymap.set("i", "<C-d>", "<C-o><S-s>")
vim.keymap.set("t", "<C-q>", "<C-\\><C-n>")
vim.keymap.set("n", "<C-q>", function ()
    print("You are already in normal mode.")
end)
vim.keymap.set("n", "<leader>x", function()
    vim.cmd("split")
    vim.cmd("wincmd j")
    vim.cmd("set nonumber")
    vim.cmd("set norelativenumber")
    vim.cmd("resize 12")
    vim.cmd("terminal")
end)
vim.keymap.set("n", "<leader>z", function()
    vim.cmd("vsplit")
    vim.cmd("wincmd l")
    vim.cmd("set nonumber")
    vim.cmd("set norelativenumber")
    vim.cmd("terminal")
end)
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("i", "{", "{}<Esc>ha")
vim.keymap.set("i", "(", "()<Esc>ha")
vim.keymap.set("i", "[", "[]<Esc>ha")
vim.keymap.set("i", '"', "\"\"<Esc>ha")
vim.keymap.set("i", "'", "''<Esc>ha")
vim.keymap.set("i", "`", "``<Esc>ha")

-- Copilot
vim.keymap.set('i', '<A-j>', 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false
})
vim.g.copilot_no_tab_map = true
vim.keymap.set('i', '<A-J>', '<Plug>(copilot-accept-line)')
vim.keymap.set('i', '<A-l>', '<Plug>(copilot-accept-word)')
vim.keymap.set('i', '<A-]>', '<Plug>(copilot-next)')
vim.keymap.set('i', '<A-[>', '<Plug>(copilot-previous)')
vim.keymap.set('i', '<A-k>', '<Plug>(copilot-dismiss)')

-- Move lines
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
