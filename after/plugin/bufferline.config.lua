vim.opt.termguicolors = true
vim.cmd("PackerLoad nvim-web-devicons")

require("bufferline").setup {
	options = {
		separator_style = "thick",
		get_element_icon = function(element)
			-- element consists of {filetype: string, path: string, extension: string, directory: string}
			-- This can be used to change how bufferline fetches the icon
			-- for an element e.g. a buffer or a tab.
			-- e.g.
			local icon, hl = require('nvim-web-devicons').get_icon_by_filetype(element.filetype, { default = false })
			return icon, hl
		end
	}
}
