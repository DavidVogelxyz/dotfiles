-- List of themes:
    -- default (don't swap into here)
    -- synthwave84

-- Set colorscheme using a protected call (in case it's not installed)
local status, _ = pcall(vim.cmd, "colorscheme synthwave84")
if not status then
    print("Colorscheme 'synthwave84' not found! Using default colorscheme.")
    return
end

require('synthwave84').setup({
    disable_background = true
})

function ColorMyPencils(color)
	color = color or "synthwave84"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
	vim.api.nvim_set_hl(0, "MsgArea", { bg = "none" })

	vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { bg = "none" })
end

ColorMyPencils()
