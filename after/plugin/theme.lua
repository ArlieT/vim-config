require("onedark").setup {
	-- Main options --
	style = 'warmer', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
	transparent = true, -- Show/hide background

	-- toggle theme style ---
	toggle_style_key = "<leader><Right>t", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
	toggle_style_list = { 'dark', 'warmer' } -- List of styles to toggle between
}

require("onedark").load()
