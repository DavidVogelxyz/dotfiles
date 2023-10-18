
-- background defaults to whatever it was set at last
-- dark and false is the default, with lots of green    -- cool for dark backgrounds
-- light and false, with blue and red    -- cool for light backgrounds
-- dark and true is blue and yellow and bright    -- cool for dark backgrounds
-- light and true, with dark blue and pink    -- cool for light backgrounds
vim.o.bg = "dark"
vim.o.termguicolors = true

-- set shared clipboard
vim.o.clipboard = "unnamedplus"
vim.o.encoding = "utf-8"

-- set highlight search to false
vim.o.hlsearch = false

-- set incremental search to true
vim.o.incsearch = true

-- enable line number
vim.o.nu = true

vim.o.laststatus = 0

-- enable relative line number
vim.o.relativenumber = true

vim.o.ruler = false
vim.o.showcmd = false
vim.o.showmode = false

-- set minimum line buffer during scroll to 14 lines
vim.o.scrolloff = 14

-- set signcolumn
-- without LSP, this option is ignored (default: yes?)
-- with LSP, I set it to no (otherwise, it's an ugly grey bar)
vim.o.signcolumn = "no"

-- splits open at the bottom and right, which is non-retarded, unlike vim defaults.
vim.o.splitbelow = 1
vim.o.splitright = 1

-- set title to be file name, rather than 'nvim'
vim.o.title = true

--vim.o.wildmode = "longest:full"	-- doesn't allow for tabbing through the menu
--vim.o.wildmode = "longest,full"	-- does allow for tabbing - seems identical to 'full'
vim.o.wildmode = "full"

-- 4 space indenting
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.softtabstop = 4
vim.o.tabstop = 4

-- vim history
vim.o.backup = false
vim.o.swapfile = false
vim.o.undofile = true

-- set up for vimwiki, need to clean up
vim.cmd('filetype plugin on')
vim.o.compatible = false
vim.cmd('set nocompatible')
vim.o.syntax = true
vim.cmd('syntax on')
