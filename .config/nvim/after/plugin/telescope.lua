local builtin = require('telescope.builtin')

-- map ctrl+f to telescope find
vim.keymap.set('n', '<C-f>', builtin.find_files, {})

-- map ctrl+p to telescope find, within git repo
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- map leader+pf to telescope find	-- additional remap
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- map leader+ps to telescope
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
