local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', function ()
    builtin.find_files({hidden = true})
end)
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>pg', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
