return {
	{'akinsho/bufferline.nvim', version = "v3.*", dependencies = 'nvim-tree/nvim-web-devicons'},
	{'nvim-lualine/lualine.nvim', dependencies = 'nvim-tree/nvim-web-devicons'},
    {'nvim-tree/nvim-tree.lua',   dependencies = 'nvim-tree/nvim-web-devicons'},
	{'phaazon/hop.nvim',   
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
		  end
	},
}
