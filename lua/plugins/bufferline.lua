return {
	{
		"akinsho/bufferline.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			local bufferline = require("bufferline")
			bufferline.setup({
				options = {
					mode = "buffers",
					style_preset = bufferline.style_preset.default,
					themable = true,
					close_command = "bdelete! %d",
					indicator = { style = "underline" },
          truncate_names = true,
					tab_size = 18,
					diagnostics = "nvim_lsp",
					offsets = {
						{
							filetype = "neo-tree",
							text = "File Explorer",
							separator = true,
							text_align = "center",
						},
					},
					separator_style = "slant",
					hover = {
						enabled = true,
						delay = 200,
						reveal = { "close" },
					},
				},
        highlights = {

        }
			})
		end,
	},
}
