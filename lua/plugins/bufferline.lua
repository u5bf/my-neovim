return {
		'akinsho/bufferline.nvim',
		version = "v3.*", 
		dependencies = 'nvim-tree/nvim-web-devicons',
        lazy = true,
		event = "VeryLazy",
		keys = {
			{ "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
			{ "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
		},
        config = function(_, opts)
			require("bufferline").setup(opts)
            --按键映射
            local opt = {noremap = true, silent = true}
            vim.api.nvim_set_keymap("n", "<leader>gb", "<Cmd>BufferLinePick<CR>", opt)

            vim.api.nvim_set_keymap("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<cr>", opt)
            vim.api.nvim_set_keymap("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<cr>", opt)
            vim.api.nvim_set_keymap("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<cr>", opt)
            vim.api.nvim_set_keymap("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<cr>", opt)
            vim.api.nvim_set_keymap("n", "<leader>5", "<cmd>BufferLineGoToBuffer 5<cr>", opt)
            vim.api.nvim_set_keymap("n", "<leader>6", "<cmd>BufferLineGoToBuffer 6<cr>", opt)
            vim.api.nvim_set_keymap("n", "<leader>7", "<cmd>BufferLineGoToBuffer 7<cr>", opt)
            vim.api.nvim_set_keymap("n", "<leader>8", "<cmd>BufferLineGoToBuffer 8<cr>", opt)
            vim.api.nvim_set_keymap("n", "<leader>9", "<cmd>BufferLineGoToBuffer 9<cr>", opt)
            vim.api.nvim_set_keymap("n", "<leader>$", "<cmd>BufferLineGoToBuffer -1<cr>", opt)

            -- vim.api.nvim_set_keymap("t", "<leader>1", "<c-\\><c-n>:BufferLineGoToBuffer 1<cr>", opt)
            -- vim.api.nvim_set_keymap("t", "<leader>2", "<C-\\><C-n>:BufferLineGoToBuffer 1<CR>", opt)
            -- vim.api.nvim_set_keymap("t", "<leader>3", "<C-\\><C-n>:BufferLineGoToBuffer 1<CR>", opt)
            -- vim.api.nvim_set_keymap("t", "<leader>4", "<C-\\><C-n>:BufferLineGoToBuffer 1<CR>", opt)
            -- vim.api.nvim_set_keymap("t", "<leader>5", "<C-\\><C-n>:BufferLineGoToBuffer 1<CR>", opt)
            -- vim.api.nvim_set_keymap("t", "<leader>6", "<C-\\><C-n>:BufferLineGoToBuffer 1<CR>", opt)
            -- vim.api.nvim_set_keymap("t", "<leader>7", "<C-\\><C-n>:BufferLineGoToBuffer 1<CR>", opt)
            -- vim.api.nvim_set_keymap("t", "<leader>8", "<C-\\><C-n>:BufferLineGoToBuffer 1<CR>", opt)
            -- vim.api.nvim_set_keymap("t", "<leader>9", "<C-\\><C-n>:BufferLineGoToBuffer 1<CR>", opt)
            -- vim.api.nvim_set_keymap("t", "<leader>bp", "<C-\\><C-n>:BufferLinePick<CR>", opt)
            -- vim.api.nvim_set_keymap("t", "<leader>$", "<cmd>BufferLineGoToBuffer -1<cr>", opt)
        end,
		opts = {
			options = {
			  diagnostics = "nvim_lsp",
			  always_show_bufferline = true,
			  diagnostics_indicator = function(_, _, diag)
				local icons = require("lazyvim.config").icons.diagnostics
				local ret = (diag.error and icons.Error .. diag.error .. " " or "")
				  .. (diag.warning and icons.Warn .. diag.warning or "")
				return vim.trim(ret)
			  end,
			  offsets = {
				{
				  filetype = "neo-tree",
				  text = "Neo-tree",
				  highlight = "Directory",
				  text_align = "left",
				},
			  },
			},
	},
}
