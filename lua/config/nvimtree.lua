local M = {}
	local status, lualine = pcall(require, "lualine")
	if not status then
		return
	end
function M.config()
	require("nvim-tree").setup({
	  sort_by = "case_sensitive",
	  renderer = {
		group_empty = true,
	  },
	  filters = {
		dotfiles = true,
	  },
	})
	
	vim.keymap.set("n", "tt", ":NvimTreeToggle<cr>", { noremap = true })
end

return M