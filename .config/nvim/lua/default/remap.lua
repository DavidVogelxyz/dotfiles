vim.g.mapleader = " "

-- map leader+pv to open Ex
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- map leader+leader+w to save current file in normal mode
-- was leader+w, until vimwiki wanted the 'w'
-- was leader+s, but I didn't like it
vim.keymap.set("n", "<Leader><Leader>w", ":write<CR>", { noremap = true, silent = true })

-- lets you SHOUTOUT a file real easy
vim.keymap.set("n", "<leader><leader><leader>", function() vim.cmd("so") end)

-- map replace all to both leader+s and S
vim.keymap.set("n", "<leader>s", [[:%s//gc<Left><Left><Left>]])
vim.keymap.set("n", "S", [[:%s//gc<Left><Left><Left>]])

-- move highlighted text around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- using J keeps your cursor where it was
vim.keymap.set("n", "J", "mzJ`z")

-- the cursor stays at 'zz' using ctrl+u and ctrl+d
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- the cursor stays at 'zz' when using search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- use leader+p to paste without losing the paste buffer
-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- map leader+y to copy to system clipboard in normal and visual mode
vim.keymap.set({ "n", "v" }, "<Leader>y", '"+y', { noremap = true, silent = true })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
