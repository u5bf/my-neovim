return {
	{
		'nvim-lualine/lualine.nvim',
		dependencies = 'nvim-tree/nvim-web-devicons',
		lazy = false,
		opts = {},
	},
    {
		'nvim-tree/nvim-tree.lua',
		dependencies = 'nvim-tree/nvim-web-devicons',
		keys = { { "tt", "<cmd>NvimTreeToggle<cr>", desc = ":NvimTreeToggle" } },
	    opts = {
			-- add your options that should be passed to the setup() function here
			sort_by = "case_sensitive",
			renderer = {
			group_empty = true,
			},
			filters = {
			dotfiles = true,
			},
		},
	},
}
