return {
	{
		"nvim-treesitter/nvim-treesitter", 
		build = ":TSUpdate",
		lazy = true,
		version = false, 
		event = { "BufReadPost", "BufNewFile" },
		opts = {
			ensure_installed = { "c", "cpp", "vim", "lua", "go"},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false
			},
			-- 区分不同括号颜色
			rainbow = {
				enable = true,
				extended_mode = true,
				max_file_lines = nil,
			},
			indent = {
				enable = true
			},
			  -- 启用增量选择
			incremental_selection = {
				enable = true,
				keymaps = {
				  init_selection = '<CR>',
				  node_incremental = '<CR>',
				  node_decremental = '<BS>',
				  scope_incremental = '<TAB>',
				}
			},
		},
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
	}
}
